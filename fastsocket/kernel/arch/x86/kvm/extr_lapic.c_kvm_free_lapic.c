
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* apic; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_4__ {int timer; } ;
struct TYPE_6__ {scalar_t__ regs_page; TYPE_1__ lapic_timer; } ;


 int __free_page (scalar_t__) ;
 int hrtimer_cancel (int *) ;
 int kfree (TYPE_3__*) ;

void kvm_free_lapic(struct kvm_vcpu *vcpu)
{
 if (!vcpu->arch.apic)
  return;

 hrtimer_cancel(&vcpu->arch.apic->lapic_timer.timer);

 if (vcpu->arch.apic->regs_page)
  __free_page(vcpu->arch.apic->regs_page);

 kfree(vcpu->arch.apic);
}
