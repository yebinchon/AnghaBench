
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_lapic {scalar_t__ isr_count; int highest_isr_cache; scalar_t__ regs; } ;


 scalar_t__ APIC_ISR ;
 int BUG_ON (int) ;
 scalar_t__ __apic_test_and_clear_vector (int,scalar_t__) ;

__attribute__((used)) static inline void apic_clear_isr(int vec, struct kvm_lapic *apic)
{
 if (__apic_test_and_clear_vector(vec, apic->regs + APIC_ISR))
  --apic->isr_count;
 BUG_ON(apic->isr_count < 0);
 apic->highest_isr_cache = -1;
}
