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
typedef  int u16 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_segment {int type; } ;
struct desc_struct {int dpl; int type; int /*<<< orphan*/  p; } ;
struct TYPE_2__ {int (* get_cpl ) (struct kvm_vcpu*) ;int (* get_rflags ) (struct kvm_vcpu*) ;int /*<<< orphan*/  (* set_cr0 ) (struct kvm_vcpu*,int) ;int /*<<< orphan*/  (* set_rflags ) (struct kvm_vcpu*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GP_VECTOR ; 
 int TASK_SWITCH_CALL ; 
 int TASK_SWITCH_GATE ; 
 int TASK_SWITCH_IRET ; 
 int TASK_SWITCH_JMP ; 
 int /*<<< orphan*/  TS_VECTOR ; 
 int /*<<< orphan*/  VCPU_SREG_TR ; 
 int X86_CR0_TS ; 
 int X86_EFLAGS_NT ; 
 int FUNC0 (struct desc_struct*) ; 
 int FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct kvm_vcpu*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,struct kvm_segment*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct kvm_vcpu*,int,int,int,struct desc_struct*) ; 
 int FUNC8 (struct kvm_vcpu*,int,int,int,struct desc_struct*,int,int) ; 
 TYPE_1__* kvm_x86_ops ; 
 scalar_t__ FUNC9 (struct kvm_vcpu*,int,struct desc_struct*) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_vcpu*,int,struct desc_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct desc_struct*,int,struct kvm_segment*) ; 
 int FUNC12 (struct kvm_vcpu*) ; 
 int FUNC13 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC14 (struct kvm_vcpu*,int) ; 
 int FUNC15 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC16 (struct kvm_vcpu*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct kvm_vcpu*,int) ; 

int FUNC18(struct kvm_vcpu *vcpu, u16 tss_selector, int reason,
		    bool has_error_code, u32 error_code)
{
	struct kvm_segment tr_seg;
	struct desc_struct cseg_desc;
	struct desc_struct nseg_desc;
	int ret = 0;
	u32 old_tss_base = FUNC1(vcpu, VCPU_SREG_TR);
	u16 old_tss_sel = FUNC2(vcpu, VCPU_SREG_TR);

	old_tss_base = FUNC3(vcpu, old_tss_base, NULL);

	/* FIXME: Handle errors. Failure to read either TSS or their
	 * descriptors should generate a pagefault.
	 */
	if (FUNC9(vcpu, tss_selector, &nseg_desc))
		goto out;

	if (FUNC9(vcpu, old_tss_sel, &cseg_desc))
		goto out;

	if (reason != TASK_SWITCH_IRET) {
		int cpl;

		cpl = kvm_x86_ops->get_cpl(vcpu);
		if ((tss_selector & 3) > nseg_desc.dpl || cpl > nseg_desc.dpl) {
			FUNC4(vcpu, GP_VECTOR, 0);
			return 1;
		}
	}

	if (!nseg_desc.p || FUNC0(&nseg_desc) < 0x67) {
		FUNC4(vcpu, TS_VECTOR, tss_selector & 0xfffc);
		return 1;
	}

	if (reason == TASK_SWITCH_IRET || reason == TASK_SWITCH_JMP) {
		cseg_desc.type &= ~(1 << 1); //clear the B flag
		FUNC10(vcpu, old_tss_sel, &cseg_desc);
	}

	if (reason == TASK_SWITCH_IRET) {
		u32 eflags = kvm_x86_ops->get_rflags(vcpu);
		kvm_x86_ops->set_rflags(vcpu, eflags & ~X86_EFLAGS_NT);
	}

	/* set back link to prev task only if NT bit is set in eflags
	   note that old_tss_sel is not used afetr this point */
	if (reason != TASK_SWITCH_CALL && reason != TASK_SWITCH_GATE)
		old_tss_sel = 0xffff;

	/* set back link to prev task only if NT bit is set in eflags
	   note that old_tss_sel is not used afetr this point */
	if (reason != TASK_SWITCH_CALL && reason != TASK_SWITCH_GATE)
		old_tss_sel = 0xffff;

	if (nseg_desc.type & 8)
		ret = FUNC8(vcpu, tss_selector, old_tss_sel,
					 old_tss_base, &nseg_desc,
					 has_error_code, error_code);
	else
		ret = FUNC7(vcpu, tss_selector, old_tss_sel,
					 old_tss_base, &nseg_desc);

	if (reason == TASK_SWITCH_CALL || reason == TASK_SWITCH_GATE) {
		u32 eflags = kvm_x86_ops->get_rflags(vcpu);
		kvm_x86_ops->set_rflags(vcpu, eflags | X86_EFLAGS_NT);
	}

	if (reason != TASK_SWITCH_IRET) {
		nseg_desc.type |= (1 << 1);
		FUNC10(vcpu, tss_selector,
					      &nseg_desc);
	}

	kvm_x86_ops->set_cr0(vcpu, FUNC5(vcpu) | X86_CR0_TS);
	FUNC11(&nseg_desc, tss_selector, &tr_seg);
	tr_seg.type = 11;
	FUNC6(vcpu, &tr_seg, VCPU_SREG_TR);
out:
	return ret;
}