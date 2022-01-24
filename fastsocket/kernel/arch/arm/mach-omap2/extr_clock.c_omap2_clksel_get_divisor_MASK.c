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
struct clk {int clksel_mask; int /*<<< orphan*/  clksel_reg; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct clk*,int) ; 

u32 FUNC3(struct clk *clk)
{
	u32 v;

	if (!clk->clksel_mask)
		return 0;

	v = FUNC1(clk->clksel_reg) & clk->clksel_mask;
	v >>= FUNC0(clk->clksel_mask);

	return FUNC2(clk, v);
}