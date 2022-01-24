#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_12__ {void* event_exit_inst_len; } ;
struct TYPE_13__ {TYPE_4__ arch; } ;
struct TYPE_10__ {scalar_t__ vm86_active; } ;
struct vcpu_vmx {int idt_vectoring_info; TYPE_5__ vcpu; TYPE_2__ rmode; } ;
struct TYPE_11__ {unsigned long dr6; scalar_t__ halt_request; } ;
struct kvm_vcpu {int guest_debug; TYPE_3__ arch; struct kvm_run* run; } ;
struct TYPE_16__ {int exception; int error_code; } ;
struct TYPE_14__ {unsigned long dr6; unsigned long dr7; unsigned long pc; int exception; } ;
struct TYPE_15__ {TYPE_6__ arch; } ;
struct TYPE_9__ {int ndata; int* data; int /*<<< orphan*/  suberror; } ;
struct kvm_run {TYPE_8__ ex; int /*<<< orphan*/  exit_reason; TYPE_7__ debug; TYPE_1__ internal; } ;
typedef  enum emulation_result { ____Placeholder_emulation_result } emulation_result ;

/* Variables and functions */
#define  BP_VECTOR 129 
 int /*<<< orphan*/  FUNC0 () ; 
#define  DB_VECTOR 128 
 unsigned long DR6_FIXED_1 ; 
 int EMULATE_DONE ; 
 int /*<<< orphan*/  EMULTYPE_TRAP_UD ; 
 int /*<<< orphan*/  EXIT_QUALIFICATION ; 
 int /*<<< orphan*/  GUEST_CS_BASE ; 
 int /*<<< orphan*/  GUEST_DR7 ; 
 int INTR_INFO_DELIVER_CODE_MASK ; 
 int INTR_INFO_INTR_TYPE_MASK ; 
 int INTR_INFO_VECTOR_MASK ; 
 int INTR_TYPE_NMI_INTR ; 
 int /*<<< orphan*/  KVM_EXIT_DEBUG ; 
 int /*<<< orphan*/  KVM_EXIT_EXCEPTION ; 
 int /*<<< orphan*/  KVM_EXIT_INTERNAL_ERROR ; 
 int KVM_GUESTDBG_SINGLESTEP ; 
 int KVM_GUESTDBG_USE_HW_BP ; 
 int /*<<< orphan*/  KVM_INTERNAL_ERROR_SIMUL_EX ; 
 int const UD_VECTOR ; 
 int VECTORING_INFO_VALID_MASK ; 
 int /*<<< orphan*/  VM_EXIT_INSTRUCTION_LEN ; 
 int /*<<< orphan*/  VM_EXIT_INTR_ERROR_CODE ; 
 int /*<<< orphan*/  VM_EXIT_INTR_INFO ; 
 int FUNC1 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 scalar_t__ enable_ept ; 
 int FUNC2 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC3 (struct kvm_vcpu*,int,int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 int FUNC8 (struct kvm_vcpu*) ; 
 scalar_t__ FUNC9 (struct kvm_vcpu*) ; 
 int FUNC10 (struct kvm_vcpu*,unsigned long,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vcpu*,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm_vcpu*,int const) ; 
 unsigned long FUNC13 (struct kvm_vcpu*) ; 
 struct vcpu_vmx* FUNC14 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC15 (unsigned long,int) ; 
 void* FUNC16 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct kvm_vcpu*) ; 

__attribute__((used)) static int FUNC19(struct kvm_vcpu *vcpu)
{
	struct vcpu_vmx *vmx = FUNC14(vcpu);
	struct kvm_run *kvm_run = vcpu->run;
	u32 intr_info, ex_no, error_code;
	unsigned long cr2, rip, dr6;
	u32 vect_info;
	enum emulation_result er;

	vect_info = vmx->idt_vectoring_info;
	intr_info = FUNC16(VM_EXIT_INTR_INFO);

	if (FUNC5(intr_info))
		return FUNC2(vcpu);

	if ((vect_info & VECTORING_INFO_VALID_MASK) &&
	    !FUNC7(intr_info)) {
		vcpu->run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
		vcpu->run->internal.suberror = KVM_INTERNAL_ERROR_SIMUL_EX;
		vcpu->run->internal.ndata = 2;
		vcpu->run->internal.data[0] = vect_info;
		vcpu->run->internal.data[1] = intr_info;
		return 0;
	}

	if ((intr_info & INTR_INFO_INTR_TYPE_MASK) == INTR_TYPE_NMI_INTR)
		return 1;  /* already handled by vmx_vcpu_run() */

	if (FUNC6(intr_info)) {
		FUNC18(vcpu);
		return 1;
	}

	if (FUNC4(intr_info)) {
		er = FUNC1(vcpu, EMULTYPE_TRAP_UD);
		if (er != EMULATE_DONE)
			FUNC12(vcpu, UD_VECTOR);
		return 1;
	}

	error_code = 0;
	rip = FUNC13(vcpu);
	if (intr_info & INTR_INFO_DELIVER_CODE_MASK)
		error_code = FUNC16(VM_EXIT_INTR_ERROR_CODE);
	if (FUNC7(intr_info)) {
		/* EPT won't cause page fault directly */
		if (enable_ept)
			FUNC0();
		cr2 = FUNC17(EXIT_QUALIFICATION);
		FUNC15(cr2, error_code);

		if (FUNC9(vcpu))
			FUNC11(vcpu, cr2);
		return FUNC10(vcpu, cr2, error_code, NULL, 0);
	}

	if (vmx->rmode.vm86_active &&
	    FUNC3(vcpu, intr_info & INTR_INFO_VECTOR_MASK,
								error_code)) {
		if (vcpu->arch.halt_request) {
			vcpu->arch.halt_request = 0;
			return FUNC8(vcpu);
		}
		return 1;
	}

	ex_no = intr_info & INTR_INFO_VECTOR_MASK;
	switch (ex_no) {
	case DB_VECTOR:
		dr6 = FUNC17(EXIT_QUALIFICATION);
		if (!(vcpu->guest_debug &
		      (KVM_GUESTDBG_SINGLESTEP | KVM_GUESTDBG_USE_HW_BP))) {
			vcpu->arch.dr6 = dr6 | DR6_FIXED_1;
			FUNC12(vcpu, DB_VECTOR);
			return 1;
		}
		kvm_run->debug.arch.dr6 = dr6 | DR6_FIXED_1;
		kvm_run->debug.arch.dr7 = FUNC17(GUEST_DR7);
		/* fall through */
	case BP_VECTOR:
		/*
		 * Update instruction length as we may reinject #BP from
		 * user space while in guest debugging mode. Reading it for
		 * #DB as well causes no harm, it is not used in that case.
		 */
		vmx->vcpu.arch.event_exit_inst_len =
			FUNC16(VM_EXIT_INSTRUCTION_LEN);
		kvm_run->exit_reason = KVM_EXIT_DEBUG;
		kvm_run->debug.arch.pc = FUNC17(GUEST_CS_BASE) + rip;
		kvm_run->debug.arch.exception = ex_no;
		break;
	default:
		kvm_run->exit_reason = KVM_EXIT_EXCEPTION;
		kvm_run->ex.exception = ex_no;
		kvm_run->ex.error_code = error_code;
		break;
	}
	return 0;
}