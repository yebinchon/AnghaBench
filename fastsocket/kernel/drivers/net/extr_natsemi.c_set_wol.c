
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_private {int lock; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int sopass; int wolopts; } ;


 struct netdev_private* netdev_priv (struct net_device*) ;
 int netdev_set_sopass (struct net_device*,int ) ;
 int netdev_set_wol (struct net_device*,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int set_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct netdev_private *np = netdev_priv(dev);
 int res;
 spin_lock_irq(&np->lock);
 netdev_set_wol(dev, wol->wolopts);
 res = netdev_set_sopass(dev, wol->sopass);
 spin_unlock_irq(&np->lock);
 return res;
}
