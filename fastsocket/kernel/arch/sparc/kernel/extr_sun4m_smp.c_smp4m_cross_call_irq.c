
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* processors_in; int* processors_out; int arg5; int arg4; int arg3; int arg2; int arg1; int (* func ) (int ,int ,int ,int ,int ) ;} ;


 TYPE_1__ ccall_info ;
 int smp_processor_id () ;
 int stub1 (int ,int ,int ,int ,int ) ;

void smp4m_cross_call_irq(void)
{
 int i = smp_processor_id();

 ccall_info.processors_in[i] = 1;
 ccall_info.func(ccall_info.arg1, ccall_info.arg2, ccall_info.arg3,
   ccall_info.arg4, ccall_info.arg5);
 ccall_info.processors_out[i] = 1;
}
