
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int clear_softint (int) ;
 int generic_smp_call_function_single_interrupt () ;

void smp_call_function_single_client(int irq, struct pt_regs *regs)
{
 clear_softint(1 << irq);
 generic_smp_call_function_single_interrupt();
}
