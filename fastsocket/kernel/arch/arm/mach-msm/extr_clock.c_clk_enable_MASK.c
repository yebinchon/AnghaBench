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
struct clk {int count; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  clocks_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct clk *clk)
{
	unsigned long flags;
	FUNC1(&clocks_lock, flags);
	clk->count++;
	if (clk->count == 1)
		FUNC0(clk->id);
	FUNC2(&clocks_lock, flags);
	return 0;
}