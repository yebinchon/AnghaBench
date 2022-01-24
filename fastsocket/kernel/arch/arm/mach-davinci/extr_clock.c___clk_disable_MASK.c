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
struct clk {scalar_t__ usecount; int flags; struct clk* parent; int /*<<< orphan*/  lpsc; int /*<<< orphan*/  psc_ctlr; } ;

/* Variables and functions */
 int CLK_PLL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 

__attribute__((used)) static void FUNC3(struct clk *clk)
{
	if (FUNC0(clk->usecount == 0))
		return;
	if (--clk->usecount == 0 && !(clk->flags & CLK_PLL))
		FUNC1(FUNC2(clk), clk->psc_ctlr,
				clk->lpsc, 0);
	if (clk->parent)
		FUNC3(clk->parent);
}