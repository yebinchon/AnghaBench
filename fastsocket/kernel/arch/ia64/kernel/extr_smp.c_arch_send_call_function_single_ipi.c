
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPI_CALL_FUNC_SINGLE ;
 int send_IPI_single (int,int ) ;

void arch_send_call_function_single_ipi(int cpu)
{
 send_IPI_single(cpu, IPI_CALL_FUNC_SINGLE);
}
