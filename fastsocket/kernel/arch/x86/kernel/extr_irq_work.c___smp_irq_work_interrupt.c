
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int apic_irq_work_irqs ;
 int inc_irq_stat (int ) ;
 int irq_work_run () ;

__attribute__((used)) static inline void __smp_irq_work_interrupt(void)
{
 inc_irq_stat(apic_irq_work_irqs);
 irq_work_run();
}
