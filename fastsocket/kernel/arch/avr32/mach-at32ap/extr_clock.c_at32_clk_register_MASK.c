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
struct clk {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  at32_clock_list ; 
 int /*<<< orphan*/  clk_list_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct clk *clk)
{
	FUNC1(&clk_list_lock);
	/* add the new item to the end of the list */
	FUNC0(&clk->list, &at32_clock_list);
	FUNC2(&clk_list_lock);
}