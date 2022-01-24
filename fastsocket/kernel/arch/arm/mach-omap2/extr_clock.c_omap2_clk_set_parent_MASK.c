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
typedef  int u32 ;
struct clk {int flags; int clksel_mask; int rate; TYPE_1__* parent; int /*<<< orphan*/  name; int /*<<< orphan*/  clksel_reg; int /*<<< orphan*/  clksel; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int CONFIG_PARTICIPANT ; 
 int EINVAL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct clk*,struct clk*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk*) ; 
 int /*<<< orphan*/  FUNC5 (struct clk*,struct clk*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC7(struct clk *clk, struct clk *new_parent)
{
	u32 field_val, v, parent_div;

	if (clk->flags & CONFIG_PARTICIPANT)
		return -EINVAL;

	if (!clk->clksel)
		return -EINVAL;

	parent_div = FUNC3(new_parent, clk, &field_val);
	if (!parent_div)
		return -EINVAL;

	/* Set new source value (previous dividers if any in effect) */
	v = FUNC1(clk->clksel_reg);
	v &= ~clk->clksel_mask;
	v |= field_val << FUNC0(clk->clksel_mask);
	FUNC2(v, clk->clksel_reg);
	v = FUNC1(clk->clksel_reg);    /* OCP barrier */

	FUNC4(clk);

	FUNC5(clk, new_parent);

	/* CLKSEL clocks follow their parents' rates, divided by a divisor */
	clk->rate = new_parent->rate;

	if (parent_div > 0)
		clk->rate /= parent_div;

	FUNC6("clock: set parent of %s to %s (new rate %ld)\n",
		 clk->name, clk->parent->name, clk->rate);

	return 0;
}