
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int __smp_irq_work_interrupt () ;
 int exiting_irq () ;
 int irq_work_entering_irq () ;

void smp_irq_work_interrupt(struct pt_regs *regs)
{
 irq_work_entering_irq();
 __smp_irq_work_interrupt();
 exiting_irq();
}
