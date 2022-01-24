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
struct clk {int /*<<< orphan*/  lock; int /*<<< orphan*/  name; int /*<<< orphan*/  (* enable ) (struct clk*) ;int /*<<< orphan*/  usecount; struct clk* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct clk*) ; 
 int /*<<< orphan*/  FUNC7 (struct clk*) ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9(struct clk *clk)
{
	int ret = 0;
	unsigned long iflags;

	FUNC3(&clk->lock, iflags);
	if (clk->usecount++ == 0) {
		if (FUNC2((u32)clk->parent))
			ret = FUNC9(clk->parent);

		if (FUNC8(ret != 0))
			clk->usecount--;
		else {
			/* remove reset line (we never enable reset again) */
			FUNC7(clk);
			/* clocks without enable function are always on */
			if (clk->enable)
				clk->enable(clk);
#ifdef CONFIG_MACH_U300_USE_I2S_AS_MASTER
			if (unlikely(!strcmp(clk->name, "I2S0")))
				enable_i2s0_vcxo();
			if (unlikely(!strcmp(clk->name, "I2S1")))
				enable_i2s1_vcxo();
#endif
		}
	}
	FUNC4(&clk->lock, iflags);
	return ret;

}