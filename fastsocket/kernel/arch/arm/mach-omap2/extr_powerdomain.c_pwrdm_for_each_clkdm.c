
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {struct clockdomain** pwrdm_clkdms; } ;


 int EINVAL ;
 int PWRDM_MAX_CLKDMS ;
 int pwrdm_rwlock ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct powerdomain*,struct clockdomain*) ;

int pwrdm_for_each_clkdm(struct powerdomain *pwrdm,
    int (*fn)(struct powerdomain *pwrdm,
       struct clockdomain *clkdm))
{
 unsigned long flags;
 int ret = 0;
 int i;

 if (!fn)
  return -EINVAL;

 read_lock_irqsave(&pwrdm_rwlock, flags);

 for (i = 0; i < PWRDM_MAX_CLKDMS && !ret; i++)
  ret = (*fn)(pwrdm, pwrdm->pwrdm_clkdms[i]);

 read_unlock_irqrestore(&pwrdm_rwlock, flags);

 return ret;
}
