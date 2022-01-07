
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int pending; } ;
struct kvm_lapic {TYPE_2__ lapic_timer; } ;


 int APIC_LVTT ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ kvm_apic_local_deliver (struct kvm_lapic*,int ) ;

void kvm_inject_apic_timer_irqs(struct kvm_vcpu *vcpu)
{
 struct kvm_lapic *apic = vcpu->arch.apic;

 if (apic && atomic_read(&apic->lapic_timer.pending) > 0) {
  if (kvm_apic_local_deliver(apic, APIC_LVTT))
   atomic_dec(&apic->lapic_timer.pending);
 }
}
