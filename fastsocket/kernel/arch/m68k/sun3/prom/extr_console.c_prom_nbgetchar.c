
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* pv_nbgetchar ) () ;} ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 TYPE_1__* romvec ;
 int stub1 () ;

int
prom_nbgetchar(void)
{
 int i = -1;
 unsigned long flags;

 local_irq_save(flags);
  i = (*(romvec->pv_nbgetchar))();
 local_irq_restore(flags);
 return i;
}
