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
struct clk {int /*<<< orphan*/  usecount; scalar_t__ clkdm; struct clk* parent; } ;

/* Variables and functions */
 int FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct clk*) ; 

int FUNC4(struct clk *clk)
{
	int ret = 0;

	if (clk->usecount++ == 0) {
		if (clk->clkdm)
			FUNC3(clk->clkdm, clk);

		if (clk->parent) {
			ret = FUNC4(clk->parent);
			if (ret)
				goto err;
		}

		ret = FUNC0(clk);
		if (ret) {
			if (clk->parent)
				FUNC1(clk->parent);

			goto err;
		}
	}
	return ret;

err:
	if (clk->clkdm)
		FUNC2(clk->clkdm, clk);
	clk->usecount--;
	return ret;
}