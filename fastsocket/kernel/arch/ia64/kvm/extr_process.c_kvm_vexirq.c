
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_pt_regs {int dummy; } ;


 int IA64_PSR_RI ;
 int VCPU (struct kvm_vcpu*,int) ;
 int reflect_interruption (int ,int,int ,int,struct kvm_pt_regs*) ;
 struct kvm_pt_regs* vcpu_regs (struct kvm_vcpu*) ;

void kvm_vexirq(struct kvm_vcpu *vcpu)
{
 u64 vpsr, isr;
 struct kvm_pt_regs *regs;

 regs = vcpu_regs(vcpu);
 vpsr = VCPU(vcpu, vpsr);
 isr = vpsr & IA64_PSR_RI;
 reflect_interruption(0, isr, 0, 12, regs);
}
