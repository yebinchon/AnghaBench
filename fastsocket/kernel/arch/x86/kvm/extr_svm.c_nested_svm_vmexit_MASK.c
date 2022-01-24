#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct vmcb_control_area {int exit_int_info; int event_inj; int /*<<< orphan*/  int_ctl; scalar_t__ event_inj_err; scalar_t__ tlb_ctl; scalar_t__ exit_int_info_err; int /*<<< orphan*/  exit_info_2; int /*<<< orphan*/  exit_info_1; int /*<<< orphan*/  exit_code_hi; int /*<<< orphan*/  exit_code; int /*<<< orphan*/  int_state; int /*<<< orphan*/  int_vector; } ;
struct TYPE_17__ {int cr0; scalar_t__ cpl; scalar_t__ dr7; int /*<<< orphan*/  rip; int /*<<< orphan*/  rsp; int /*<<< orphan*/  rax; int /*<<< orphan*/  cr3; int /*<<< orphan*/  cr4; int /*<<< orphan*/  efer; int /*<<< orphan*/  rflags; int /*<<< orphan*/  idtr; int /*<<< orphan*/  gdtr; int /*<<< orphan*/  ds; int /*<<< orphan*/  ss; int /*<<< orphan*/  cs; int /*<<< orphan*/  es; int /*<<< orphan*/  dr6; int /*<<< orphan*/  cr2; } ;
struct vmcb {struct vmcb_control_area control; TYPE_4__ save; } ;
struct TYPE_14__ {int pending; } ;
struct TYPE_15__ {int hflags; int /*<<< orphan*/  cr3; TYPE_1__ exception; } ;
struct TYPE_18__ {TYPE_2__ arch; } ;
struct TYPE_16__ {int /*<<< orphan*/  vmcb; struct vmcb* hsave; } ;
struct vcpu_svm {TYPE_5__ vcpu; struct vmcb* vmcb; TYPE_3__ nested; } ;

/* Variables and functions */
 int HF_VINTR_MASK ; 
 int /*<<< orphan*/  KM_USER0 ; 
 int SVM_EVTINJ_VALID ; 
 int /*<<< orphan*/  VCPU_REGS_RAX ; 
 int /*<<< orphan*/  VCPU_REGS_RIP ; 
 int /*<<< orphan*/  VCPU_REGS_RSP ; 
 int /*<<< orphan*/  VMCB_CR ; 
 int /*<<< orphan*/  V_INTR_MASKING_MASK ; 
 int X86_CR0_PE ; 
 int /*<<< orphan*/  FUNC0 (struct vmcb*,struct vmcb*) ; 
 int /*<<< orphan*/  FUNC1 (struct vcpu_svm*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct vmcb*) ; 
 int /*<<< orphan*/  FUNC9 (struct vmcb*,int /*<<< orphan*/ ) ; 
 struct vmcb* FUNC10 (struct vcpu_svm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct vmcb*,int /*<<< orphan*/ ) ; 
 scalar_t__ npt_enabled ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct vcpu_svm *svm)
{
	struct vmcb *nested_vmcb;
	struct vmcb *hsave = svm->nested.hsave;
	struct vmcb *vmcb = svm->vmcb;

	nested_vmcb = FUNC10(svm, svm->nested.vmcb, KM_USER0);
	if (!nested_vmcb)
		return 1;

	/* Give the current vmcb to the guest */
	FUNC1(svm);

	nested_vmcb->save.es     = vmcb->save.es;
	nested_vmcb->save.cs     = vmcb->save.cs;
	nested_vmcb->save.ss     = vmcb->save.ss;
	nested_vmcb->save.ds     = vmcb->save.ds;
	nested_vmcb->save.gdtr   = vmcb->save.gdtr;
	nested_vmcb->save.idtr   = vmcb->save.idtr;
	if (npt_enabled)
		nested_vmcb->save.cr3    = vmcb->save.cr3;
	nested_vmcb->save.cr2    = vmcb->save.cr2;
	nested_vmcb->save.rflags = vmcb->save.rflags;
	nested_vmcb->save.rip    = vmcb->save.rip;
	nested_vmcb->save.rsp    = vmcb->save.rsp;
	nested_vmcb->save.rax    = vmcb->save.rax;
	nested_vmcb->save.dr7    = vmcb->save.dr7;
	nested_vmcb->save.dr6    = vmcb->save.dr6;
	nested_vmcb->save.cpl    = vmcb->save.cpl;

	nested_vmcb->control.int_ctl           = vmcb->control.int_ctl;
	nested_vmcb->control.int_vector        = vmcb->control.int_vector;
	nested_vmcb->control.int_state         = vmcb->control.int_state;
	nested_vmcb->control.exit_code         = vmcb->control.exit_code;
	nested_vmcb->control.exit_code_hi      = vmcb->control.exit_code_hi;
	nested_vmcb->control.exit_info_1       = vmcb->control.exit_info_1;
	nested_vmcb->control.exit_info_2       = vmcb->control.exit_info_2;
	nested_vmcb->control.exit_int_info     = vmcb->control.exit_int_info;
	nested_vmcb->control.exit_int_info_err = vmcb->control.exit_int_info_err;

	/*
	 * If we emulate a VMRUN/#VMEXIT in the same host #vmexit cycle we have
	 * to make sure that we do not lose injected events. So check event_inj
	 * here and copy it to exit_int_info if it is valid.
	 * Exit_int_info and event_inj can't be both valid because the case
	 * below only happens on a VMRUN instruction intercept which has
	 * no valid exit_int_info set.
	 */
	if (vmcb->control.event_inj & SVM_EVTINJ_VALID) {
		struct vmcb_control_area *nc = &nested_vmcb->control;

		nc->exit_int_info     = vmcb->control.event_inj;
		nc->exit_int_info_err = vmcb->control.event_inj_err;
	}

	nested_vmcb->control.tlb_ctl           = 0;
	nested_vmcb->control.event_inj         = 0;
	nested_vmcb->control.event_inj_err     = 0;

	/* We always set V_INTR_MASKING and remember the old value in hflags */
	if (!(svm->vcpu.arch.hflags & HF_VINTR_MASK))
		nested_vmcb->control.int_ctl &= ~V_INTR_MASKING_MASK;

	/* Restore the original control entries */
	FUNC0(vmcb, hsave);

	/* Kill any pending exceptions */
	if (svm->vcpu.arch.exception.pending == true)
		FUNC12("WARNING: Pending Exception\n");

	FUNC2(&svm->vcpu);
	FUNC3(&svm->vcpu);

	/* Restore selected save entries */
	svm->vmcb->save.es = hsave->save.es;
	svm->vmcb->save.cs = hsave->save.cs;
	svm->vmcb->save.ss = hsave->save.ss;
	svm->vmcb->save.ds = hsave->save.ds;
	svm->vmcb->save.gdtr = hsave->save.gdtr;
	svm->vmcb->save.idtr = hsave->save.idtr;
	svm->vmcb->save.rflags = hsave->save.rflags;
	FUNC15(&svm->vcpu, hsave->save.efer);
	FUNC13(&svm->vcpu, hsave->save.cr0 | X86_CR0_PE);
	FUNC14(&svm->vcpu, hsave->save.cr4);
	if (npt_enabled) {
		svm->vmcb->save.cr3 = hsave->save.cr3;
		svm->vcpu.arch.cr3 = hsave->save.cr3;
	} else {
		(void)FUNC7(&svm->vcpu, hsave->save.cr3);
	}
	FUNC9(svm->vmcb, VMCB_CR);
	FUNC6(&svm->vcpu, VCPU_REGS_RAX, hsave->save.rax);
	FUNC6(&svm->vcpu, VCPU_REGS_RSP, hsave->save.rsp);
	FUNC6(&svm->vcpu, VCPU_REGS_RIP, hsave->save.rip);
	svm->vmcb->save.dr7 = 0;
	svm->vmcb->save.cpl = 0;
	svm->vmcb->control.exit_int_info = 0;

	/* Exit nested SVM mode */
	svm->nested.vmcb = 0;

	FUNC8(svm->vmcb);

	FUNC11(nested_vmcb, KM_USER0);

	FUNC5(&svm->vcpu);
	FUNC4(&svm->vcpu);

	return 0;
}