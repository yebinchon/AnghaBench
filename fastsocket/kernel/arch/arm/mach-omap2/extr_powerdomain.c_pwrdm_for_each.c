
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pwrdm_for_each_nolock (int (*) (struct powerdomain*,void*),void*) ;
 int pwrdm_rwlock ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;

int pwrdm_for_each(int (*fn)(struct powerdomain *pwrdm, void *user),
   void *user)
{
 unsigned long flags;
 int ret;

 read_lock_irqsave(&pwrdm_rwlock, flags);
 ret = pwrdm_for_each_nolock(fn, user);
 read_unlock_irqrestore(&pwrdm_rwlock, flags);

 return ret;
}
