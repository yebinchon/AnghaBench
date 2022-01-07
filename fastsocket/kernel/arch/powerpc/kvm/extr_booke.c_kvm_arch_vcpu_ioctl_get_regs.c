
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * gpr; int sprg6; int sprg5; int sprg4; int sprg3; int sprg2; int sprg1; int sprg0; int pid; int srr1; int srr0; int msr; int xer; int lr; int ctr; int cr; int pc; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_regs {int * gpr; int sprg7; int sprg6; int sprg5; int sprg3; int sprg2; int sprg1; int sprg0; int pid; int srr1; int srr0; int msr; int xer; int lr; int ctr; int cr; int pc; } ;


 int ARRAY_SIZE (int *) ;

int kvm_arch_vcpu_ioctl_get_regs(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
{
 int i;

 regs->pc = vcpu->arch.pc;
 regs->cr = vcpu->arch.cr;
 regs->ctr = vcpu->arch.ctr;
 regs->lr = vcpu->arch.lr;
 regs->xer = vcpu->arch.xer;
 regs->msr = vcpu->arch.msr;
 regs->srr0 = vcpu->arch.srr0;
 regs->srr1 = vcpu->arch.srr1;
 regs->pid = vcpu->arch.pid;
 regs->sprg0 = vcpu->arch.sprg0;
 regs->sprg1 = vcpu->arch.sprg1;
 regs->sprg2 = vcpu->arch.sprg2;
 regs->sprg3 = vcpu->arch.sprg3;
 regs->sprg5 = vcpu->arch.sprg4;
 regs->sprg6 = vcpu->arch.sprg5;
 regs->sprg7 = vcpu->arch.sprg6;

 for (i = 0; i < ARRAY_SIZE(regs->gpr); i++)
  regs->gpr[i] = vcpu->arch.gpr[i];

 return 0;
}
