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
struct TYPE_2__ {int /*<<< orphan*/  requests; } ;
struct vcpu_svm {TYPE_1__ vcpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  KVM_REQ_TRIPLE_FAULT ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct vcpu_svm *svm)
{
	if (FUNC0()) {
		/*
		 * Erratum 383 triggered. Guest state is corrupt so kill the
		 * guest.
		 */
		FUNC1("KVM: Guest triggered AMD Erratum 383\n");

		FUNC2(KVM_REQ_TRIPLE_FAULT, &svm->vcpu.requests);

		return;
	}

	/*
	 * On an #MC intercept the MCE handler is not called automatically in
	 * the host. So do it by hand here.
	 */
	asm volatile (
		"int $0x12\n");
	/* not sure if we ever come back to this point */

	return;
}