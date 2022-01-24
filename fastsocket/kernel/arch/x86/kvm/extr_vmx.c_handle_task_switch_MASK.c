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
typedef  int u32 ;
typedef  unsigned long u16 ;
struct vcpu_vmx {int idt_vectoring_info; } ;
struct TYPE_2__ {int nmi_injected; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_QUALIFICATION ; 
 int /*<<< orphan*/  GUEST_DR7 ; 
 int /*<<< orphan*/  GUEST_INTERRUPTIBILITY_INFO ; 
 int /*<<< orphan*/  GUEST_INTR_STATE_NMI ; 
 int /*<<< orphan*/  IDT_VECTORING_ERROR_CODE ; 
#define  INTR_TYPE_EXT_INTR 132 
#define  INTR_TYPE_HARD_EXCEPTION 131 
#define  INTR_TYPE_NMI_INTR 130 
#define  INTR_TYPE_SOFT_EXCEPTION 129 
#define  INTR_TYPE_SOFT_INTR 128 
 int TASK_SWITCH_GATE ; 
 int VECTORING_INFO_DELIVER_CODE_MASK ; 
 int VECTORING_INFO_TYPE_MASK ; 
 int VECTORING_INFO_VALID_MASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,unsigned long,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 struct vcpu_vmx* FUNC5 (struct kvm_vcpu*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct kvm_vcpu *vcpu)
{
	struct vcpu_vmx *vmx = FUNC5(vcpu);
	unsigned long exit_qualification;
	bool has_error_code = false;
	u32 error_code = 0;
	u16 tss_selector;
	int reason, type, idt_v;

	idt_v = (vmx->idt_vectoring_info & VECTORING_INFO_VALID_MASK);
	type = (vmx->idt_vectoring_info & VECTORING_INFO_TYPE_MASK);

	exit_qualification = FUNC7(EXIT_QUALIFICATION);

	reason = (u32)exit_qualification >> 30;
	if (reason == TASK_SWITCH_GATE && idt_v) {
		switch (type) {
		case INTR_TYPE_NMI_INTR:
			vcpu->arch.nmi_injected = false;
			if (FUNC0())
				FUNC8(GUEST_INTERRUPTIBILITY_INFO,
					      GUEST_INTR_STATE_NMI);
			break;
		case INTR_TYPE_EXT_INTR:
		case INTR_TYPE_SOFT_INTR:
			FUNC2(vcpu);
			break;
		case INTR_TYPE_HARD_EXCEPTION:
			if (vmx->idt_vectoring_info &
			    VECTORING_INFO_DELIVER_CODE_MASK) {
				has_error_code = true;
				error_code =
					FUNC6(IDT_VECTORING_ERROR_CODE);
			}
			/* fall through */
		case INTR_TYPE_SOFT_EXCEPTION:
			FUNC1(vcpu);
			break;
		default:
			break;
		}
	}
	tss_selector = exit_qualification;

	if (!idt_v || (type != INTR_TYPE_HARD_EXCEPTION &&
		       type != INTR_TYPE_EXT_INTR &&
		       type != INTR_TYPE_NMI_INTR))
		FUNC4(vcpu);

	if (!FUNC3(vcpu, tss_selector, reason, has_error_code,
			     error_code))
		return 0;

	/* clear all local breakpoint enable flags */
	FUNC9(GUEST_DR7, FUNC7(GUEST_DR7) & ~55);

	/*
	 * TODO: What about debug traps on tss switch?
	 *       Are we supposed to inject them and update dr6?
	 */

	return 1;
}