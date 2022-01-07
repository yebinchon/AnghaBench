
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_lapic_irq {int vector; } ;


 int __apic_accept_irq (struct kvm_vcpu*,int ) ;

int kvm_apic_set_irq(struct kvm_vcpu *vcpu, struct kvm_lapic_irq *irq)
{
 return __apic_accept_irq(vcpu, irq->vector);
}
