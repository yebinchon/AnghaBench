
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int __vcpu_clear (int ) ;
 int __vmx_load_host_state (int ) ;
 int kvm_cpu_vmxoff () ;
 int to_vmx (struct kvm_vcpu*) ;
 int vmm_exclusive ;

__attribute__((used)) static void vmx_vcpu_put(struct kvm_vcpu *vcpu)
{
 __vmx_load_host_state(to_vmx(vcpu));
 if (!vmm_exclusive) {
  __vcpu_clear(to_vmx(vcpu));
  kvm_cpu_vmxoff();
 }
}
