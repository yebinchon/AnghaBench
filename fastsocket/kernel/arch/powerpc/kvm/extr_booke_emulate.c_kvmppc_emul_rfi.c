
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int srr1; int srr0; int pc; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int kvmppc_set_msr (struct kvm_vcpu*,int ) ;

__attribute__((used)) static void kvmppc_emul_rfi(struct kvm_vcpu *vcpu)
{
 vcpu->arch.pc = vcpu->arch.srr0;
 kvmppc_set_msr(vcpu, vcpu->arch.srr1);
}
