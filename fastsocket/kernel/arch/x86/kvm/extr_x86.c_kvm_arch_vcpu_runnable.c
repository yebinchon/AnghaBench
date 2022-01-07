
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mp_state; scalar_t__ nmi_pending; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 scalar_t__ KVM_MP_STATE_RUNNABLE ;
 scalar_t__ KVM_MP_STATE_SIPI_RECEIVED ;
 scalar_t__ kvm_arch_interrupt_allowed (struct kvm_vcpu*) ;
 scalar_t__ kvm_cpu_has_interrupt (struct kvm_vcpu*) ;

int kvm_arch_vcpu_runnable(struct kvm_vcpu *vcpu)
{
 return vcpu->arch.mp_state == KVM_MP_STATE_RUNNABLE
  || vcpu->arch.mp_state == KVM_MP_STATE_SIPI_RECEIVED
  || vcpu->arch.nmi_pending ||
  (kvm_arch_interrupt_allowed(vcpu) &&
   kvm_cpu_has_interrupt(vcpu));
}
