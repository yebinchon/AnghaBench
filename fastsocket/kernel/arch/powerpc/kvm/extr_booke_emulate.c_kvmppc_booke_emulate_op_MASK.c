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
struct TYPE_2__ {unsigned int* gpr; unsigned int msr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_run {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMULATED_MFMSR_EXITS ; 
 int /*<<< orphan*/  EMULATED_MTMSR_EXITS ; 
 int /*<<< orphan*/  EMULATED_RFI_EXITS ; 
 int /*<<< orphan*/  EMULATED_WRTEE_EXITS ; 
 int EMULATE_DONE ; 
 int EMULATE_FAIL ; 
 unsigned int MSR_EE ; 
#define  OP_19_XOP_RFI 132 
#define  OP_31_XOP_MFMSR 131 
#define  OP_31_XOP_MTMSR 130 
#define  OP_31_XOP_WRTEE 129 
#define  OP_31_XOP_WRTEEI 128 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_vcpu*,unsigned int) ; 

int FUNC7(struct kvm_run *run, struct kvm_vcpu *vcpu,
                            unsigned int inst, int *advance)
{
	int emulated = EMULATE_DONE;
	int rs;
	int rt;

	switch (FUNC0(inst)) {
	case 19:
		switch (FUNC3(inst)) {
		case OP_19_XOP_RFI:
			FUNC4(vcpu);
			FUNC5(vcpu, EMULATED_RFI_EXITS);
			*advance = 0;
			break;

		default:
			emulated = EMULATE_FAIL;
			break;
		}
		break;

	case 31:
		switch (FUNC3(inst)) {

		case OP_31_XOP_MFMSR:
			rt = FUNC2(inst);
			vcpu->arch.gpr[rt] = vcpu->arch.msr;
			FUNC5(vcpu, EMULATED_MFMSR_EXITS);
			break;

		case OP_31_XOP_MTMSR:
			rs = FUNC1(inst);
			FUNC5(vcpu, EMULATED_MTMSR_EXITS);
			FUNC6(vcpu, vcpu->arch.gpr[rs]);
			break;

		case OP_31_XOP_WRTEE:
			rs = FUNC1(inst);
			vcpu->arch.msr = (vcpu->arch.msr & ~MSR_EE)
							 | (vcpu->arch.gpr[rs] & MSR_EE);
			FUNC5(vcpu, EMULATED_WRTEE_EXITS);
			break;

		case OP_31_XOP_WRTEEI:
			vcpu->arch.msr = (vcpu->arch.msr & ~MSR_EE)
							 | (inst & MSR_EE);
			FUNC5(vcpu, EMULATED_WRTEE_EXITS);
			break;

		default:
			emulated = EMULATE_FAIL;
		}

		break;

	default:
		emulated = EMULATE_FAIL;
	}

	return emulated;
}