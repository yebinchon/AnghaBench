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
struct clk {unsigned int cken; } ;

/* Variables and functions */
 scalar_t__ SUBCLK ; 
 scalar_t__ W90X900_VA_CLKPWR ; 
 unsigned long FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,scalar_t__) ; 

void FUNC2(struct clk *clk, int enable)
{
	unsigned int clocks = clk->cken;
	unsigned long clken;

	clken = FUNC0(W90X900_VA_CLKPWR + SUBCLK);

	if (enable)
		clken |= clocks;
	else
		clken &= ~clocks;

	FUNC1(clken, W90X900_VA_CLKPWR + SUBCLK);
}