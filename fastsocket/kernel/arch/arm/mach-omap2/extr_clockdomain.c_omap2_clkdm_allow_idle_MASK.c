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
struct clockdomain {int flags; int /*<<< orphan*/  usecount; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int CLKDM_CAN_ENABLE_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct clockdomain*) ; 
 int /*<<< orphan*/  FUNC1 (struct clockdomain*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct clockdomain*) ; 

void FUNC5(struct clockdomain *clkdm)
{
	if (!clkdm)
		return;

	if (!(clkdm->flags & CLKDM_CAN_ENABLE_AUTO)) {
		FUNC3("clock: automatic idle transitions cannot be enabled "
			 "on clockdomain %s\n", clkdm->name);
		return;
	}

	FUNC3("clockdomain: enabling automatic idle transitions for %s\n",
		 clkdm->name);

	if (FUNC2(&clkdm->usecount) > 0)
		FUNC0(clkdm);

	FUNC1(clkdm, 1);

	FUNC4(clkdm);
}