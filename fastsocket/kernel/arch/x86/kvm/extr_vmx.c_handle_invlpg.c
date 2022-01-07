
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int EXIT_QUALIFICATION ;
 int kvm_mmu_invlpg (struct kvm_vcpu*,unsigned long) ;
 int skip_emulated_instruction (struct kvm_vcpu*) ;
 unsigned long vmcs_readl (int ) ;

__attribute__((used)) static int handle_invlpg(struct kvm_vcpu *vcpu)
{
 unsigned long exit_qualification = vmcs_readl(EXIT_QUALIFICATION);

 kvm_mmu_invlpg(vcpu, exit_qualification);
 skip_emulated_instruction(vcpu);
 return 1;
}
