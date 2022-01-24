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
typedef  int u32 ;
struct prcm_config {int cm_clksel1_pll; int cm_clksel2_pll; int /*<<< orphan*/  base_sdrc_rfr; } ;
struct dpll_data {int mult_mask; int div1_mask; int /*<<< orphan*/  mult_div1_reg; } ;
struct clk {struct dpll_data* dpll_data; } ;
struct TYPE_2__ {int dpll_speed; int xtal_speed; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_CLKSEL2 ; 
 int CORE_CLK_SRC_DPLL ; 
 int CORE_CLK_SRC_DPLL_X2 ; 
 int EINVAL ; 
 int OMAP24XX_CORE_CLK_SRC_MASK ; 
 int /*<<< orphan*/  PLL_MOD ; 
 int /*<<< orphan*/  SDRC_RFR_CTRL_BYPASS ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* curr_prcm_set ; 
 int /*<<< orphan*/  dpll_ck ; 
 int FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static int FUNC9(struct clk *clk, unsigned long rate)
{
	u32 cur_rate, low, mult, div, valid_rate, done_rate;
	u32 bypass = 0;
	struct prcm_config tmpset;
	const struct dpll_data *dd;

	cur_rate = FUNC5(&dpll_ck);
	mult = FUNC2(PLL_MOD, CM_CLKSEL2);
	mult &= OMAP24XX_CORE_CLK_SRC_MASK;

	if ((rate == (cur_rate / 2)) && (mult == 2)) {
		FUNC8(CORE_CLK_SRC_DPLL, 1);
	} else if ((rate == (cur_rate * 2)) && (mult == 1)) {
		FUNC8(CORE_CLK_SRC_DPLL_X2, 1);
	} else if (rate != cur_rate) {
		valid_rate = FUNC3(rate);
		if (valid_rate != rate)
			return -EINVAL;

		if (mult == 1)
			low = curr_prcm_set->dpll_speed;
		else
			low = curr_prcm_set->dpll_speed / 2;

		dd = clk->dpll_data;
		if (!dd)
			return -EINVAL;

		tmpset.cm_clksel1_pll = FUNC1(dd->mult_div1_reg);
		tmpset.cm_clksel1_pll &= ~(dd->mult_mask |
					   dd->div1_mask);
		div = ((curr_prcm_set->xtal_speed / 1000000) - 1);
		tmpset.cm_clksel2_pll = FUNC2(PLL_MOD, CM_CLKSEL2);
		tmpset.cm_clksel2_pll &= ~OMAP24XX_CORE_CLK_SRC_MASK;
		if (rate > low) {
			tmpset.cm_clksel2_pll |= CORE_CLK_SRC_DPLL_X2;
			mult = ((rate / 2) / 1000000);
			done_rate = CORE_CLK_SRC_DPLL_X2;
		} else {
			tmpset.cm_clksel2_pll |= CORE_CLK_SRC_DPLL;
			mult = (rate / 1000000);
			done_rate = CORE_CLK_SRC_DPLL;
		}
		tmpset.cm_clksel1_pll |= (div << FUNC0(dd->mult_mask));
		tmpset.cm_clksel1_pll |= (mult << FUNC0(dd->div1_mask));

		/* Worst case */
		tmpset.base_sdrc_rfr = SDRC_RFR_CTRL_BYPASS;

		if (rate == curr_prcm_set->xtal_speed)	/* If asking for 1-1 */
			bypass = 1;

		/* For omap2xxx_sdrc_init_params() */
		FUNC8(CORE_CLK_SRC_DPLL_X2, 1);

		/* Force dll lock mode */
		FUNC4(tmpset.cm_clksel1_pll, tmpset.base_sdrc_rfr,
			       bypass);

		/* Errata: ret dll entry state */
		FUNC7(FUNC6());
		FUNC8(done_rate, 0);
	}

	return 0;
}