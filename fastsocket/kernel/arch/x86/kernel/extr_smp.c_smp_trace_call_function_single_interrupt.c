
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int CALL_FUNCTION_SINGLE_VECTOR ;
 int __smp_call_function_single_interrupt () ;
 int exiting_irq () ;
 int smp_entering_irq () ;
 int trace_call_function_single_entry (int ) ;
 int trace_call_function_single_exit (int ) ;

void smp_trace_call_function_single_interrupt(struct pt_regs *regs)
{
 smp_entering_irq();
 trace_call_function_single_entry(CALL_FUNCTION_SINGLE_VECTOR);
 __smp_call_function_single_interrupt();
 trace_call_function_single_exit(CALL_FUNCTION_SINGLE_VECTOR);
 exiting_irq();
}
