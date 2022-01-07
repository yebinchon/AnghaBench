
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_lapic {int dummy; } ;


 scalar_t__ apic_hw_enabled (struct kvm_lapic*) ;
 scalar_t__ apic_sw_enabled (struct kvm_lapic*) ;

__attribute__((used)) static inline int apic_enabled(struct kvm_lapic *apic)
{
 return apic_sw_enabled(apic) && apic_hw_enabled(apic);
}
