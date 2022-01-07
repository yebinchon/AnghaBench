
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gem {int lock; int want_autoneg; } ;


 int EINVAL ;
 int gem_begin_auto_negotiation (struct gem*,int *) ;
 int gem_get_cell (struct gem*) ;
 int gem_put_cell (struct gem*) ;
 struct gem* netdev_priv (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int gem_nway_reset(struct net_device *dev)
{
 struct gem *gp = netdev_priv(dev);

 if (!gp->want_autoneg)
  return -EINVAL;


 spin_lock_irq(&gp->lock);
 gem_get_cell(gp);
 gem_begin_auto_negotiation(gp, ((void*)0));
 gem_put_cell(gp);
 spin_unlock_irq(&gp->lock);

 return 0;
}
