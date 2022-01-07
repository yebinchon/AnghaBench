
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_lapic {int dummy; } ;


 int APIC_SPIV ;
 int APIC_SPIV_APIC_ENABLED ;
 int apic_get_reg (struct kvm_lapic*,int ) ;

__attribute__((used)) static inline int apic_sw_enabled(struct kvm_lapic *apic)
{
 return apic_get_reg(apic, APIC_SPIV) & APIC_SPIV_APIC_ENABLED;
}
