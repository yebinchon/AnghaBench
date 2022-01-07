
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int GUEST_INTERRUPTIBILITY_INFO ;
 int GUEST_INTR_STATE_MOV_SS ;
 int GUEST_INTR_STATE_STI ;
 int GUEST_RFLAGS ;
 int X86_EFLAGS_IF ;
 int vmcs_read32 (int ) ;
 int vmcs_readl (int ) ;

__attribute__((used)) static int vmx_interrupt_allowed(struct kvm_vcpu *vcpu)
{
 return (vmcs_readl(GUEST_RFLAGS) & X86_EFLAGS_IF) &&
  !(vmcs_read32(GUEST_INTERRUPTIBILITY_INFO) &
   (GUEST_INTR_STATE_STI | GUEST_INTR_STATE_MOV_SS));
}
