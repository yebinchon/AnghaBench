
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* check_processor_compatibility ) (void*) ;} ;


 TYPE_1__* kvm_x86_ops ;
 int stub1 (void*) ;

void kvm_arch_check_processor_compat(void *rtn)
{
 kvm_x86_ops->check_processor_compatibility(rtn);
}
