
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_pt_regs {int cr_iip; int cr_ipsr; } ;
struct ia64_psr {int ri; } ;


 struct kvm_pt_regs* vcpu_regs (struct kvm_vcpu*) ;

void vcpu_decrement_iip(struct kvm_vcpu *vcpu)
{
 struct kvm_pt_regs *regs = vcpu_regs(vcpu);
 struct ia64_psr *ipsr = (struct ia64_psr *)&regs->cr_ipsr;

 if (ipsr->ri == 0) {
  ipsr->ri = 2;
  regs->cr_iip -= 16;
 } else
  ipsr->ri--;
}
