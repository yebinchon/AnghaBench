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
struct vcpu_svm {int /*<<< orphan*/  vcpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  X86_FEATURE_NRIPS ; 
 int FUNC0 (struct vcpu_svm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct vcpu_svm *svm)
{
	int err;

	if (!FUNC4(X86_FEATURE_NRIPS))
		return FUNC0(svm);

	err = FUNC2(&svm->vcpu);
	if (err)
		FUNC1(&svm->vcpu, 0);
	else
		FUNC3(&svm->vcpu);

	return 1;
}