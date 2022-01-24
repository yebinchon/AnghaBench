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
struct clk {scalar_t__ usecount; int /*<<< orphan*/  lock; int /*<<< orphan*/  name; struct clk* parent; int /*<<< orphan*/  (* disable ) (struct clk*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct clk*) ; 
 scalar_t__ FUNC7 (int) ; 

void FUNC8(struct clk *clk)
{
	unsigned long iflags;

	FUNC3(&clk->lock, iflags);
	if (clk->usecount > 0 && !(--clk->usecount)) {
		/* some blocks lack clocking registers and cannot be disabled */
		if (clk->disable)
			clk->disable(clk);
		if (FUNC2((u32)clk->parent))
			FUNC8(clk->parent);
	}
#ifdef CONFIG_MACH_U300_USE_I2S_AS_MASTER
	if (unlikely(!strcmp(clk->name, "I2S0")))
		disable_i2s0_vcxo();
	if (unlikely(!strcmp(clk->name, "I2S1")))
		disable_i2s1_vcxo();
#endif
	FUNC4(&clk->lock, iflags);
}