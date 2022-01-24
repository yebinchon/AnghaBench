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
struct clk {scalar_t__ usage; struct clk* parent; int /*<<< orphan*/  (* enable ) (struct clk*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  clocks_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*,int /*<<< orphan*/ ) ; 

void FUNC4(struct clk *clk)
{
	if (FUNC0(clk) || clk == NULL)
		return;

	FUNC1(&clocks_lock);

	if ((--clk->usage) == 0)
		(clk->enable)(clk, 0);

	FUNC2(&clocks_lock);
	FUNC4(clk->parent);
}