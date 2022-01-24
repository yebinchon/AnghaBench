#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct clk {int /*<<< orphan*/  name; TYPE_1__* dpll_data; } ;
struct TYPE_2__ {int modes; } ;

/* Variables and functions */
 int DPLL_LOW_POWER_BYPASS ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct clk*,int) ; 
 int FUNC1 (struct clk*,int /*<<< orphan*/ ) ; 
 struct clk dpll3_ck ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 scalar_t__ FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct clk *clk)
{
	int r;
	u8 ai;

	if (clk == &dpll3_ck)
		return -EINVAL;

	if (!(clk->dpll_data->modes & (1 << DPLL_LOW_POWER_BYPASS)))
		return -EINVAL;

	FUNC5("clock: configuring DPLL %s for low-power bypass\n",
		 clk->name);

	ai = FUNC3(clk);

	FUNC0(clk, DPLL_LOW_POWER_BYPASS);

	r = FUNC1(clk, 0);

	if (ai)
		FUNC2(clk);
	else
		FUNC4(clk);

	return r;
}