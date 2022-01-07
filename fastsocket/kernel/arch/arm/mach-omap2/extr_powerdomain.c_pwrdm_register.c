
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {int name; int node; int omap_chip; } ;


 int EEXIST ;
 int EINVAL ;
 scalar_t__ _pwrdm_lookup (int ) ;
 int list_add (int *,int *) ;
 int omap_chip_is (int ) ;
 int pr_debug (char*,int ) ;
 int pwrdm_list ;
 int pwrdm_rwlock ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

int pwrdm_register(struct powerdomain *pwrdm)
{
 unsigned long flags;
 int ret = -EINVAL;

 if (!pwrdm)
  return -EINVAL;

 if (!omap_chip_is(pwrdm->omap_chip))
  return -EINVAL;

 write_lock_irqsave(&pwrdm_rwlock, flags);
 if (_pwrdm_lookup(pwrdm->name)) {
  ret = -EEXIST;
  goto pr_unlock;
 }

 list_add(&pwrdm->node, &pwrdm_list);

 pr_debug("powerdomain: registered %s\n", pwrdm->name);
 ret = 0;

pr_unlock:
 write_unlock_irqrestore(&pwrdm_rwlock, flags);

 return ret;
}
