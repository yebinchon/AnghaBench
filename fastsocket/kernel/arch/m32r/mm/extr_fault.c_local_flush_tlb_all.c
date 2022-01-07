
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __flush_tlb_all () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void local_flush_tlb_all(void)
{
 unsigned long flags;

 local_irq_save(flags);
 __flush_tlb_all();
 local_irq_restore(flags);
}
