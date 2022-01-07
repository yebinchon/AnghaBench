
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
 unsigned long RMODE_GUEST_OWNED_EFLAGS_BITS ;
 TYPE_2__* to_vmx (struct kvm_vcpu*) ;
 unsigned long vmcs_readl (int ) ;

__attribute__((used)) static unsigned long vmx_get_rflags(struct kvm_vcpu *vcpu)
{
 unsigned long rflags, save_rflags;

 rflags = vmcs_readl(GUEST_RFLAGS);
 if (to_vmx(vcpu)->rmode.vm86_active) {
  rflags &= RMODE_GUEST_OWNED_EFLAGS_BITS;
  save_rflags = to_vmx(vcpu)->rmode.save_rflags;
  rflags |= save_rflags & ~RMODE_GUEST_OWNED_EFLAGS_BITS;
 }
 return rflags;
}
