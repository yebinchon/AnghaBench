
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_lapic {int dummy; } ;


 int apic_find_highest_irr (struct kvm_lapic*) ;

int kvm_lapic_find_highest_irr(struct kvm_vcpu *vcpu)
{
 struct kvm_lapic *apic = vcpu->arch.apic;
 int highest_irr;






 if (!apic)
  return 0;
 highest_irr = apic_find_highest_irr(apic);

 return highest_irr;
}
