
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int GUEST_CS_SELECTOR ;
 int X86_CR0_PE ;
 int X86_EFLAGS_VM ;
 int kvm_read_cr0_bits (struct kvm_vcpu*,int ) ;
 int vmcs_read16 (int ) ;
 int vmx_get_rflags (struct kvm_vcpu*) ;

__attribute__((used)) static int vmx_get_cpl(struct kvm_vcpu *vcpu)
{
 if (!kvm_read_cr0_bits(vcpu, X86_CR0_PE))
  return 0;

 if (vmx_get_rflags(vcpu) & X86_EFLAGS_VM)
  return 3;

 return vmcs_read16(GUEST_CS_SELECTOR) & 3;
}
