
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_private {int lock; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;


 struct netdev_private* netdev_priv (struct net_device*) ;
 int netdev_set_ecmd (struct net_device*,struct ethtool_cmd*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int set_settings(struct net_device *dev, struct ethtool_cmd *ecmd)
{
 struct netdev_private *np = netdev_priv(dev);
 int res;
 spin_lock_irq(&np->lock);
 res = netdev_set_ecmd(dev, ecmd);
 spin_unlock_irq(&np->lock);
 return res;
}
