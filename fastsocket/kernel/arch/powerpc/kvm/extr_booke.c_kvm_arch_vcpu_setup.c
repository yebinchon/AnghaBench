
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* gpr; int shadow_pid; int ivpr; scalar_t__ msr; scalar_t__ pc; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int kvmppc_core_vcpu_setup (struct kvm_vcpu*) ;
 int kvmppc_init_timing_stats (struct kvm_vcpu*) ;

int kvm_arch_vcpu_setup(struct kvm_vcpu *vcpu)
{
 vcpu->arch.pc = 0;
 vcpu->arch.msr = 0;
 vcpu->arch.gpr[1] = (16<<20) - 8;

 vcpu->arch.shadow_pid = 1;



 vcpu->arch.ivpr = 0x55550000;

 kvmppc_init_timing_stats(vcpu);

 return kvmppc_core_vcpu_setup(vcpu);
}
