
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int BOOKE_IRQPRIO_PROGRAM ;
 int kvmppc_booke_queue_irqprio (struct kvm_vcpu*,int ) ;

void kvmppc_core_queue_program(struct kvm_vcpu *vcpu)
{
 kvmppc_booke_queue_irqprio(vcpu, BOOKE_IRQPRIO_PROGRAM);
}
