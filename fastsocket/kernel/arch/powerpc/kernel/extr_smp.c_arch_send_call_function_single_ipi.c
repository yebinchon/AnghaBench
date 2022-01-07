
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* message_pass ) (int,int ) ;} ;


 int PPC_MSG_CALL_FUNC_SINGLE ;
 TYPE_1__* smp_ops ;
 int stub1 (int,int ) ;

void arch_send_call_function_single_ipi(int cpu)
{
 smp_ops->message_pass(cpu, PPC_MSG_CALL_FUNC_SINGLE);
}
