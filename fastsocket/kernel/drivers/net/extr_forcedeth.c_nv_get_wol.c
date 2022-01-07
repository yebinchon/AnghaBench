
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fe_priv {int lock; scalar_t__ wolenabled; } ;
struct ethtool_wolinfo {void* wolopts; void* supported; } ;


 void* WAKE_MAGIC ;
 struct fe_priv* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void nv_get_wol(struct net_device *dev, struct ethtool_wolinfo *wolinfo)
{
 struct fe_priv *np = netdev_priv(dev);
 wolinfo->supported = WAKE_MAGIC;

 spin_lock_irq(&np->lock);
 if (np->wolenabled)
  wolinfo->wolopts = WAKE_MAGIC;
 spin_unlock_irq(&np->lock);
}
