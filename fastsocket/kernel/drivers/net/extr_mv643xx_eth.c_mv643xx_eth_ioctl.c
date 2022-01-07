
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mv643xx_eth_private {int * phy; } ;
struct ifreq {int dummy; } ;


 int EOPNOTSUPP ;
 int if_mii (struct ifreq*) ;
 struct mv643xx_eth_private* netdev_priv (struct net_device*) ;
 int phy_mii_ioctl (int *,int ,int) ;

__attribute__((used)) static int mv643xx_eth_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct mv643xx_eth_private *mp = netdev_priv(dev);

 if (mp->phy != ((void*)0))
  return phy_mii_ioctl(mp->phy, if_mii(ifr), cmd);

 return -EOPNOTSUPP;
}
