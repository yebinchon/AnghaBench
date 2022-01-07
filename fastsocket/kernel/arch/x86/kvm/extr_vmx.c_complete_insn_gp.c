
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int kvm_inject_gp (struct kvm_vcpu*,int ) ;
 int skip_emulated_instruction (struct kvm_vcpu*) ;

__attribute__((used)) static void complete_insn_gp(struct kvm_vcpu *vcpu, int err)
{
 if (err)
  kvm_inject_gp(vcpu, 0);
 else
  skip_emulated_instruction(vcpu);
}
