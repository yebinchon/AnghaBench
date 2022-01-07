
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int guest_debug; } ;
struct kvm_regs {int rflags; int rip; void* r15; void* r14; void* r13; void* r12; void* r11; void* r10; void* r9; void* r8; void* rbp; void* rsp; void* rdi; void* rsi; void* rdx; void* rcx; void* rbx; void* rax; } ;
struct TYPE_2__ {int (* get_rflags ) (struct kvm_vcpu*) ;} ;


 int KVM_GUESTDBG_SINGLESTEP ;
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
 int X86_EFLAGS_RF ;
 int X86_EFLAGS_TF ;
 void* kvm_register_read (struct kvm_vcpu*,int ) ;
 int kvm_rip_read (struct kvm_vcpu*) ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_get_regs(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
{
 vcpu_load(vcpu);

 regs->rax = kvm_register_read(vcpu, VCPU_REGS_RAX);
 regs->rbx = kvm_register_read(vcpu, VCPU_REGS_RBX);
 regs->rcx = kvm_register_read(vcpu, VCPU_REGS_RCX);
 regs->rdx = kvm_register_read(vcpu, VCPU_REGS_RDX);
 regs->rsi = kvm_register_read(vcpu, VCPU_REGS_RSI);
 regs->rdi = kvm_register_read(vcpu, VCPU_REGS_RDI);
 regs->rsp = kvm_register_read(vcpu, VCPU_REGS_RSP);
 regs->rbp = kvm_register_read(vcpu, VCPU_REGS_RBP);
 regs->rip = kvm_rip_read(vcpu);
 regs->rflags = kvm_x86_ops->get_rflags(vcpu);




 if (vcpu->guest_debug & KVM_GUESTDBG_SINGLESTEP)
  regs->rflags &= ~(X86_EFLAGS_TF | X86_EFLAGS_RF);

 vcpu_put(vcpu);

 return 0;
}
