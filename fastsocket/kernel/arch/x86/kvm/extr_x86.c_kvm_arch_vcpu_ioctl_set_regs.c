
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pending; } ;
struct TYPE_5__ {TYPE_1__ exception; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct kvm_regs {int rflags; int rip; int r15; int r14; int r13; int r12; int r11; int r10; int r9; int r8; int rbp; int rsp; int rdi; int rsi; int rdx; int rcx; int rbx; int rax; } ;
struct TYPE_6__ {int (* set_rflags ) (struct kvm_vcpu*,int ) ;} ;


 int VCPU_REGS_R10 ;
 int VCPU_REGS_R11 ;
 int VCPU_REGS_R12 ;
 int VCPU_REGS_R13 ;
 int VCPU_REGS_R14 ;
 int VCPU_REGS_R15 ;
 int VCPU_REGS_R8 ;
 int VCPU_REGS_R9 ;
 int VCPU_REGS_RAX ;
 int VCPU_REGS_RBP ;
 int VCPU_REGS_RBX ;
 int VCPU_REGS_RCX ;
 int VCPU_REGS_RDI ;
 int VCPU_REGS_RDX ;
 int VCPU_REGS_RSI ;
 int VCPU_REGS_RSP ;
 int kvm_register_write (struct kvm_vcpu*,int ,int ) ;
 int kvm_rip_write (struct kvm_vcpu*,int ) ;
 TYPE_3__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,int ) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_set_regs(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
{
 vcpu_load(vcpu);

 kvm_register_write(vcpu, VCPU_REGS_RAX, regs->rax);
 kvm_register_write(vcpu, VCPU_REGS_RBX, regs->rbx);
 kvm_register_write(vcpu, VCPU_REGS_RCX, regs->rcx);
 kvm_register_write(vcpu, VCPU_REGS_RDX, regs->rdx);
 kvm_register_write(vcpu, VCPU_REGS_RSI, regs->rsi);
 kvm_register_write(vcpu, VCPU_REGS_RDI, regs->rdi);
 kvm_register_write(vcpu, VCPU_REGS_RSP, regs->rsp);
 kvm_register_write(vcpu, VCPU_REGS_RBP, regs->rbp);
 kvm_rip_write(vcpu, regs->rip);
 kvm_x86_ops->set_rflags(vcpu, regs->rflags);


 vcpu->arch.exception.pending = 0;

 vcpu_put(vcpu);

 return 0;
}
