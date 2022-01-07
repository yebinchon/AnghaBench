
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CALL_FUNC_SINGLE_IPI ;
 int cpumask_of (int) ;
 int send_IPI_mask (int ,int ,int ) ;

void arch_send_call_function_single_ipi(int cpu)
{
 send_IPI_mask(cpumask_of(cpu), CALL_FUNC_SINGLE_IPI, 0);
}
