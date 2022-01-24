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
typedef  scalar_t__ u8 ;
struct clk {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPLL_LOCKED ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct clk*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct clk*,int) ; 
 struct clk dpll3_ck ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 scalar_t__ FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct clk *clk)
{
	u8 ai;
	int r;

	if (clk == &dpll3_ck)
		return -EINVAL;

	FUNC5("clock: locking DPLL %s\n", clk->name);

	ai = FUNC3(clk);

	FUNC4(clk);

	FUNC0(clk, DPLL_LOCKED);

	r = FUNC1(clk, 1);

	if (ai)
		FUNC2(clk);

	return r;
}