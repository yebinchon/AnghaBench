
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long pending_exceptions; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int BITS_PER_BYTE ;
 unsigned int BOOKE_IRQPRIO_MAX ;
 unsigned int __ffs (unsigned long) ;
 unsigned int find_next_bit (unsigned long*,int,unsigned int) ;
 scalar_t__ kvmppc_booke_irqprio_deliver (struct kvm_vcpu*,unsigned int) ;

void kvmppc_core_deliver_interrupts(struct kvm_vcpu *vcpu)
{
 unsigned long *pending = &vcpu->arch.pending_exceptions;
 unsigned int priority;

 priority = __ffs(*pending);
 while (priority <= BOOKE_IRQPRIO_MAX) {
  if (kvmppc_booke_irqprio_deliver(vcpu, priority))
   break;

  priority = find_next_bit(pending,
                           BITS_PER_BYTE * sizeof(*pending),
                           priority + 1);
 }
}
