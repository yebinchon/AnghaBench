
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_pt_regs {int dummy; } ;
struct ia64_fpreg {int dummy; } ;


 int getfpreg (unsigned long,struct ia64_fpreg*,struct kvm_pt_regs*) ;
 struct kvm_pt_regs* vcpu_regs (struct kvm_vcpu*) ;

void vcpu_get_fpreg(struct kvm_vcpu *vcpu, unsigned long reg,
      struct ia64_fpreg *val)
{
 struct kvm_pt_regs *regs = vcpu_regs(vcpu);

 getfpreg(reg, val, regs);
}
