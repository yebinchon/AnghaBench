
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {unsigned long save_rflags; scalar_t__ vm86_active; } ;
struct TYPE_4__ {TYPE_1__ rmode; } ;


 int GUEST_RFLAGS ;
 unsigned long X86_EFLAGS_IOPL ;
 unsigned long X86_EFLAGS_VM ;
 TYPE_2__* to_vmx (struct kvm_vcpu*) ;
 int vmcs_writel (int ,unsigned long) ;

__attribute__((used)) static void vmx_set_rflags(struct kvm_vcpu *vcpu, unsigned long rflags)
{
 if (to_vmx(vcpu)->rmode.vm86_active) {
  to_vmx(vcpu)->rmode.save_rflags = rflags;
  rflags |= X86_EFLAGS_IOPL | X86_EFLAGS_VM;
 }
 vmcs_writel(GUEST_RFLAGS, rflags);
}
