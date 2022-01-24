#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int pending; } ;
struct TYPE_5__ {TYPE_1__ exception; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct kvm_regs {int /*<<< orphan*/  rflags; int /*<<< orphan*/  rip; int /*<<< orphan*/  r15; int /*<<< orphan*/  r14; int /*<<< orphan*/  r13; int /*<<< orphan*/  r12; int /*<<< orphan*/  r11; int /*<<< orphan*/  r10; int /*<<< orphan*/  r9; int /*<<< orphan*/  r8; int /*<<< orphan*/  rbp; int /*<<< orphan*/  rsp; int /*<<< orphan*/  rdi; int /*<<< orphan*/  rsi; int /*<<< orphan*/  rdx; int /*<<< orphan*/  rcx; int /*<<< orphan*/  rbx; int /*<<< orphan*/  rax; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* set_rflags ) (struct kvm_vcpu*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
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
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 TYPE_3__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 

int FUNC5(struct kvm_vcpu *vcpu, struct kvm_regs *regs)
{
	FUNC3(vcpu);

	FUNC0(vcpu, VCPU_REGS_RAX, regs->rax);
	FUNC0(vcpu, VCPU_REGS_RBX, regs->rbx);
	FUNC0(vcpu, VCPU_REGS_RCX, regs->rcx);
	FUNC0(vcpu, VCPU_REGS_RDX, regs->rdx);
	FUNC0(vcpu, VCPU_REGS_RSI, regs->rsi);
	FUNC0(vcpu, VCPU_REGS_RDI, regs->rdi);
	FUNC0(vcpu, VCPU_REGS_RSP, regs->rsp);
	FUNC0(vcpu, VCPU_REGS_RBP, regs->rbp);
#ifdef CONFIG_X86_64
	kvm_register_write(vcpu, VCPU_REGS_R8, regs->r8);
	kvm_register_write(vcpu, VCPU_REGS_R9, regs->r9);
	kvm_register_write(vcpu, VCPU_REGS_R10, regs->r10);
	kvm_register_write(vcpu, VCPU_REGS_R11, regs->r11);
	kvm_register_write(vcpu, VCPU_REGS_R12, regs->r12);
	kvm_register_write(vcpu, VCPU_REGS_R13, regs->r13);
	kvm_register_write(vcpu, VCPU_REGS_R14, regs->r14);
	kvm_register_write(vcpu, VCPU_REGS_R15, regs->r15);

#endif

	FUNC1(vcpu, regs->rip);
	kvm_x86_ops->set_rflags(vcpu, regs->rflags);


	vcpu->arch.exception.pending = false;

	FUNC4(vcpu);

	return 0;
}