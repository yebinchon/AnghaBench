
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_lapic_irq {int trig_mode; int level; int vector; int delivery_mode; } ;
struct kvm_lapic {int vcpu; } ;


 int __apic_accept_irq (struct kvm_lapic*,int ,int ,int ,int ) ;
 int kvm_vcpu_is_bsp (int ) ;

int kvm_apic_set_irq(struct kvm_vcpu *vcpu, struct kvm_lapic_irq *irq)
{
 int result;
 struct kvm_lapic *apic = vcpu->arch.apic;

 result = __apic_accept_irq(apic, irq->delivery_mode, irq->vector,
   irq->level, irq->trig_mode);

 if (!kvm_vcpu_is_bsp(apic->vcpu) && !irq->trig_mode)
  result = 0;

 return result;
}
