
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nic {int mii; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int generic_mii_ioctl (int *,int ,int,int *) ;
 int if_mii (struct ifreq*) ;
 struct nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static int e100_do_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
{
 struct nic *nic = netdev_priv(netdev);

 return generic_mii_ioctl(&nic->mii, if_mii(ifr), cmd, ((void*)0));
}
