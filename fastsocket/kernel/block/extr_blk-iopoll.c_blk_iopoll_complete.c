
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_iopoll {int dummy; } ;


 int __blk_iopoll_complete (struct blk_iopoll*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void blk_iopoll_complete(struct blk_iopoll *iopoll)
{
 unsigned long flags;

 local_irq_save(flags);
 __blk_iopoll_complete(iopoll);
 local_irq_restore(flags);
}
