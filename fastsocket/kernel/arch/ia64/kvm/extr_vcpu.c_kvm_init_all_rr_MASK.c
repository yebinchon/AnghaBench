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
struct TYPE_2__ {void* metaphysical_saved_rr0; void* metaphysical_saved_rr4; int mode_flags; void* metaphysical_rr0; void* metaphysical_rr4; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int GUEST_PHY_EMUL ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 size_t VRN0 ; 
 size_t VRN1 ; 
 size_t VRN2 ; 
 size_t VRN3 ; 
 size_t VRN4 ; 
 size_t VRN5 ; 
 size_t VRN7 ; 
 size_t VRN_SHIFT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (size_t,void*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm_vcpu*,char*) ; 
 int /*<<< orphan*/ * vrr ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct kvm_vcpu *vcpu)
{
	unsigned long psr;

	FUNC6(psr);

	/* WARNING: not allow co-exist of both virtual mode and physical
	 * mode in same region
	 */

	vcpu->arch.metaphysical_saved_rr0 = FUNC8(FUNC0(vcpu, vrr[VRN0]));
	vcpu->arch.metaphysical_saved_rr4 = FUNC8(FUNC0(vcpu, vrr[VRN4]));

	if (FUNC5(vcpu)) {
		if (vcpu->arch.mode_flags & GUEST_PHY_EMUL)
			FUNC7(vcpu, "Machine Status conflicts!\n");

		FUNC3((VRN0 << VRN_SHIFT), vcpu->arch.metaphysical_rr0);
		FUNC1();
		FUNC3((VRN4 << VRN_SHIFT), vcpu->arch.metaphysical_rr4);
		FUNC1();
	} else {
		FUNC3((VRN0 << VRN_SHIFT),
				vcpu->arch.metaphysical_saved_rr0);
		FUNC1();
		FUNC3((VRN4 << VRN_SHIFT),
				vcpu->arch.metaphysical_saved_rr4);
		FUNC1();
	}
	FUNC3((VRN1 << VRN_SHIFT),
			FUNC8(FUNC0(vcpu, vrr[VRN1])));
	FUNC1();
	FUNC3((VRN2 << VRN_SHIFT),
			FUNC8(FUNC0(vcpu, vrr[VRN2])));
	FUNC1();
	FUNC3((VRN3 << VRN_SHIFT),
			FUNC8(FUNC0(vcpu, vrr[VRN3])));
	FUNC1();
	FUNC3((VRN5 << VRN_SHIFT),
			FUNC8(FUNC0(vcpu, vrr[VRN5])));
	FUNC1();
	FUNC3((VRN7 << VRN_SHIFT),
			FUNC8(FUNC0(vcpu, vrr[VRN7])));
	FUNC1();
	FUNC4();
	FUNC2(psr);
}