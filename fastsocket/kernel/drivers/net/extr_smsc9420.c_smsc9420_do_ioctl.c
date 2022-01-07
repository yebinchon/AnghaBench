
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc9420_pdata {int phy_dev; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 int if_mii (struct ifreq*) ;
 struct smsc9420_pdata* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int phy_mii_ioctl (int ,int ,int) ;

__attribute__((used)) static int smsc9420_do_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct smsc9420_pdata *pd = netdev_priv(dev);

 if (!netif_running(dev) || !pd->phy_dev)
  return -EINVAL;

 return phy_mii_ioctl(pd->phy_dev, if_mii(ifr), cmd);
}
