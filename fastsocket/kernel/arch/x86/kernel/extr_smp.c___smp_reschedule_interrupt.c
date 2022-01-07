
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inc_irq_stat (int ) ;
 int irq_resched_count ;
 int scheduler_ipi () ;

__attribute__((used)) static inline void __smp_reschedule_interrupt(void)
{
 inc_irq_stat(irq_resched_count);
 scheduler_ipi();
}
