
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;
struct de_private {int lock; } ;


 int __de_set_settings (struct de_private*,struct ethtool_cmd*) ;
 struct de_private* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int de_set_settings(struct net_device *dev, struct ethtool_cmd *ecmd)
{
 struct de_private *de = netdev_priv(dev);
 int rc;

 spin_lock_irq(&de->lock);
 rc = __de_set_settings(de, ecmd);
 spin_unlock_irq(&de->lock);

 return rc;
}
