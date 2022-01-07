
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_lapic {int dummy; } ;


 int APIC_PROCPRI ;
 int apic_enabled (struct kvm_lapic*) ;
 int apic_find_highest_irr (struct kvm_lapic*) ;
 int apic_get_reg (struct kvm_lapic*,int ) ;
 int apic_update_ppr (struct kvm_lapic*) ;

int kvm_apic_has_interrupt(struct kvm_vcpu *vcpu)
{
 struct kvm_lapic *apic = vcpu->arch.apic;
 int highest_irr;

 if (!apic || !apic_enabled(apic))
  return -1;

 apic_update_ppr(apic);
 highest_irr = apic_find_highest_irr(apic);
 if ((highest_irr == -1) ||
     ((highest_irr & 0xF0) <= apic_get_reg(apic, APIC_PROCPRI)))
  return -1;
 return highest_irr;
}
