#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct kvm_vcpu {int dummy; } ;
struct kvm_run {int dummy; } ;

/* Variables and functions */
 int EMULATE_DONE ; 
 int EMULATE_FAIL ; 
#define  XOP_TLBIVAX 131 
#define  XOP_TLBRE 130 
#define  XOP_TLBSX 129 
#define  XOP_TLBWE 128 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int FUNC4 (struct kvm_run*,struct kvm_vcpu*,unsigned int,int*) ; 
 int FUNC5 (struct kvm_vcpu*,int,int) ; 
 int FUNC6 (struct kvm_vcpu*) ; 
 int FUNC7 (struct kvm_vcpu*,int) ; 
 int FUNC8 (struct kvm_vcpu*) ; 

int FUNC9(struct kvm_run *run, struct kvm_vcpu *vcpu,
                           unsigned int inst, int *advance)
{
	int emulated = EMULATE_DONE;
	int ra;
	int rb;

	switch (FUNC0(inst)) {
	case 31:
		switch (FUNC3(inst)) {

		case XOP_TLBRE:
			emulated = FUNC6(vcpu);
			break;

		case XOP_TLBWE:
			emulated = FUNC8(vcpu);
			break;

		case XOP_TLBSX:
			rb = FUNC2(inst);
			emulated = FUNC7(vcpu,rb);
			break;

		case XOP_TLBIVAX:
			ra = FUNC1(inst);
			rb = FUNC2(inst);
			emulated = FUNC5(vcpu, ra, rb);
			break;

		default:
			emulated = EMULATE_FAIL;
		}

		break;

	default:
		emulated = EMULATE_FAIL;
	}

	if (emulated == EMULATE_FAIL)
		emulated = FUNC4(run, vcpu, inst, advance);

	return emulated;
}