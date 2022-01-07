
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct hrtimer {int dummy; } ;
struct TYPE_4__ {struct hrtimer timer; } ;
struct kvm_lapic {TYPE_2__ lapic_timer; } ;


 int HRTIMER_MODE_ABS ;
 scalar_t__ hrtimer_cancel (struct hrtimer*) ;
 int hrtimer_start_expires (struct hrtimer*,int ) ;

void __kvm_migrate_apic_timer(struct kvm_vcpu *vcpu)
{
 struct kvm_lapic *apic = vcpu->arch.apic;
 struct hrtimer *timer;

 if (!apic)
  return;

 timer = &apic->lapic_timer.timer;
 if (hrtimer_cancel(timer))
  hrtimer_start_expires(timer, HRTIMER_MODE_ABS);
}
