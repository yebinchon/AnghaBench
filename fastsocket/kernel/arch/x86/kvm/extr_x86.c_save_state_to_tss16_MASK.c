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
struct tss_segment_16 {void* ldt; void* ds; void* ss; void* cs; void* es; void* di; void* si; void* bp; void* sp; void* bx; void* dx; void* cx; void* ax; int /*<<< orphan*/  flag; int /*<<< orphan*/  ip; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_rflags ) (struct kvm_vcpu*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  VCPU_REGS_RAX ; 
 int /*<<< orphan*/  VCPU_REGS_RBP ; 
 int /*<<< orphan*/  VCPU_REGS_RBX ; 
 int /*<<< orphan*/  VCPU_REGS_RCX ; 
 int /*<<< orphan*/  VCPU_REGS_RDI ; 
 int /*<<< orphan*/  VCPU_REGS_RDX ; 
 int /*<<< orphan*/  VCPU_REGS_RSI ; 
 int /*<<< orphan*/  VCPU_REGS_RSP ; 
 int /*<<< orphan*/  VCPU_SREG_CS ; 
 int /*<<< orphan*/  VCPU_SREG_DS ; 
 int /*<<< orphan*/  VCPU_SREG_ES ; 
 int /*<<< orphan*/  VCPU_SREG_LDTR ; 
 int /*<<< orphan*/  VCPU_SREG_SS ; 
 void* FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 TYPE_1__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC4(struct kvm_vcpu *vcpu,
				struct tss_segment_16 *tss)
{
	tss->ip = FUNC2(vcpu);
	tss->flag = kvm_x86_ops->get_rflags(vcpu);
	tss->ax = FUNC1(vcpu, VCPU_REGS_RAX);
	tss->cx = FUNC1(vcpu, VCPU_REGS_RCX);
	tss->dx = FUNC1(vcpu, VCPU_REGS_RDX);
	tss->bx = FUNC1(vcpu, VCPU_REGS_RBX);
	tss->sp = FUNC1(vcpu, VCPU_REGS_RSP);
	tss->bp = FUNC1(vcpu, VCPU_REGS_RBP);
	tss->si = FUNC1(vcpu, VCPU_REGS_RSI);
	tss->di = FUNC1(vcpu, VCPU_REGS_RDI);

	tss->es = FUNC0(vcpu, VCPU_SREG_ES);
	tss->cs = FUNC0(vcpu, VCPU_SREG_CS);
	tss->ss = FUNC0(vcpu, VCPU_SREG_SS);
	tss->ds = FUNC0(vcpu, VCPU_SREG_DS);
	tss->ldt = FUNC0(vcpu, VCPU_SREG_LDTR);
}