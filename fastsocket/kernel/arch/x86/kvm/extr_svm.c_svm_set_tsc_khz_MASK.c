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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct vcpu_svm {int tsc_ratio; } ;
struct TYPE_2__ {scalar_t__ virtual_tsc_khz; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  SVM_FEATURE_TSC_RATE ; 
 int TSC_RATIO_DEFAULT ; 
 int TSC_RATIO_RSVD ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct vcpu_svm* FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  tsc_khz ; 

__attribute__((used)) static void FUNC4(struct kvm_vcpu *vcpu, u32 user_tsc_khz)
{
	struct vcpu_svm *svm = FUNC3(vcpu);
	u64 ratio;
	u64 khz;

	/* TSC scaling supported? */
	if (!FUNC2(SVM_FEATURE_TSC_RATE))
		return;

	/* TSC-Scaling disabled or guest TSC same frequency as host TSC? */
	if (user_tsc_khz == 0) {
		vcpu->arch.virtual_tsc_khz = 0;
		svm->tsc_ratio = TSC_RATIO_DEFAULT;
		return;
	}

	khz = user_tsc_khz;

	/* TSC scaling required  - calculate ratio */
	ratio = khz << 32;
	FUNC1(ratio, tsc_khz);

	if (ratio == 0 || ratio & TSC_RATIO_RSVD) {
		FUNC0(1, "Invalid TSC ratio - virtual-tsc-khz=%u\n",
				user_tsc_khz);
		return;
	}
	vcpu->arch.virtual_tsc_khz = user_tsc_khz;
	svm->tsc_ratio             = ratio;
}