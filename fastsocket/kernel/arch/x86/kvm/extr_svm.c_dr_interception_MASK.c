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
struct vcpu_svm {int /*<<< orphan*/  vcpu; TYPE_2__* vmcb; } ;
struct TYPE_3__ {int exit_info_1; int exit_code; } ;
struct TYPE_4__ {TYPE_1__ control; } ;

/* Variables and functions */
 int SVM_EXITINFO_REG_MASK ; 
 int SVM_EXIT_READ_DR0 ; 
 int /*<<< orphan*/  SVM_FEATURE_DECODE_ASSIST ; 
 int FUNC0 (struct vcpu_svm*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,unsigned long,int*) ; 

__attribute__((used)) static int FUNC7(struct vcpu_svm *svm)
{
	int reg, dr;
	unsigned long val;
	int err = 0;

	if (!FUNC5(SVM_FEATURE_DECODE_ASSIST))
		return FUNC0(svm);

	reg = svm->vmcb->control.exit_info_1 & SVM_EXITINFO_REG_MASK;
	dr = svm->vmcb->control.exit_code - SVM_EXIT_READ_DR0;

	if (dr >= 16) { /* mov to DRn */
		val = FUNC1(&svm->vcpu, reg);
		FUNC6(&svm->vcpu, dr - 16, val, &err);
	} else {
		val = FUNC4(&svm->vcpu, dr);
		FUNC2(&svm->vcpu, reg, val);
	}
	FUNC3(&svm->vcpu);

	return 1;
}