
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pgd_list_del (void*) ;
 int pgd_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void pgd_dtor(void *pgd)
{
 unsigned long flags;

 spin_lock_irqsave(&pgd_lock, flags);
 pgd_list_del(pgd);
 spin_unlock_irqrestore(&pgd_lock, flags);
}
