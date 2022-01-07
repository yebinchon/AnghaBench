
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct undef_hook {int node; } ;


 int list_add (int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int undef_hook ;
 int undef_lock ;

void register_undef_hook(struct undef_hook *hook)
{
 spin_lock_irq(&undef_lock);
 list_add(&hook->node, &undef_hook);
 spin_unlock_irq(&undef_lock);
}
