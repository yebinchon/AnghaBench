
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int APIC_LVTPC ;
 int kvm_apic_local_deliver (scalar_t__,int ) ;

void kvm_deliver_pmi(struct kvm_vcpu *vcpu)
{
 if (vcpu->arch.apic)
  kvm_apic_local_deliver(vcpu->arch.apic, APIC_LVTPC);
}
