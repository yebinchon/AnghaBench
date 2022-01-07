
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
 scalar_t__ apic_enabled (struct kvm_lapic*) ;
 scalar_t__ apic_lvt_enabled (struct kvm_lapic*,int ) ;
 int atomic_read (int *) ;

int apic_has_pending_timer(struct kvm_vcpu *vcpu)
{
 struct kvm_lapic *lapic = vcpu->arch.apic;

 if (lapic && apic_enabled(lapic) && apic_lvt_enabled(lapic, APIC_LVTT))
  return atomic_read(&lapic->lapic_timer.pending);

 return 0;
}
