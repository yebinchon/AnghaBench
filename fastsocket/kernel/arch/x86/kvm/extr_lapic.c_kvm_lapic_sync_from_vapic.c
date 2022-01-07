
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_2__* apic; int apic_attention; } ;
struct kvm_vcpu {TYPE_1__ arch; int kvm; } ;
struct TYPE_5__ {int vapic_cache; } ;


 int KVM_APIC_CHECK_VAPIC ;
 int KVM_APIC_PV_EOI_PENDING ;
 int apic_set_tpr (TYPE_2__*,int) ;
 int apic_sync_pv_eoi_from_guest (struct kvm_vcpu*,TYPE_2__*) ;
 int kvm_read_guest_cached (int ,int *,int*,int) ;
 scalar_t__ test_bit (int ,int *) ;

void kvm_lapic_sync_from_vapic(struct kvm_vcpu *vcpu)
{
 u32 data;

 if (test_bit(KVM_APIC_PV_EOI_PENDING, &vcpu->arch.apic_attention))
  apic_sync_pv_eoi_from_guest(vcpu, vcpu->arch.apic);

 if (!test_bit(KVM_APIC_CHECK_VAPIC, &vcpu->arch.apic_attention))
  return;

 kvm_read_guest_cached(vcpu->kvm, &vcpu->arch.apic->vapic_cache, &data,
         sizeof(u32));

 apic_set_tpr(vcpu->arch.apic, data & 0xff);
}
