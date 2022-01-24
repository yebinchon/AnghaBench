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
 int EINVAL ; 
 int /*<<< orphan*/  S3C_CLK_DIV0 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int armclk_mask ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (struct clk*,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct clk *clk, unsigned long rate)
{
	unsigned long parent = FUNC2(clk->parent);
	u32 div;
	u32 val;

	if (rate < parent / (armclk_mask + 1))
		return -EINVAL;

	rate = FUNC3(clk, rate);
	div = FUNC2(clk->parent) / rate;

	val = FUNC0(S3C_CLK_DIV0);
	val &= ~armclk_mask;
	val |= (div - 1);
	FUNC1(val, S3C_CLK_DIV0);

	return 0;

}