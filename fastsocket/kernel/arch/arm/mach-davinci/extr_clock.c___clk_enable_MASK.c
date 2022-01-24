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
struct clk {int flags; int /*<<< orphan*/  lpsc; int /*<<< orphan*/  psc_ctlr; int /*<<< orphan*/  usecount; struct clk* parent; } ;

/* Variables and functions */
 int CLK_PSC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 

__attribute__((used)) static void FUNC2(struct clk *clk)
{
	if (clk->parent)
		FUNC2(clk->parent);
	if (clk->usecount++ == 0 && (clk->flags & CLK_PSC))
		FUNC0(FUNC1(clk), clk->psc_ctlr,
				clk->lpsc, 1);
}