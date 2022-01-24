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
struct clk {int enable_shift; scalar_t__ enable_reg; scalar_t__ enable_negate; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct clk *clk)
{
	if (clk->enable_reg) {
		u32 clk_reg = FUNC0(clk->enable_reg);
		if (clk->enable_negate)
			clk_reg |= (1 << clk->enable_shift);
		else
			clk_reg &= ~(1 << clk->enable_shift);
		FUNC1(clk_reg, clk->enable_reg);
		return 0;
	} else
		return -EINVAL;
}