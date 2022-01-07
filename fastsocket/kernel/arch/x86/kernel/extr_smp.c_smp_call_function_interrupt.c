
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int __smp_call_function_interrupt () ;
 int exiting_irq () ;
 int smp_entering_irq () ;

void smp_call_function_interrupt(struct pt_regs *regs)
{
 smp_entering_irq();
 __smp_call_function_interrupt();
 exiting_irq();
}
