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
struct tss_segment_16 {int flag; int /*<<< orphan*/  ds; int /*<<< orphan*/  ss; int /*<<< orphan*/  cs; int /*<<< orphan*/  es; int /*<<< orphan*/  ldt; int /*<<< orphan*/  di; int /*<<< orphan*/  si; int /*<<< orphan*/  bp; int /*<<< orphan*/  sp; int /*<<< orphan*/  bx; int /*<<< orphan*/  dx; int /*<<< orphan*/  cx; int /*<<< orphan*/  ax; int /*<<< orphan*/  ip; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_rflags ) (struct kvm_vcpu*,int) ;} ;

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
 scalar_t__ FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 TYPE_1__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int) ; 

__attribute__((used)) static int FUNC5(struct kvm_vcpu *vcpu,
				 struct tss_segment_16 *tss)
{
	FUNC3(vcpu, tss->ip);
	kvm_x86_ops->set_rflags(vcpu, tss->flag | 2);
	FUNC2(vcpu, VCPU_REGS_RAX, tss->ax);
	FUNC2(vcpu, VCPU_REGS_RCX, tss->cx);
	FUNC2(vcpu, VCPU_REGS_RDX, tss->dx);
	FUNC2(vcpu, VCPU_REGS_RBX, tss->bx);
	FUNC2(vcpu, VCPU_REGS_RSP, tss->sp);
	FUNC2(vcpu, VCPU_REGS_RBP, tss->bp);
	FUNC2(vcpu, VCPU_REGS_RSI, tss->si);
	FUNC2(vcpu, VCPU_REGS_RDI, tss->di);

	/*
	 * SDM says that segment selectors are loaded before segment
	 * descriptors
	 */
	FUNC1(vcpu, tss->ldt, VCPU_SREG_LDTR);
	FUNC1(vcpu, tss->es, VCPU_SREG_ES);
	FUNC1(vcpu, tss->cs, VCPU_SREG_CS);
	FUNC1(vcpu, tss->ss, VCPU_SREG_SS);
	FUNC1(vcpu, tss->ds, VCPU_SREG_DS);

	/*
	 * Now load segment descriptors. If fault happenes at this stage
	 * it is handled in a context of new task
	 */
	if (FUNC0(vcpu, tss->ldt, VCPU_SREG_LDTR))
		return 1;

	if (FUNC0(vcpu, tss->es, VCPU_SREG_ES))
		return 1;

	if (FUNC0(vcpu, tss->cs, VCPU_SREG_CS))
		return 1;

	if (FUNC0(vcpu, tss->ss, VCPU_SREG_SS))
		return 1;

	if (FUNC0(vcpu, tss->ds, VCPU_SREG_DS))
		return 1;
	return 0;
}