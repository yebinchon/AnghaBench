
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mii_ioctl_data {int dummy; } ;
struct ifreq {int ifr_data; } ;
struct fs_enet_private {int phydev; } ;


 int EINVAL ;
 struct fs_enet_private* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int phy_mii_ioctl (int ,struct mii_ioctl_data*,int) ;

__attribute__((used)) static int fs_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct fs_enet_private *fep = netdev_priv(dev);
 struct mii_ioctl_data *mii = (struct mii_ioctl_data *)&rq->ifr_data;

 if (!netif_running(dev))
  return -EINVAL;

 return phy_mii_ioctl(fep->phydev, mii, cmd);
}
