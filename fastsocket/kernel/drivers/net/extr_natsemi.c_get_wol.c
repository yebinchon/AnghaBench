
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_private {int lock; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int sopass; int wolopts; int supported; } ;


 int netdev_get_sopass (struct net_device*,int ) ;
 int netdev_get_wol (struct net_device*,int *,int *) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void get_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct netdev_private *np = netdev_priv(dev);
 spin_lock_irq(&np->lock);
 netdev_get_wol(dev, &wol->supported, &wol->wolopts);
 netdev_get_sopass(dev, wol->sopass);
 spin_unlock_irq(&np->lock);
}
