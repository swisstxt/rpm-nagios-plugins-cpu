HOME=$(shell pwd)
VERSION="0.0.1"
RELEASE="1"

build:
	mkdir -p rpmbuild/x86_64
	fpm -s dir -t rpm \
	-x '.git*' \
	-x '*/.git*' \
	-a x86_64 \
	-m '<rene.moser@swisstxt.ch>' \
	--description "Nagios Check CPU" \
	--url "https://github.com/swisstxt/rpm-nagios-plugins-cpu" \
	-n "nagios-plugins-cpu" \
	--prefix /usr/lib64/nagios/plugins \
	-v ${VERSION} \
	--iteration ${RELEASE} \
	-p rpmbuild/x86_64 \
	-C SOURCES/ \
	.
