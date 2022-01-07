
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct undef_hook {int node; } ;


 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int undef_lock ;

void unregister_undef_hook(struct undef_hook *hook)
{
 unsigned long flags;

 spin_lock_irqsave(&undef_lock, flags);
 list_del(&hook->node);
 spin_unlock_irqrestore(&undef_lock, flags);
}
