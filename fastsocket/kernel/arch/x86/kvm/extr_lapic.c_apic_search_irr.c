
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_lapic {scalar_t__ regs; } ;


 scalar_t__ APIC_IRR ;
 int find_highest_vector (scalar_t__) ;

__attribute__((used)) static inline int apic_search_irr(struct kvm_lapic *apic)
{
 return find_highest_vector(apic->regs + APIC_IRR);
}
