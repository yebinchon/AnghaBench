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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct dpll_data {int freqsel_mask; int mult_mask; int div1_mask; int /*<<< orphan*/  mult_div1_reg; int /*<<< orphan*/  control_reg; } ;
struct clk {struct dpll_data* dpll_data; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk*) ; 

__attribute__((used)) static int FUNC5(struct clk *clk, u16 m, u8 n, u16 freqsel)
{
	struct dpll_data *dd = clk->dpll_data;
	u32 v;

	/* 3430 ES2 TRM: 4.7.6.9 DPLL Programming Sequence */
	FUNC3(clk);

	/* Set jitter correction */
	v = FUNC1(dd->control_reg);
	v &= ~dd->freqsel_mask;
	v |= freqsel << FUNC0(dd->freqsel_mask);
	FUNC2(v, dd->control_reg);

	/* Set DPLL multiplier, divider */
	v = FUNC1(dd->mult_div1_reg);
	v &= ~(dd->mult_mask | dd->div1_mask);
	v |= m << FUNC0(dd->mult_mask);
	v |= (n - 1) << FUNC0(dd->div1_mask);
	FUNC2(v, dd->mult_div1_reg);

	/* We let the clock framework set the other output dividers later */

	/* REVISIT: Set ramp-up delay? */

	FUNC4(clk);

	return 0;
}