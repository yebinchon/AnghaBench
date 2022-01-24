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
struct clk {int use_cnt; int /*<<< orphan*/  mode; struct clk* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_MODE_XTAL ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 scalar_t__ FUNC4 (struct clk*) ; 
 int /*<<< orphan*/  clk_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(struct clk *clk, struct clk *parent)
{
	unsigned long flags;
	struct clk *old_parent;

	if (!clk || !parent)
		return -EINVAL;

	if (!FUNC3(parent) || !FUNC2(clk))
		return -EINVAL;

	/* if more than one user, parent is not allowed */
	if (clk->use_cnt > 1)
		return -EBUSY;

	if (clk->parent == parent)
		return 0;

	FUNC5(&clk_lock, flags);
	old_parent = clk->parent;
	clk->parent = parent;
	if (FUNC4(parent))
		clk->mode |= CLK_MODE_XTAL;
	else
		clk->mode &= (~CLK_MODE_XTAL);

	/* if clock is active */
	if (clk->use_cnt != 0) {
		clk->use_cnt--;
		/* enable clock with the new parent */
		FUNC1(clk);
		/* disable the old parent */
		FUNC0(old_parent);
	}
	FUNC6(&clk_lock, flags);

	return 0;
}