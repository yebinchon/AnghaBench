
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int generic_smp_call_function_interrupt () ;
 int generic_smp_call_function_single_interrupt () ;
 int irq_enter () ;
 int irq_exit () ;

void smp_call_function_interrupt(void)
{
 irq_enter();
 generic_smp_call_function_single_interrupt();
 generic_smp_call_function_interrupt();
 irq_exit();
}
