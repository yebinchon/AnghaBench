
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct macb {struct phy_device* phy_dev; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int if_mii (struct ifreq*) ;
 struct macb* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int phy_mii_ioctl (struct phy_device*,int ,int) ;

__attribute__((used)) static int macb_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct macb *bp = netdev_priv(dev);
 struct phy_device *phydev = bp->phy_dev;

 if (!netif_running(dev))
  return -EINVAL;

 if (!phydev)
  return -ENODEV;

 return phy_mii_ioctl(phydev, if_mii(rq), cmd);
}
