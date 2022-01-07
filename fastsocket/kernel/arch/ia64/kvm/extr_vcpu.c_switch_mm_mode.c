
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode_flags; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct ia64_psr {int dummy; } ;


 int GUEST_IN_PHY ;




 int mm_switch_action (struct ia64_psr,struct ia64_psr) ;
 int switch_to_physical_rid (struct kvm_vcpu*) ;
 int switch_to_virtual_rid (struct kvm_vcpu*) ;

void switch_mm_mode(struct kvm_vcpu *vcpu, struct ia64_psr old_psr,
     struct ia64_psr new_psr)
{
 int act;
 act = mm_switch_action(old_psr, new_psr);
 switch (act) {
 case 128:


  switch_to_physical_rid(vcpu);




  vcpu->arch.mode_flags |= GUEST_IN_PHY;
  break;
 case 130:
  switch_to_virtual_rid(vcpu);




  vcpu->arch.mode_flags &= ~GUEST_IN_PHY;
  break;
 case 129:
  break;
 case 131:
  break;
 default:

  break;
 }
 return;
}
