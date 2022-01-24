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
struct clksrc_clk {int divider_shift; int /*<<< orphan*/  reg_divider; } ;
struct clk {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 struct clksrc_clk* FUNC2 (struct clk*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk *clk)
{
	struct clksrc_clk *sclk = FUNC2(clk);
	unsigned long rate = FUNC1(clk->parent);
	u32 clkdiv = FUNC0(sclk->reg_divider);

	clkdiv >>= sclk->divider_shift;
	clkdiv &= 0xf;
	clkdiv++;

	rate /= clkdiv;
	return rate;
}