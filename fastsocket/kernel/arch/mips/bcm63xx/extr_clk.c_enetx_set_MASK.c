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
typedef  int /*<<< orphan*/  u32 ;
struct clk {scalar_t__ id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  CKCTL_6358_ENET0_EN ; 
 int /*<<< orphan*/  CKCTL_6358_ENET1_EN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  clk_enet_misc ; 

__attribute__((used)) static void FUNC4(struct clk *clk, int enable)
{
	if (enable)
		FUNC3(&clk_enet_misc);
	else
		FUNC2(&clk_enet_misc);

	if (FUNC0()) {
		u32 mask;

		if (clk->id == 0)
			mask = CKCTL_6358_ENET0_EN;
		else
			mask = CKCTL_6358_ENET1_EN;
		FUNC1(mask, enable);
	}
}