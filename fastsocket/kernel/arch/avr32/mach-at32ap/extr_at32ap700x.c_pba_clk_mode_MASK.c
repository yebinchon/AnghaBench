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
typedef  int u32 ;
struct clk {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  PBA_MASK ; 
 int /*<<< orphan*/  pm_lock ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct clk *clk, int enabled)
{
	unsigned long flags;
	u32 mask;

	FUNC2(&pm_lock, flags);
	mask = FUNC0(PBA_MASK);
	if (enabled)
		mask |= 1 << clk->index;
	else
		mask &= ~(1 << clk->index);
	FUNC1(PBA_MASK, mask);
	FUNC3(&pm_lock, flags);
}