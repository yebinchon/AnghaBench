#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  long long u32 ;
struct dpll_data {long long enable_mask; long long mult_mask; long long div1_mask; TYPE_2__* clk_ref; int /*<<< orphan*/  mult_div1_reg; TYPE_1__* clk_bypass; int /*<<< orphan*/  control_reg; } ;
struct clk {struct dpll_data* dpll_data; } ;
struct TYPE_4__ {scalar_t__ rate; } ;
struct TYPE_3__ {long long rate; } ;

/* Variables and functions */
 long long OMAP2XXX_EN_DPLL_FRBYPASS ; 
 long long OMAP2XXX_EN_DPLL_LPBYPASS ; 
 long long OMAP3XXX_EN_DPLL_FRBYPASS ; 
 long long OMAP3XXX_EN_DPLL_LPBYPASS ; 
 long long FUNC0 (long long) ; 
 long long FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (long long,long long) ; 

u32 FUNC5(struct clk *clk)
{
	long long dpll_clk;
	u32 dpll_mult, dpll_div, v;
	struct dpll_data *dd;

	dd = clk->dpll_data;
	if (!dd)
		return 0;

	/* Return bypass rate if DPLL is bypassed */
	v = FUNC1(dd->control_reg);
	v &= dd->enable_mask;
	v >>= FUNC0(dd->enable_mask);

	if (FUNC2()) {
		if (v == OMAP2XXX_EN_DPLL_LPBYPASS ||
		    v == OMAP2XXX_EN_DPLL_FRBYPASS)
			return dd->clk_bypass->rate;
	} else if (FUNC3()) {
		if (v == OMAP3XXX_EN_DPLL_LPBYPASS ||
		    v == OMAP3XXX_EN_DPLL_FRBYPASS)
			return dd->clk_bypass->rate;
	}

	v = FUNC1(dd->mult_div1_reg);
	dpll_mult = v & dd->mult_mask;
	dpll_mult >>= FUNC0(dd->mult_mask);
	dpll_div = v & dd->div1_mask;
	dpll_div >>= FUNC0(dd->div1_mask);

	dpll_clk = (long long)dd->clk_ref->rate * dpll_mult;
	FUNC4(dpll_clk, dpll_div + 1);

	return dpll_clk;
}