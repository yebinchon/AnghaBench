
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* pv_setctxt ) (int,char*,int) ;} ;


 int prom_lock ;
 int restore_current () ;
 TYPE_1__* romvec ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int,char*,int) ;

void
prom_putsegment(int ctx, unsigned long vaddr, int segment)
{
 unsigned long flags;
 spin_lock_irqsave(&prom_lock, flags);
 (*(romvec->pv_setctxt))(ctx, (char *) vaddr, segment);
 restore_current();
 spin_unlock_irqrestore(&prom_lock, flags);
 return;
}
