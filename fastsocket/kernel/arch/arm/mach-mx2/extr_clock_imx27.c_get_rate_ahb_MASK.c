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
struct clk {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCM_CSCR ; 
 scalar_t__ CHIP_REV_2_0 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static unsigned long FUNC3(struct clk *clk)
{
	unsigned long rate, bclk_pdf;

	if (FUNC2() >= CHIP_REV_2_0)
		bclk_pdf = (FUNC0(CCM_CSCR) >> 8) & 0x3;
	else
		bclk_pdf = (FUNC0(CCM_CSCR) >> 9) & 0xf;

	rate = FUNC1(clk->parent);
	return rate / (bclk_pdf + 1);
}