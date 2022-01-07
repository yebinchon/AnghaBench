
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int timer_mode_mask; } ;
struct kvm_lapic {TYPE_1__ lapic_timer; } ;
struct kvm_cpuid_entry2 {int function; int ecx; } ;


 int X86_CR4_OSXSAVE ;
 int X86_FEATURE_OSXSAVE ;
 int X86_FEATURE_TSC_DEADLINE_TIMER ;
 int bit (int ) ;
 scalar_t__ cpu_has_xsave ;
 struct kvm_cpuid_entry2* kvm_find_cpuid_entry (struct kvm_vcpu*,int,int ) ;
 int kvm_pmu_cpuid_update (struct kvm_vcpu*) ;
 scalar_t__ kvm_read_cr4_bits (struct kvm_vcpu*,int ) ;

__attribute__((used)) static void update_cpuid(struct kvm_vcpu *vcpu)
{
 struct kvm_cpuid_entry2 *best;
 struct kvm_lapic *apic = vcpu->arch.apic;

 best = kvm_find_cpuid_entry(vcpu, 1, 0);
 if (!best)
  return;


 if (cpu_has_xsave && best->function == 0x1) {
  best->ecx &= ~(bit(X86_FEATURE_OSXSAVE));
  if (kvm_read_cr4_bits(vcpu, X86_CR4_OSXSAVE))
   best->ecx |= bit(X86_FEATURE_OSXSAVE);
 }

 if (apic) {
  if (best->ecx & bit(X86_FEATURE_TSC_DEADLINE_TIMER))
   apic->lapic_timer.timer_mode_mask = 3 << 17;
  else
   apic->lapic_timer.timer_mode_mask = 1 << 17;
 }

 kvm_pmu_cpuid_update(vcpu);
}
