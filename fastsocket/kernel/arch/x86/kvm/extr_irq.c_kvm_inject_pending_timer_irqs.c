
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvm_inject_apic_timer_irqs (struct kvm_vcpu*) ;

void kvm_inject_pending_timer_irqs(struct kvm_vcpu *vcpu)
{
 kvm_inject_apic_timer_irqs(vcpu);

}
