
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __flush_tlb_all () ;
 int flush_tlb_all_ipi ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int smp_call_function (int ,int *,int) ;

void smp_flush_tlb_all(void)
{
 unsigned long flags;

 preempt_disable();
 local_irq_save(flags);
 __flush_tlb_all();
 local_irq_restore(flags);
 smp_call_function(flush_tlb_all_ipi, ((void*)0), 1);
 preempt_enable();
}
