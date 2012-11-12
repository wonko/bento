#!/bin/bash -eux

sed -i 's/^deb cdrom/#deb cdrom/g' /etc/apt/sources.list
apt-get -y autoremove
apt-get -y clean
rm -rf VBoxGuestAdditions_*.iso VBoxGuestAdditions_*.iso.?
rm -f /tmp/chef*deb
