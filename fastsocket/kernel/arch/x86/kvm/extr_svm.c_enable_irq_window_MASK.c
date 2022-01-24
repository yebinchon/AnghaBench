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
struct vcpu_svm {int dummy; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vcpu_svm*) ; 
 int /*<<< orphan*/  FUNC1 (struct vcpu_svm*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct vcpu_svm*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vcpu_svm*) ; 
 struct vcpu_svm* FUNC5 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC6(struct kvm_vcpu *vcpu)
{
	struct vcpu_svm *svm = FUNC5(vcpu);
	FUNC2("Trying to open IRQ window\n");

	FUNC1(svm);

	/* In case GIF=0 we can't rely on the CPU to tell us when
	 * GIF becomes 1, because that's a separate STGI/VMRUN intercept.
	 * The next time we get that intercept, this function will be
	 * called again though and we'll get the vintr intercept. */
	if (FUNC0(svm)) {
		FUNC4(svm);
		FUNC3(svm, 0x0);
	}
}