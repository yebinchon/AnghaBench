
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 scalar_t__ apic_hw_enabled (scalar_t__) ;

bool kvm_apic_present(struct kvm_vcpu *vcpu)
{
 return vcpu->arch.apic && apic_hw_enabled(vcpu->arch.apic);
}
