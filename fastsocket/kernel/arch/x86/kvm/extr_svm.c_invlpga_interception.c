
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * regs; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct vcpu_svm {struct kvm_vcpu vcpu; scalar_t__ next_rip; } ;


 size_t VCPU_REGS_RAX ;
 int kvm_mmu_invlpg (struct kvm_vcpu*,int ) ;
 scalar_t__ kvm_rip_read (struct kvm_vcpu*) ;
 int nsvm_printk (char*) ;
 int skip_emulated_instruction (struct kvm_vcpu*) ;

__attribute__((used)) static int invlpga_interception(struct vcpu_svm *svm)
{
 struct kvm_vcpu *vcpu = &svm->vcpu;
 nsvm_printk("INVLPGA\n");


 kvm_mmu_invlpg(vcpu, vcpu->arch.regs[VCPU_REGS_RAX]);

 svm->next_rip = kvm_rip_read(&svm->vcpu) + 3;
 skip_emulated_instruction(&svm->vcpu);
 return 1;
}
