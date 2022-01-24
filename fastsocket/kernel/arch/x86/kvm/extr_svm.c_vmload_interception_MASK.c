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
struct vmcb {int dummy; } ;
struct vcpu_svm {TYPE_2__* vmcb; int /*<<< orphan*/  vcpu; scalar_t__ next_rip; } ;
struct TYPE_3__ {int /*<<< orphan*/  rax; } ;
struct TYPE_4__ {TYPE_1__ save; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_USER0 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct vcpu_svm*) ; 
 struct vmcb* FUNC2 (struct vcpu_svm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vmcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vmcb*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct vcpu_svm *svm)
{
	struct vmcb *nested_vmcb;

	if (FUNC1(svm))
		return 1;

	svm->next_rip = FUNC0(&svm->vcpu) + 3;
	FUNC5(&svm->vcpu);

	nested_vmcb = FUNC2(svm, svm->vmcb->save.rax, KM_USER0);
	if (!nested_vmcb)
		return 1;

	FUNC4(nested_vmcb, svm->vmcb);
	FUNC3(nested_vmcb, KM_USER0);

	return 1;
}