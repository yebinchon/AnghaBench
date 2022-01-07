
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_lapic {scalar_t__ base_address; } ;
typedef scalar_t__ gpa_t ;


 scalar_t__ LAPIC_MMIO_LENGTH ;
 scalar_t__ apic_hw_enabled (struct kvm_lapic*) ;

__attribute__((used)) static int apic_mmio_in_range(struct kvm_lapic *apic, gpa_t addr)
{
 return apic_hw_enabled(apic) &&
     addr >= apic->base_address &&
     addr < apic->base_address + LAPIC_MMIO_LENGTH;
}
