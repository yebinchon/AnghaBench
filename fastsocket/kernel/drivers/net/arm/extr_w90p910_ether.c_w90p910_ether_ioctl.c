
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w90p910_ether {int mii; } ;
struct net_device {int dummy; } ;
struct mii_ioctl_data {int dummy; } ;
struct ifreq {int dummy; } ;


 int generic_mii_ioctl (int *,struct mii_ioctl_data*,int,int *) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 struct w90p910_ether* netdev_priv (struct net_device*) ;

__attribute__((used)) static int w90p910_ether_ioctl(struct net_device *dev,
      struct ifreq *ifr, int cmd)
{
 struct w90p910_ether *ether = netdev_priv(dev);
 struct mii_ioctl_data *data = if_mii(ifr);

 return generic_mii_ioctl(&ether->mii, data, cmd, ((void*)0));
}
