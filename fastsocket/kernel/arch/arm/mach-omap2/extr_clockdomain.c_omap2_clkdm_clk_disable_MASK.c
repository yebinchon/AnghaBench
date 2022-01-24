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
struct clockdomain {int /*<<< orphan*/  name; int /*<<< orphan*/  usecount; } ;
struct clk {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 int OMAP24XX_CLKSTCTRL_ENABLE_AUTO ; 
 int OMAP34XX_CLKSTCTRL_ENABLE_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct clockdomain*) ; 
 int /*<<< orphan*/  FUNC2 (struct clockdomain*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int FUNC7 (struct clockdomain*) ; 
 int /*<<< orphan*/  FUNC8 (struct clockdomain*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct clockdomain*) ; 

int FUNC11(struct clockdomain *clkdm, struct clk *clk)
{
	int v;

	/*
	 * XXX Rewrite this code to maintain a list of enabled
	 * downstream clocks for debugging purposes?
	 */

	if (!clkdm || !clk)
		return -EINVAL;

#ifdef DEBUG
	if (atomic_read(&clkdm->usecount) == 0) {
		WARN_ON(1); /* underflow */
		return -ERANGE;
	}
#endif

	if (FUNC3(&clkdm->usecount) > 0)
		return 0;

	/* All downstream clocks of this clockdomain are now disabled */

	FUNC9("clockdomain: clkdm %s: clk %s now disabled\n", clkdm->name,
		 clk->name);

	v = FUNC7(clkdm);

	if ((FUNC6() && v == OMAP34XX_CLKSTCTRL_ENABLE_AUTO) ||
	    (FUNC5() && v == OMAP24XX_CLKSTCTRL_ENABLE_AUTO)) {
		/* Disable HW transitions when we are changing deps */
		FUNC2(clkdm, 0);
		FUNC1(clkdm);
		FUNC2(clkdm, 1);
	} else {
		FUNC8(clkdm);
	}

	FUNC10(clkdm);

	return 0;
}