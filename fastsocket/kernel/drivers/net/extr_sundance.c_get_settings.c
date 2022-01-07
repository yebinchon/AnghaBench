
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_private {int lock; int mii_if; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;


 int mii_ethtool_gset (int *,struct ethtool_cmd*) ;
 struct netdev_private* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int get_settings(struct net_device *dev, struct ethtool_cmd *ecmd)
{
 struct netdev_private *np = netdev_priv(dev);
 spin_lock_irq(&np->lock);
 mii_ethtool_gset(&np->mii_if, ecmd);
 spin_unlock_irq(&np->lock);
 return 0;
}
