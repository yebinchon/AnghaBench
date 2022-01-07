
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_lapic {int dummy; } ;


 int APIC_ID ;
 int apic_get_reg (struct kvm_lapic*,int ) ;

__attribute__((used)) static inline int kvm_apic_id(struct kvm_lapic *apic)
{
 return (apic_get_reg(apic, APIC_ID) >> 24) & 0xff;
}
