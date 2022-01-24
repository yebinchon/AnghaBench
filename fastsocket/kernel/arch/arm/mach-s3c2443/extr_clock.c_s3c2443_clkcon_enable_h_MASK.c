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
struct clk {unsigned int ctrlbit; } ;

/* Variables and functions */
 int /*<<< orphan*/  S3C2443_HCLKCON ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct clk *clk, int enable)
{
	unsigned int clocks = clk->ctrlbit;
	unsigned long clkcon;

	clkcon = FUNC0(S3C2443_HCLKCON);

	if (enable)
		clkcon |= clocks;
	else
		clkcon &= ~clocks;

	FUNC1(clkcon, S3C2443_HCLKCON);

	return 0;
}