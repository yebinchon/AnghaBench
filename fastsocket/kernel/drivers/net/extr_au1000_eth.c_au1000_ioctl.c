
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;
struct au1000_private {int phy_dev; } ;


 int EINVAL ;
 int if_mii (struct ifreq*) ;
 struct au1000_private* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int phy_mii_ioctl (int ,int ,int) ;

__attribute__((used)) static int au1000_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct au1000_private *aup = netdev_priv(dev);

 if (!netif_running(dev)) return -EINVAL;

 if (!aup->phy_dev) return -EINVAL;

 return phy_mii_ioctl(aup->phy_dev, if_mii(rq), cmd);
}
