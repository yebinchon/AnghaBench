
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int shadow_pid; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;



void kvmppc_mmu_priv_switch(struct kvm_vcpu *vcpu, int usermode)
{
 vcpu->arch.shadow_pid = !usermode;
}
