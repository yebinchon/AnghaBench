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
struct vcpu_svm {TYPE_2__* vmcb; int /*<<< orphan*/  vcpu; scalar_t__ next_rip; } ;
struct TYPE_3__ {scalar_t__ exit_info_2; scalar_t__ exit_info_1; scalar_t__ exit_code_hi; int /*<<< orphan*/  exit_code; } ;
struct TYPE_4__ {TYPE_1__ control; } ;

/* Variables and functions */
 int /*<<< orphan*/  SVM_EXIT_ERR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct vcpu_svm*) ; 
 int /*<<< orphan*/  FUNC2 (struct vcpu_svm*) ; 
 int /*<<< orphan*/  FUNC3 (struct vcpu_svm*) ; 
 int /*<<< orphan*/  FUNC4 (struct vcpu_svm*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct vcpu_svm *svm)
{
	FUNC5("VMrun\n");

	if (FUNC1(svm))
		return 1;

	svm->next_rip = FUNC0(&svm->vcpu) + 3;
	FUNC6(&svm->vcpu);

	if (!FUNC3(svm))
		return 1;

	if (!FUNC4(svm))
		goto failed;

	return 1;

failed:

	svm->vmcb->control.exit_code    = SVM_EXIT_ERR;
	svm->vmcb->control.exit_code_hi = 0;
	svm->vmcb->control.exit_info_1  = 0;
	svm->vmcb->control.exit_info_2  = 0;

	FUNC2(svm);

	return 1;
}