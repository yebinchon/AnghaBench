
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int generic_smp_call_function_single_interrupt () ;
 int inc_irq_stat (int ) ;
 int irq_call_count ;

__attribute__((used)) static inline void __smp_call_function_single_interrupt(void)
{
 generic_smp_call_function_single_interrupt();
 inc_irq_stat(irq_call_count);
}
