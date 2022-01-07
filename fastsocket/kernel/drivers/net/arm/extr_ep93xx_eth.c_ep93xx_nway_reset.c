
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ep93xx_priv {int mii; } ;


 int mii_nway_restart (int *) ;
 struct ep93xx_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ep93xx_nway_reset(struct net_device *dev)
{
 struct ep93xx_priv *ep = netdev_priv(dev);
 return mii_nway_restart(&ep->mii);
}
