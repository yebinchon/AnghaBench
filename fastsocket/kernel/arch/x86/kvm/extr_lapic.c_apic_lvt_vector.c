
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_lapic {int dummy; } ;


 int APIC_VECTOR_MASK ;
 int apic_get_reg (struct kvm_lapic*,int) ;

__attribute__((used)) static inline int apic_lvt_vector(struct kvm_lapic *apic, int lvt_type)
{
 return apic_get_reg(apic, lvt_type) & APIC_VECTOR_MASK;
}
