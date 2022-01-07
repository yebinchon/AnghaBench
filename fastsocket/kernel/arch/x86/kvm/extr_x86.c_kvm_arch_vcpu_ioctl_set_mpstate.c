
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mp_state; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_mp_state {int mp_state; } ;


 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_set_mpstate(struct kvm_vcpu *vcpu,
        struct kvm_mp_state *mp_state)
{
 vcpu_load(vcpu);
 vcpu->arch.mp_state = mp_state->mp_state;
 vcpu_put(vcpu);
 return 0;
}
