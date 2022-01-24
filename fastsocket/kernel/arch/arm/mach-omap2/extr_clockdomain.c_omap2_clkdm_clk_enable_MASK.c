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
struct TYPE_2__ {int /*<<< orphan*/  ptr; } ;
struct clockdomain {TYPE_1__ pwrdm; int /*<<< orphan*/  name; int /*<<< orphan*/  usecount; } ;
struct clk {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int OMAP24XX_CLKSTCTRL_ENABLE_AUTO ; 
 int OMAP34XX_CLKSTCTRL_ENABLE_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct clockdomain*) ; 
 int /*<<< orphan*/  FUNC1 (struct clockdomain*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (struct clockdomain*) ; 
 int /*<<< orphan*/  FUNC6 (struct clockdomain*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct clockdomain*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct clockdomain *clkdm, struct clk *clk)
{
	int v;

	/*
	 * XXX Rewrite this code to maintain a list of enabled
	 * downstream clocks for debugging purposes?
	 */

	if (!clkdm || !clk)
		return -EINVAL;

	if (FUNC2(&clkdm->usecount) > 1)
		return 0;

	/* Clockdomain now has one enabled downstream clock */

	FUNC7("clockdomain: clkdm %s: clk %s now enabled\n", clkdm->name,
		 clk->name);

	v = FUNC5(clkdm);

	if ((FUNC4() && v == OMAP34XX_CLKSTCTRL_ENABLE_AUTO) ||
	    (FUNC3() && v == OMAP24XX_CLKSTCTRL_ENABLE_AUTO)) {
		/* Disable HW transitions when we are changing deps */
		FUNC1(clkdm, 0);
		FUNC0(clkdm);
		FUNC1(clkdm, 1);
	} else {
		FUNC6(clkdm);
	}

	FUNC9(clkdm->pwrdm.ptr);
	FUNC8(clkdm);

	return 0;
}