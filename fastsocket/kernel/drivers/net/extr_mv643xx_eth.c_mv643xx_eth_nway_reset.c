
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mv643xx_eth_private {int * phy; } ;


 int EINVAL ;
 int genphy_restart_aneg (int *) ;
 struct mv643xx_eth_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int mv643xx_eth_nway_reset(struct net_device *dev)
{
 struct mv643xx_eth_private *mp = netdev_priv(dev);

 if (mp->phy == ((void*)0))
  return -EINVAL;

 return genphy_restart_aneg(mp->phy);
}
