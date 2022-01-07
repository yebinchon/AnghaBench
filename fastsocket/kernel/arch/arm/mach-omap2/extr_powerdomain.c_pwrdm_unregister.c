
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powerdomain {int name; int node; } ;


 int EINVAL ;
 int list_del (int *) ;
 int pr_debug (char*,int ) ;
 int pwrdm_rwlock ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

int pwrdm_unregister(struct powerdomain *pwrdm)
{
 unsigned long flags;

 if (!pwrdm)
  return -EINVAL;

 write_lock_irqsave(&pwrdm_rwlock, flags);
 list_del(&pwrdm->node);
 write_unlock_irqrestore(&pwrdm_rwlock, flags);

 pr_debug("powerdomain: unregistered %s\n", pwrdm->name);

 return 0;
}
