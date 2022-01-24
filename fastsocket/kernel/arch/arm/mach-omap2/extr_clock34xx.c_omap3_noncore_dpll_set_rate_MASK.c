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
typedef  int /*<<< orphan*/  u16 ;
struct dpll_data {int modes; unsigned long last_rounded_rate; struct clk* clk_bypass; struct clk* clk_ref; int /*<<< orphan*/  last_rounded_n; int /*<<< orphan*/  last_rounded_m; } ;
struct clk {unsigned long rate; struct clk* parent; scalar_t__ usecount; int /*<<< orphan*/  name; struct dpll_data* dpll_data; } ;

/* Variables and functions */
 int DPLL_LOW_POWER_BYPASS ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*,struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk*) ; 
 int /*<<< orphan*/  FUNC5 (struct clk*) ; 
 int /*<<< orphan*/  FUNC6 (struct clk*,unsigned long) ; 
 unsigned long FUNC7 (struct clk*) ; 
 int FUNC8 (struct clk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC10(struct clk *clk, unsigned long rate)
{
	struct clk *new_parent = NULL;
	u16 freqsel;
	struct dpll_data *dd;
	int ret;

	if (!clk || !rate)
		return -EINVAL;

	dd = clk->dpll_data;
	if (!dd)
		return -EINVAL;

	if (rate == FUNC7(clk))
		return 0;

	/*
	 * Ensure both the bypass and ref clocks are enabled prior to
	 * doing anything; we need the bypass clock running to reprogram
	 * the DPLL.
	 */
	FUNC5(dd->clk_bypass);
	FUNC5(dd->clk_ref);

	if (dd->clk_bypass->rate == rate &&
	    (clk->dpll_data->modes & (1 << DPLL_LOW_POWER_BYPASS))) {
		FUNC9("clock: %s: set rate: entering bypass.\n", clk->name);

		ret = FUNC2(clk);
		if (!ret)
			new_parent = dd->clk_bypass;
	} else {
		if (dd->last_rounded_rate != rate)
			FUNC6(clk, rate);

		if (dd->last_rounded_rate == 0)
			return -EINVAL;

		freqsel = FUNC1(clk, dd->last_rounded_n);
		if (!freqsel)
			FUNC0(1);

		FUNC9("clock: %s: set rate: locking rate to %lu.\n",
			 clk->name, rate);

		ret = FUNC8(clk, dd->last_rounded_m,
						 dd->last_rounded_n, freqsel);
		if (!ret)
			new_parent = dd->clk_ref;
	}
	if (!ret) {
		/*
		 * Switch the parent clock in the heirarchy, and make sure
		 * that the new parent's usecount is correct.  Note: we
		 * enable the new parent before disabling the old to avoid
		 * any unnecessary hardware disable->enable transitions.
		 */
		if (clk->usecount) {
			FUNC5(new_parent);
			FUNC4(clk->parent);
		}
		FUNC3(clk, new_parent);
		clk->rate = rate;
	}
	FUNC4(dd->clk_ref);
	FUNC4(dd->clk_bypass);

	return 0;
}