
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* send_IPI_mask ) (int ,int ) ;} ;


 int CALL_FUNCTION_SINGLE_VECTOR ;
 TYPE_1__* apic ;
 int cpumask_of (int) ;
 int stub1 (int ,int ) ;

void native_send_call_func_single_ipi(int cpu)
{
 apic->send_IPI_mask(cpumask_of(cpu), CALL_FUNCTION_SINGLE_VECTOR);
}
