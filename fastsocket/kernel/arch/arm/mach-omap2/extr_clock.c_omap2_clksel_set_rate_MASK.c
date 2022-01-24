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
typedef  unsigned long u32 ;
struct clk {unsigned long clksel_mask; unsigned long rate; TYPE_1__* parent; int /*<<< orphan*/  clksel_reg; } ;
struct TYPE_2__ {unsigned long rate; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 unsigned long FUNC4 (struct clk*,unsigned long,unsigned long*) ; 
 unsigned long FUNC5 (struct clk*,unsigned long) ; 

int FUNC6(struct clk *clk, unsigned long rate)
{
	u32 v, field_val, validrate, new_div = 0;

	if (!clk->clksel_mask)
		return -EINVAL;

	validrate = FUNC4(clk, rate, &new_div);
	if (validrate != rate)
		return -EINVAL;

	field_val = FUNC5(clk, new_div);
	if (field_val == ~0)
		return -EINVAL;

	v = FUNC1(clk->clksel_reg);
	v &= ~clk->clksel_mask;
	v |= field_val << FUNC0(clk->clksel_mask);
	FUNC2(v, clk->clksel_reg);
	v = FUNC1(clk->clksel_reg); /* OCP barrier */

	clk->rate = clk->parent->rate / new_div;

	FUNC3(clk);

	return 0;
}