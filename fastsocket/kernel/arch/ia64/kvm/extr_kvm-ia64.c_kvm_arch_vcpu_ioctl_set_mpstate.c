
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mp_state; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_mp_state {scalar_t__ mp_state; } ;


 scalar_t__ KVM_MP_STATE_UNINITIALIZED ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;
 int vcpu_reset (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_set_mpstate(struct kvm_vcpu *vcpu,
        struct kvm_mp_state *mp_state)
{
 int r = 0;

 vcpu_load(vcpu);
 vcpu->arch.mp_state = mp_state->mp_state;
 if (vcpu->arch.mp_state == KVM_MP_STATE_UNINITIALIZED)
  r = vcpu_reset(vcpu);
 vcpu_put(vcpu);
 return r;
}
