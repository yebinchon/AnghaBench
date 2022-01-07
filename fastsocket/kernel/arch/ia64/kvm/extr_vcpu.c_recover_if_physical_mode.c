
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode_flags; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int GUEST_PHY_EMUL ;
 scalar_t__ is_physical_mode (struct kvm_vcpu*) ;
 int switch_to_physical_rid (struct kvm_vcpu*) ;

void recover_if_physical_mode(struct kvm_vcpu *vcpu)
{
 if (is_physical_mode(vcpu))
  switch_to_physical_rid(vcpu);
 vcpu->arch.mode_flags &= ~GUEST_PHY_EMUL;
 return;
}
