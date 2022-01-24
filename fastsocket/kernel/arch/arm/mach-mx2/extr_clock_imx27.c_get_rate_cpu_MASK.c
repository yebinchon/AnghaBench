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
 int /*<<< orphan*/  CCM_CSCR ; 
 scalar_t__ CHIP_REV_2_0 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static unsigned long FUNC3(struct clk *clk)
{
	u32 div;
	unsigned long rate;

	if (FUNC2() >= CHIP_REV_2_0)
		div = (FUNC0(CCM_CSCR) >> 12) & 0x3;
	else
		div = (FUNC0(CCM_CSCR) >> 13) & 0x7;

	rate = FUNC1(clk->parent);
	return rate / (div + 1);
}