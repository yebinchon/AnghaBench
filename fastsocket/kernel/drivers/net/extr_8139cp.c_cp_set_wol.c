
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_wolinfo {int dummy; } ;
struct cp_private {int lock; } ;


 struct cp_private* netdev_priv (struct net_device*) ;
 int netdev_set_wol (struct cp_private*,struct ethtool_wolinfo*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cp_set_wol (struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct cp_private *cp = netdev_priv(dev);
 unsigned long flags;
 int rc;

 spin_lock_irqsave (&cp->lock, flags);
 rc = netdev_set_wol (cp, wol);
 spin_unlock_irqrestore (&cp->lock, flags);

 return rc;
}
