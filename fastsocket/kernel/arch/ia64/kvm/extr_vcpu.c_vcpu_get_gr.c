
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_pt_regs {int dummy; } ;


 int getreg (unsigned long,unsigned long*,int ,struct kvm_pt_regs*) ;
 struct kvm_pt_regs* vcpu_regs (struct kvm_vcpu*) ;

u64 vcpu_get_gr(struct kvm_vcpu *vcpu, unsigned long reg)
{
 struct kvm_pt_regs *regs = vcpu_regs(vcpu);
 unsigned long val;

 if (!reg)
  return 0;
 getreg(reg, &val, 0, regs);
 return val;
}
