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
struct vcpu_svm {int /*<<< orphan*/  vcpu; scalar_t__ next_rip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vcpu_svm*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct vcpu_svm*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct vcpu_svm *svm)
{
	if (FUNC2(svm))
		return 1;

	svm->next_rip = FUNC1(&svm->vcpu) + 3;
	FUNC3(&svm->vcpu);

	FUNC0(svm);

	return 1;
}