
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;
struct cp_private {int lock; int mii_if; } ;


 int mii_ethtool_sset (int *,struct ethtool_cmd*) ;
 struct cp_private* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cp_set_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct cp_private *cp = netdev_priv(dev);
 int rc;
 unsigned long flags;

 spin_lock_irqsave(&cp->lock, flags);
 rc = mii_ethtool_sset(&cp->mii_if, cmd);
 spin_unlock_irqrestore(&cp->lock, flags);

 return rc;
}
