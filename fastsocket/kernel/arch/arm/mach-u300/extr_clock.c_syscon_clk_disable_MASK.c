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
struct clk {int /*<<< orphan*/  clk_val; scalar_t__ hw_ctrld; } ;

/* Variables and functions */
 scalar_t__ U300_SYSCON_SBCDR ; 
 scalar_t__ U300_SYSCON_VBASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  syscon_clkreg_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct clk *clk)
{
	unsigned long iflags;

	/* Don't touch the hardware controlled clocks */
	if (clk->hw_ctrld)
		return;

	FUNC0(&syscon_clkreg_lock, iflags);
	FUNC2(clk->clk_val, U300_SYSCON_VBASE + U300_SYSCON_SBCDR);
	FUNC1(&syscon_clkreg_lock, iflags);
}