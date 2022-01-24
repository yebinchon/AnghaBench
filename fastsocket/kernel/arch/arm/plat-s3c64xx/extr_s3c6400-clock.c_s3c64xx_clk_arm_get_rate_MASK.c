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
struct clk {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  S3C_CLK_DIV0 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int armclk_mask ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC2(struct clk *clk)
{
	unsigned long rate = FUNC1(clk->parent);
	u32 clkdiv;

	/* divisor mask starts at bit0, so no need to shift */
	clkdiv = FUNC0(S3C_CLK_DIV0) & armclk_mask;

	return rate / (clkdiv + 1);
}