# this scripts works but fraigle, far to be robost

#stop docker
systemctl stop docker
systemctl stop docker.socket
mkdir  -p /mnt/ssd/docker
time cp -r /var/lib/docker/* /mnt/ssd/docker/
# backup files
time cp /var/lib/docker /mnt/ssd/docker.back$(date +%m_%d)
time rm -rf /var/lib/docker
# link docker files
ln -s /mnt/ssd/docker /var/lib/docker
systemctl start docker
systemctl start docker.socket
