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
struct TYPE_2__ {int /*<<< orphan*/  mfn; } ;
struct mmuext_op {unsigned int cmd; TYPE_1__ arg1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DOMID_SELF ; 
 scalar_t__ FUNC1 (struct mmuext_op*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

__attribute__((used)) static void FUNC3(unsigned cmd, unsigned long pfn)
{
	struct mmuext_op op;
	op.cmd = cmd;
	op.arg1.mfn = FUNC2(pfn);
	if (FUNC1(&op, 1, NULL, DOMID_SELF))
		FUNC0();
}