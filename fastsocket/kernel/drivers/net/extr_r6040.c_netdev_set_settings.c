
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r6040_private {int mii_if; int lock; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;


 int mii_ethtool_sset (int *,struct ethtool_cmd*) ;
 struct r6040_private* netdev_priv (struct net_device*) ;
 int r6040_set_carrier (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int netdev_set_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct r6040_private *rp = netdev_priv(dev);
 int rc;

 spin_lock_irq(&rp->lock);
 rc = mii_ethtool_sset(&rp->mii_if, cmd);
 spin_unlock_irq(&rp->lock);
 r6040_set_carrier(&rp->mii_if);

 return rc;
}
