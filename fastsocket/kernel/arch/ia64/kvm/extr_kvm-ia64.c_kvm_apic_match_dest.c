
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_lapic {int dummy; } ;


 int kvm_apic_match_logical_addr (struct kvm_lapic*,int) ;
 int kvm_apic_match_physical_addr (struct kvm_lapic*,int) ;

int kvm_apic_match_dest(struct kvm_vcpu *vcpu, struct kvm_lapic *source,
  int short_hand, int dest, int dest_mode)
{
 struct kvm_lapic *target = vcpu->arch.apic;
 return (dest_mode == 0) ?
  kvm_apic_match_physical_addr(target, dest) :
  kvm_apic_match_logical_addr(target, dest);
}
