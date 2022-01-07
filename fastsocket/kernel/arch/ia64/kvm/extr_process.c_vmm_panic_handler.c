
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
struct kvm_vcpu {int dummy; } ;


 struct kvm_vcpu* current_vcpu ;
 int panic_vm (struct kvm_vcpu*,char*,int ) ;
 int * vec2off ;
 scalar_t__ vmm_sanity ;

void vmm_panic_handler(u64 vec)
{
 struct kvm_vcpu *vcpu = current_vcpu;
 vmm_sanity = 0;
 panic_vm(vcpu, "Unexpected interruption occurs in VMM, vector:0x%lx\n",
   vec2off[vec]);
}
