
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int apic_base; struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int timer; } ;
struct kvm_lapic {int base_address; int irr_pending; int highest_isr_cache; scalar_t__ regs; int isr_count; TYPE_2__ lapic_timer; } ;


 scalar_t__ APIC_ISR ;
 int MSR_IA32_APICBASE_BASE ;
 int apic_update_ppr (struct kvm_lapic*) ;
 int count_vectors (scalar_t__) ;
 int hrtimer_cancel (int *) ;
 int kvm_apic_set_version (struct kvm_vcpu*) ;
 int start_apic_timer (struct kvm_lapic*) ;
 int update_divide_count (struct kvm_lapic*) ;

void kvm_apic_post_state_restore(struct kvm_vcpu *vcpu)
{
 struct kvm_lapic *apic = vcpu->arch.apic;

 apic->base_address = vcpu->arch.apic_base &
        MSR_IA32_APICBASE_BASE;
 kvm_apic_set_version(vcpu);

 apic_update_ppr(apic);
 hrtimer_cancel(&apic->lapic_timer.timer);
 update_divide_count(apic);
 start_apic_timer(apic);
 apic->irr_pending = 1;
 apic->isr_count = count_vectors(apic->regs + APIC_ISR);
 apic->highest_isr_cache = -1;
}
