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
struct clk {int id; int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 scalar_t__ CHIP_REV_2_0 ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static unsigned long FUNC2(struct clk *clk)
{
	unsigned long parent_rate;

	parent_rate = FUNC0(clk->parent);

	/* i.MX27 TO2:
	 * clk->id == 0: arm clock source path 1 which is from 2 * MPLL / 2
	 * clk->id == 1: arm clock source path 2 which is from 2 * MPLL / 3
	 */
	if (FUNC1() >= CHIP_REV_2_0 && clk->id == 1)
		return 2UL * parent_rate / 3UL;

	return parent_rate;
}