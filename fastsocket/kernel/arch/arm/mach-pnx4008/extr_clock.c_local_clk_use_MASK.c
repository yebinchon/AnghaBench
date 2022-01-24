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
struct clk {int /*<<< orphan*/  usecount; struct clk* parent; } ;

/* Variables and functions */
 int FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 

__attribute__((used)) static int FUNC2(struct clk *clk)
{
	int ret = 0;
	if (clk->usecount++ == 0) {
		if (clk->parent)
			ret = FUNC2(clk->parent);

		if (ret != 0) {
			clk->usecount--;
			goto out;
		}

		ret = FUNC0(clk);

		if (ret != 0 && clk->parent) {
			FUNC1(clk->parent);
			clk->usecount--;
		}
	}
out:
	return ret;
}