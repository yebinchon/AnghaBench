
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mii_ioctl_data {int dummy; } ;
struct ifreq {int dummy; } ;
struct ep93xx_priv {int mii; } ;


 int generic_mii_ioctl (int *,struct mii_ioctl_data*,int,int *) ;
 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 struct ep93xx_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ep93xx_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct ep93xx_priv *ep = netdev_priv(dev);
 struct mii_ioctl_data *data = if_mii(ifr);

 return generic_mii_ioctl(&ep->mii, data, cmd, ((void*)0));
}
