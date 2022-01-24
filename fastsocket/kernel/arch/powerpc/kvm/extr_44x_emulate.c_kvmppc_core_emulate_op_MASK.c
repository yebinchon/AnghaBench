#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int io_gpr; int dcr_needed; int /*<<< orphan*/ * gpr; int /*<<< orphan*/  cpr0_cfgaddr; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int dcrn; int is_write; int /*<<< orphan*/  data; } ;
struct kvm_run {TYPE_1__ dcr; } ;

/* Variables and functions */
#define  DCRN_CPR0_CONFIG_ADDR 134 
#define  DCRN_CPR0_CONFIG_DATA 133 
 int /*<<< orphan*/  DCR_EXITS ; 
 int EMULATE_DONE ; 
 int EMULATE_DO_DCR ; 
 int EMULATE_FAIL ; 
#define  XOP_ICCCI 132 
#define  XOP_MFDCR 131 
#define  XOP_MTDCR 130 
#define  XOP_TLBSX 129 
#define  XOP_TLBWE 128 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (unsigned int) ; 
 int FUNC5 (unsigned int) ; 
 int FUNC6 (unsigned int) ; 
 int FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 int FUNC9 (struct kvm_vcpu*,int,int,int,int) ; 
 int FUNC10 (struct kvm_vcpu*,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct kvm_run*,struct kvm_vcpu*,unsigned int,int*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int const) ; 
 int /*<<< orphan*/  FUNC16 (int const,int /*<<< orphan*/ ) ; 

int FUNC17(struct kvm_run *run, struct kvm_vcpu *vcpu,
                           unsigned int inst, int *advance)
{
	int emulated = EMULATE_DONE;
	int dcrn;
	int ra;
	int rb;
	int rc;
	int rs;
	int rt;
	int ws;

	switch (FUNC1(inst)) {
	case 31:
		switch (FUNC8(inst)) {

		case XOP_MFDCR:
			dcrn = FUNC0(inst);
			rt = FUNC6(inst);

			/* The guest may access CPR0 registers to determine the timebase
			 * frequency, and it must know the real host frequency because it
			 * can directly access the timebase registers.
			 *
			 * It would be possible to emulate those accesses in userspace,
			 * but userspace can really only figure out the end frequency.
			 * We could decompose that into the factors that compute it, but
			 * that's tricky math, and it's easier to just report the real
			 * CPR0 values.
			 */
			switch (dcrn) {
			case DCRN_CPR0_CONFIG_ADDR:
				vcpu->arch.gpr[rt] = vcpu->arch.cpr0_cfgaddr;
				break;
			case DCRN_CPR0_CONFIG_DATA:
				FUNC13();
				FUNC16(DCRN_CPR0_CONFIG_ADDR,
					  vcpu->arch.cpr0_cfgaddr);
				vcpu->arch.gpr[rt] = FUNC15(DCRN_CPR0_CONFIG_DATA);
				FUNC14();
				break;
			default:
				run->dcr.dcrn = dcrn;
				run->dcr.data =  0;
				run->dcr.is_write = 0;
				vcpu->arch.io_gpr = rt;
				vcpu->arch.dcr_needed = 1;
				FUNC11(vcpu, DCR_EXITS);
				emulated = EMULATE_DO_DCR;
			}

			break;

		case XOP_MTDCR:
			dcrn = FUNC0(inst);
			rs = FUNC5(inst);

			/* emulate some access in kernel */
			switch (dcrn) {
			case DCRN_CPR0_CONFIG_ADDR:
				vcpu->arch.cpr0_cfgaddr = vcpu->arch.gpr[rs];
				break;
			default:
				run->dcr.dcrn = dcrn;
				run->dcr.data = vcpu->arch.gpr[rs];
				run->dcr.is_write = 1;
				vcpu->arch.dcr_needed = 1;
				FUNC11(vcpu, DCR_EXITS);
				emulated = EMULATE_DO_DCR;
			}

			break;

		case XOP_TLBWE:
			ra = FUNC2(inst);
			rs = FUNC5(inst);
			ws = FUNC7(inst);
			emulated = FUNC10(vcpu, ra, rs, ws);
			break;

		case XOP_TLBSX:
			rt = FUNC6(inst);
			ra = FUNC2(inst);
			rb = FUNC3(inst);
			rc = FUNC4(inst);
			emulated = FUNC9(vcpu, rt, ra, rb, rc);
			break;

		case XOP_ICCCI:
			break;

		default:
			emulated = EMULATE_FAIL;
		}

		break;

	default:
		emulated = EMULATE_FAIL;
	}

	if (emulated == EMULATE_FAIL)
		emulated = FUNC12(run, vcpu, inst, advance);

	return emulated;
}