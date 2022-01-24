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
struct clk {struct clk* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCM_CSCR ; 
 int CCM_CSCR_ARM_SRC ; 
 scalar_t__ CHIP_REV_2_0 ; 
 int EINVAL ; 
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct clk mpll_main1_clk ; 
 struct clk mpll_main2_clk ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct clk *clk, struct clk *parent)
{
	int cscr = FUNC0(CCM_CSCR);

	if (clk->parent == parent)
		return 0;

	if (FUNC2() >= CHIP_REV_2_0) {
		if (parent == &mpll_main1_clk) {
			cscr |= CCM_CSCR_ARM_SRC;
		} else {
			if (parent == &mpll_main2_clk)
				cscr &= ~CCM_CSCR_ARM_SRC;
			else
				return -EINVAL;
		}
		FUNC1(cscr, CCM_CSCR);
		clk->parent = parent;
		return 0;
	}
	return -ENODEV;
}