
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __wbinvd ;
 int smp_call_function_single (int,int ,int *,int) ;

void wbinvd_on_cpu(int cpu)
{
 smp_call_function_single(cpu, __wbinvd, ((void*)0), 1);
}
