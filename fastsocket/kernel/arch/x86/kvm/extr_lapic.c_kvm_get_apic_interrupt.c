
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_lapic {int dummy; } ;


 int apic_clear_irr (int,struct kvm_lapic*) ;
 int apic_set_isr (int,struct kvm_lapic*) ;
 int apic_update_ppr (struct kvm_lapic*) ;
 int kvm_apic_has_interrupt (struct kvm_vcpu*) ;

int kvm_get_apic_interrupt(struct kvm_vcpu *vcpu)
{
 int vector = kvm_apic_has_interrupt(vcpu);
 struct kvm_lapic *apic = vcpu->arch.apic;

 if (vector == -1)
  return -1;

 apic_set_isr(vector, apic);
 apic_update_ppr(apic);
 apic_clear_irr(vector, apic);
 return vector;
}
