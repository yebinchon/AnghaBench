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
struct tss_segment_32 {int eflags; int /*<<< orphan*/  gs; int /*<<< orphan*/  fs; int /*<<< orphan*/  ds; int /*<<< orphan*/  ss; int /*<<< orphan*/  cs; int /*<<< orphan*/  es; int /*<<< orphan*/  ldt_selector; int /*<<< orphan*/  edi; int /*<<< orphan*/  esi; int /*<<< orphan*/  ebp; int /*<<< orphan*/  esp; int /*<<< orphan*/  ebx; int /*<<< orphan*/  edx; int /*<<< orphan*/  ecx; int /*<<< orphan*/  eax; int /*<<< orphan*/  eip; int /*<<< orphan*/  cr3; } ;
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
 int /*<<< orphan*/  VCPU_SREG_FS ; 
 int /*<<< orphan*/  VCPU_SREG_GS ; 
 int /*<<< orphan*/  VCPU_SREG_LDTR ; 
 int /*<<< orphan*/  VCPU_SREG_SS ; 
 scalar_t__ FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 TYPE_1__* kvm_x86_ops ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int) ; 

__attribute__((used)) static int FUNC6(struct kvm_vcpu *vcpu,
				  struct tss_segment_32 *tss)
{
	FUNC4(vcpu, tss->cr3);

	FUNC3(vcpu, tss->eip);
	kvm_x86_ops->set_rflags(vcpu, tss->eflags | 2);

	FUNC2(vcpu, VCPU_REGS_RAX, tss->eax);
	FUNC2(vcpu, VCPU_REGS_RCX, tss->ecx);
	FUNC2(vcpu, VCPU_REGS_RDX, tss->edx);
	FUNC2(vcpu, VCPU_REGS_RBX, tss->ebx);
	FUNC2(vcpu, VCPU_REGS_RSP, tss->esp);
	FUNC2(vcpu, VCPU_REGS_RBP, tss->ebp);
	FUNC2(vcpu, VCPU_REGS_RSI, tss->esi);
	FUNC2(vcpu, VCPU_REGS_RDI, tss->edi);

	/*
	 * SDM says that segment selectors are loaded before segment
	 * descriptors
	 */
	FUNC1(vcpu, tss->ldt_selector, VCPU_SREG_LDTR);
	FUNC1(vcpu, tss->es, VCPU_SREG_ES);
	FUNC1(vcpu, tss->cs, VCPU_SREG_CS);
	FUNC1(vcpu, tss->ss, VCPU_SREG_SS);
	FUNC1(vcpu, tss->ds, VCPU_SREG_DS);
	FUNC1(vcpu, tss->fs, VCPU_SREG_FS);
	FUNC1(vcpu, tss->gs, VCPU_SREG_GS);

	/*
	 * Now load segment descriptors. If fault happenes at this stage
	 * it is handled in a context of new task
	 */
	if (FUNC0(vcpu, tss->ldt_selector, VCPU_SREG_LDTR))
		return 1;

	if (FUNC0(vcpu, tss->es, VCPU_SREG_ES))
		return 1;

	if (FUNC0(vcpu, tss->cs, VCPU_SREG_CS))
		return 1;

	if (FUNC0(vcpu, tss->ss, VCPU_SREG_SS))
		return 1;

	if (FUNC0(vcpu, tss->ds, VCPU_SREG_DS))
		return 1;

	if (FUNC0(vcpu, tss->fs, VCPU_SREG_FS))
		return 1;

	if (FUNC0(vcpu, tss->gs, VCPU_SREG_GS))
		return 1;
	return 0;
}