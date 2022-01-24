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
struct TYPE_2__ {scalar_t__ prev; scalar_t__ next; } ;
struct clk {TYPE_1__ list; int /*<<< orphan*/ * enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * clk_null_enable ; 
 int /*<<< orphan*/  clocks ; 
 int /*<<< orphan*/  clocks_lock ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct clk *clk)
{
	if (clk->enable == NULL)
		clk->enable = clk_null_enable;

	/* add to the list of available clocks */

	/* Quick check to see if this clock has already been registered. */
	FUNC0(clk->list.prev != clk->list.next);

	FUNC2(&clocks_lock);
	FUNC1(&clk->list, &clocks);
	FUNC3(&clocks_lock);

	return 0;
}