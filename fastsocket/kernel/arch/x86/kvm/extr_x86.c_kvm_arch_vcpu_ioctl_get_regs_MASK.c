#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kvm_vcpu {int guest_debug; } ;
struct kvm_regs {int rflags; int /*<<< orphan*/  rip; void* r15; void* r14; void* r13; void* r12; void* r11; void* r10; void* r9; void* r8; void* rbp; void* rsp; void* rdi; void* rsi; void* rdx; void* rcx; void* rbx; void* rax; } ;
struct TYPE_2__ {int (* get_rflags ) (struct kvm_vcpu*) ;} ;

/* Variables and functions */
 int KVM_GUESTDBG_SINGLESTEP ; 
 int /*<<< orphan*/  VCPU_REGS_R10 ; 
 int /*<<< orphan*/  VCPU_REGS_R11 ; 
 int /*<<< orphan*/  VCPU_REGS_R12 ; 
 int /*<<< orphan*/  VCPU_REGS_R13 ; 
 int /*<<< orphan*/  VCPU_REGS_R14 ; 
 int /*<<< orphan*/  VCPU_REGS_R15 ; 
 int /*<<< orphan*/  VCPU_REGS_R8 ; 
 int /*<<< orphan*/  VCPU_REGS_R9 ; 
 int /*<<< orphan*/  VCPU_REGS_RAX ; 
 int /*<<< orphan*/  VCPU_REGS_RBP ; 
 int /*<<< orphan*/  VCPU_REGS_RBX ; 
 int /*<<< orphan*/  VCPU_REGS_RCX ; 
 int /*<<< orphan*/  VCPU_REGS_RDI ; 
 int /*<<< orphan*/  VCPU_REGS_RDX ; 
 int /*<<< orphan*/  VCPU_REGS_RSI ; 
 int /*<<< orphan*/  VCPU_REGS_RSP ; 
 int X86_EFLAGS_RF ; 
 int X86_EFLAGS_TF ; 
 void* FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 TYPE_1__* kvm_x86_ops ; 
 int FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 

int FUNC5(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
{
	FUNC3(vcpu);

	regs->rax = FUNC0(vcpu, VCPU_REGS_RAX);
	regs->rbx = FUNC0(vcpu, VCPU_REGS_RBX);
	regs->rcx = FUNC0(vcpu, VCPU_REGS_RCX);
	regs->rdx = FUNC0(vcpu, VCPU_REGS_RDX);
	regs->rsi = FUNC0(vcpu, VCPU_REGS_RSI);
	regs->rdi = FUNC0(vcpu, VCPU_REGS_RDI);
	regs->rsp = FUNC0(vcpu, VCPU_REGS_RSP);
	regs->rbp = FUNC0(vcpu, VCPU_REGS_RBP);
#ifdef CONFIG_X86_64
	regs->r8 = kvm_register_read(vcpu, VCPU_REGS_R8);
	regs->r9 = kvm_register_read(vcpu, VCPU_REGS_R9);
	regs->r10 = kvm_register_read(vcpu, VCPU_REGS_R10);
	regs->r11 = kvm_register_read(vcpu, VCPU_REGS_R11);
	regs->r12 = kvm_register_read(vcpu, VCPU_REGS_R12);
	regs->r13 = kvm_register_read(vcpu, VCPU_REGS_R13);
	regs->r14 = kvm_register_read(vcpu, VCPU_REGS_R14);
	regs->r15 = kvm_register_read(vcpu, VCPU_REGS_R15);
#endif

	regs->rip = FUNC1(vcpu);
	regs->rflags = kvm_x86_ops->get_rflags(vcpu);

	/*
	 * Don't leak debug flags in case they were set for guest debugging
	 */
	if (vcpu->guest_debug & KVM_GUESTDBG_SINGLESTEP)
		regs->rflags &= ~(X86_EFLAGS_TF | X86_EFLAGS_RF);

	FUNC4(vcpu);

	return 0;
}