
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct undef_hook {int node; } ;


 int list_del (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int undef_lock ;

void unregister_undef_hook(struct undef_hook *hook)
{
 spin_lock_irq(&undef_lock);
 list_del(&hook->node);
 spin_unlock_irq(&undef_lock);
}
