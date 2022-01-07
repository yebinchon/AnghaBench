
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mp_state; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 scalar_t__ KVM_MP_STATE_RUNNABLE ;
 int kvm_highest_pending_irq (struct kvm_vcpu*) ;

int kvm_arch_vcpu_runnable(struct kvm_vcpu *vcpu)
{
 return (vcpu->arch.mp_state == KVM_MP_STATE_RUNNABLE) ||
  (kvm_highest_pending_irq(vcpu) != -1);
}
