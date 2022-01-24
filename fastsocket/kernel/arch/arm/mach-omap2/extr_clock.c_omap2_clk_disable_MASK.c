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
struct clk {scalar_t__ usecount; scalar_t__ clkdm; struct clk* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct clk*) ; 

void FUNC2(struct clk *clk)
{
	if (clk->usecount > 0 && !(--clk->usecount)) {
		FUNC0(clk);
		if (clk->parent)
			FUNC2(clk->parent);
		if (clk->clkdm)
			FUNC1(clk->clkdm, clk);

	}
}