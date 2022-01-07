
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
typedef int gva_t ;


 int X86EMUL_CONTINUE ;
 int kvm_mmu_invlpg (struct kvm_vcpu*,int ) ;

int emulate_invlpg(struct kvm_vcpu *vcpu, gva_t address)
{
 kvm_mmu_invlpg(vcpu, address);
 return X86EMUL_CONTINUE;
}
