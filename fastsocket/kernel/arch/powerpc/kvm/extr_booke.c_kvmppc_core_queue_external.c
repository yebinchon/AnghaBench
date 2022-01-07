
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_interrupt {int dummy; } ;


 int BOOKE_IRQPRIO_EXTERNAL ;
 int kvmppc_booke_queue_irqprio (struct kvm_vcpu*,int ) ;

void kvmppc_core_queue_external(struct kvm_vcpu *vcpu,
                                struct kvm_interrupt *irq)
{
 kvmppc_booke_queue_irqprio(vcpu, BOOKE_IRQPRIO_EXTERNAL);
}
