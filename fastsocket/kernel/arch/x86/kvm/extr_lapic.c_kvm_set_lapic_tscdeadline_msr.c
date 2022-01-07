
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int tscdeadline; int timer; } ;
struct kvm_lapic {TYPE_2__ lapic_timer; } ;


 scalar_t__ apic_lvtt_oneshot (struct kvm_lapic*) ;
 scalar_t__ apic_lvtt_period (struct kvm_lapic*) ;
 int hrtimer_cancel (int *) ;
 int start_apic_timer (struct kvm_lapic*) ;

void kvm_set_lapic_tscdeadline_msr(struct kvm_vcpu *vcpu, u64 data)
{
 struct kvm_lapic *apic = vcpu->arch.apic;
 if (!apic)
  return;

 if (apic_lvtt_oneshot(apic) || apic_lvtt_period(apic))
  return;

 hrtimer_cancel(&apic->lapic_timer.timer);
 apic->lapic_timer.tscdeadline = data;
 start_apic_timer(apic);
}
