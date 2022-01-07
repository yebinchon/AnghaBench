
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_pt_regs {int cr_ifs; } ;


 int setreg (unsigned long,int ,int,struct kvm_pt_regs*) ;
 struct kvm_pt_regs* vcpu_regs (struct kvm_vcpu*) ;

void vcpu_set_gr(struct kvm_vcpu *vcpu, unsigned long reg, u64 value, int nat)
{
 struct kvm_pt_regs *regs = vcpu_regs(vcpu);
 long sof = (regs->cr_ifs) & 0x7f;

 if (!reg)
  return;
 if (reg >= sof + 32)
  return;
 setreg(reg, value, nat, regs);
}
