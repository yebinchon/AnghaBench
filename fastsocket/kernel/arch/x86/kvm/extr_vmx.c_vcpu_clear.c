
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpu; } ;
struct vcpu_vmx {TYPE_1__ vcpu; } ;


 int __vcpu_clear ;
 int smp_call_function_single (int,int ,struct vcpu_vmx*,int) ;

__attribute__((used)) static void vcpu_clear(struct vcpu_vmx *vmx)
{
 if (vmx->vcpu.cpu == -1)
  return;
 smp_call_function_single(vmx->vcpu.cpu, __vcpu_clear, vmx, 1);
}
