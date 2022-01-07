
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_lapic {int irr_pending; scalar_t__ regs; } ;


 scalar_t__ APIC_IRR ;
 int apic_test_and_set_vector (int,scalar_t__) ;

__attribute__((used)) static inline int apic_test_and_set_irr(int vec, struct kvm_lapic *apic)
{
 apic->irr_pending = 1;
 return apic_test_and_set_vector(vec, apic->regs + APIC_IRR);
}
