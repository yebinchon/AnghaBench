
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;
struct gfar_private {int phydev; } ;


 int EINVAL ;
 int ENODEV ;
 int if_mii (struct ifreq*) ;
 struct gfar_private* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int phy_mii_ioctl (int ,int ,int) ;

__attribute__((used)) static int gfar_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct gfar_private *priv = netdev_priv(dev);

 if (!netif_running(dev))
  return -EINVAL;

 if (!priv->phydev)
  return -ENODEV;

 return phy_mii_ioctl(priv->phydev, if_mii(rq), cmd);
}
