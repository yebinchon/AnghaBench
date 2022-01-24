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
struct multicall_space {int /*<<< orphan*/  mc; struct mmuext_op* args; } ;
struct TYPE_2__ {unsigned long mfn; } ;
struct mmuext_op {TYPE_1__ arg1; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOMID_SELF ; 
 int /*<<< orphan*/  MMUEXT_NEW_BASEPTR ; 
 int /*<<< orphan*/  MMUEXT_NEW_USER_BASEPTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mmuext_op*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct multicall_space FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  set_current_cr3 ; 
 int /*<<< orphan*/  xen_cr3 ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void FUNC7(bool kernel, unsigned long cr3)
{
	struct mmuext_op *op;
	struct multicall_space mcs;
	unsigned long mfn;

	if (cr3)
		mfn = FUNC5(FUNC1(cr3));
	else
		mfn = 0;

	FUNC2(mfn == 0 && kernel);

	mcs = FUNC3(sizeof(*op));

	op = mcs.args;
	op->cmd = kernel ? MMUEXT_NEW_BASEPTR : MMUEXT_NEW_USER_BASEPTR;
	op->arg1.mfn = mfn;

	FUNC0(mcs.mc, op, 1, NULL, DOMID_SELF);

	if (kernel) {
		FUNC4(xen_cr3, cr3);

		/* Update xen_current_cr3 once the batch has actually
		   been submitted. */
		FUNC6(set_current_cr3, (void *)cr3);
	}
}