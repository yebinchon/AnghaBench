
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* hardware_unsetup ) () ;} ;


 TYPE_1__* kvm_x86_ops ;
 int stub1 () ;

void kvm_arch_hardware_unsetup(void)
{
 kvm_x86_ops->hardware_unsetup();
}
