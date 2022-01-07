
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int IRQ_WORK_VECTOR ;
 int __smp_irq_work_interrupt () ;
 int exiting_irq () ;
 int irq_work_entering_irq () ;
 int trace_irq_work_entry (int ) ;
 int trace_irq_work_exit (int ) ;

void smp_trace_irq_work_interrupt(struct pt_regs *regs)
{
 irq_work_entering_irq();
 trace_irq_work_entry(IRQ_WORK_VECTOR);
 __smp_irq_work_interrupt();
 trace_irq_work_exit(IRQ_WORK_VECTOR);
 exiting_irq();
}
