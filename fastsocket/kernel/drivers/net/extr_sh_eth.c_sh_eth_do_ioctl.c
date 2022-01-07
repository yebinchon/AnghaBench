
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_eth_private {struct phy_device* phydev; } ;
struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int if_mii (struct ifreq*) ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int phy_mii_ioctl (struct phy_device*,int ,int) ;

__attribute__((used)) static int sh_eth_do_ioctl(struct net_device *ndev, struct ifreq *rq,
    int cmd)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);
 struct phy_device *phydev = mdp->phydev;

 if (!netif_running(ndev))
  return -EINVAL;

 if (!phydev)
  return -ENODEV;

 return phy_mii_ioctl(phydev, if_mii(rq), cmd);
}
