
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_lapic {TYPE_1__* vcpu; scalar_t__ regs; } ;
struct TYPE_2__ {int kvm; } ;


 int APIC_SPIV ;
 int APIC_SPIV_DIRECTED_EOI ;
 scalar_t__ APIC_TMR ;
 int IOAPIC_EDGE_TRIG ;
 int IOAPIC_LEVEL_TRIG ;
 int apic_clear_isr (int,struct kvm_lapic*) ;
 int apic_find_highest_isr (struct kvm_lapic*) ;
 int apic_get_reg (struct kvm_lapic*,int ) ;
 scalar_t__ apic_test_vector (int,scalar_t__) ;
 int apic_update_ppr (struct kvm_lapic*) ;
 scalar_t__ kvm_ioapic_handles_vector (int ,int) ;
 int kvm_ioapic_update_eoi (int ,int,int) ;
 int trace_kvm_eoi (struct kvm_lapic*,int) ;

__attribute__((used)) static int apic_set_eoi(struct kvm_lapic *apic)
{
 int vector = apic_find_highest_isr(apic);

 trace_kvm_eoi(apic, vector);





 if (vector == -1)
  return vector;

 apic_clear_isr(vector, apic);
 apic_update_ppr(apic);

 if (!(apic_get_reg(apic, APIC_SPIV) & APIC_SPIV_DIRECTED_EOI) &&
     kvm_ioapic_handles_vector(apic->vcpu->kvm, vector)) {
  int trigger_mode;
  if (apic_test_vector(vector, apic->regs + APIC_TMR))
   trigger_mode = IOAPIC_LEVEL_TRIG;
  else
   trigger_mode = IOAPIC_EDGE_TRIG;
  kvm_ioapic_update_eoi(apic->vcpu->kvm, vector, trigger_mode);
 }
 return vector;
}
