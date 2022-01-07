
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cr0_guest_owned_bits; } ;
struct kvm_vcpu {int fpu_active; TYPE_1__ arch; } ;


 int CR0_GUEST_HOST_MASK ;
 int GUEST_CR0 ;
 int X86_CR0_TS ;
 scalar_t__ kvm_read_cr0_bits (struct kvm_vcpu*,int ) ;
 int update_exception_bitmap (struct kvm_vcpu*) ;
 int vmcs_clear_bits (int ,int ) ;
 int vmcs_set_bits (int ,int ) ;
 int vmcs_writel (int ,int ) ;

__attribute__((used)) static void vmx_fpu_activate(struct kvm_vcpu *vcpu)
{
 if (vcpu->fpu_active)
  return;
 vcpu->fpu_active = 1;
 vmcs_clear_bits(GUEST_CR0, X86_CR0_TS);
 if (kvm_read_cr0_bits(vcpu, X86_CR0_TS))
  vmcs_set_bits(GUEST_CR0, X86_CR0_TS);
 update_exception_bitmap(vcpu);
 vcpu->arch.cr0_guest_owned_bits = X86_CR0_TS;
 vmcs_writel(CR0_GUEST_HOST_MASK, ~vcpu->arch.cr0_guest_owned_bits);
}
