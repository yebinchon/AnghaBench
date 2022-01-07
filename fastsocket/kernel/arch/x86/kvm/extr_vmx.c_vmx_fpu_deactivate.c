
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cr0; int cr0_guest_owned_bits; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int CR0_GUEST_HOST_MASK ;
 int CR0_READ_SHADOW ;
 int GUEST_CR0 ;
 int X86_CR0_TS ;
 int update_exception_bitmap (struct kvm_vcpu*) ;
 int vmcs_set_bits (int ,int ) ;
 int vmcs_writel (int ,int ) ;
 int vmx_decache_cr0_guest_bits (struct kvm_vcpu*) ;

__attribute__((used)) static void vmx_fpu_deactivate(struct kvm_vcpu *vcpu)
{
 vmx_decache_cr0_guest_bits(vcpu);
 vmcs_set_bits(GUEST_CR0, X86_CR0_TS);
 update_exception_bitmap(vcpu);
 vcpu->arch.cr0_guest_owned_bits = 0;
 vmcs_writel(CR0_GUEST_HOST_MASK, ~vcpu->arch.cr0_guest_owned_bits);
 vmcs_writel(CR0_READ_SHADOW, vcpu->arch.cr0);
}
