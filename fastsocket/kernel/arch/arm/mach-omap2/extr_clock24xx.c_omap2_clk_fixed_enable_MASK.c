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
typedef  int u32 ;
struct clk {int enable_bit; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_CLKEN ; 
 int /*<<< orphan*/  CM_IDLEST ; 
 int EN_APLL_LOCKED ; 
 int OMAP24XX_ST_54M_APLL ; 
 int OMAP24XX_ST_96M_APLL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PLL_MOD ; 
 struct clk apll54_ck ; 
 struct clk apll96_ck ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct clk *clk)
{
	u32 cval, apll_mask;

	apll_mask = EN_APLL_LOCKED << clk->enable_bit;

	cval = FUNC1(PLL_MOD, CM_CLKEN);

	if ((cval & apll_mask) == apll_mask)
		return 0;   /* apll already enabled */

	cval &= ~apll_mask;
	cval |= apll_mask;
	FUNC2(cval, PLL_MOD, CM_CLKEN);

	if (clk == &apll96_ck)
		cval = OMAP24XX_ST_96M_APLL;
	else if (clk == &apll54_ck)
		cval = OMAP24XX_ST_54M_APLL;

	FUNC3(FUNC0(PLL_MOD, CM_IDLEST), cval,
			     clk->name);

	/*
	 * REVISIT: Should we return an error code if omap2_wait_clock_ready()
	 * fails?
	 */
	return 0;
}