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
struct clockdomain {int dummy; } ;
struct clk {int /*<<< orphan*/  clkdm_name; int /*<<< orphan*/  name; struct clockdomain* clkdm; } ;

/* Variables and functions */
 struct clockdomain* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct clk *clk)
{
	struct clockdomain *clkdm;

	if (!clk->clkdm_name)
		return;

	clkdm = FUNC0(clk->clkdm_name);
	if (clkdm) {
		FUNC1("clock: associated clk %s to clkdm %s\n",
			 clk->name, clk->clkdm_name);
		clk->clkdm = clkdm;
	} else {
		FUNC1("clock: could not associate clk %s to "
			 "clkdm %s\n", clk->name, clk->clkdm_name);
	}
}