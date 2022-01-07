
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ec_call_function_single ;
 int smp_ext_bitcall (int,int ) ;

void arch_send_call_function_single_ipi(int cpu)
{
 smp_ext_bitcall(cpu, ec_call_function_single);
}
