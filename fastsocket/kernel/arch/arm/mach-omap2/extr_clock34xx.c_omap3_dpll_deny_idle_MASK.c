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
struct dpll_data {int autoidle_mask; int /*<<< orphan*/  autoidle_reg; } ;
struct clk {struct dpll_data* dpll_data; } ;

/* Variables and functions */
 int DPLL_AUTOIDLE_DISABLE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct clk *clk)
{
	const struct dpll_data *dd;
	u32 v;

	if (!clk || !clk->dpll_data)
		return;

	dd = clk->dpll_data;

	v = FUNC1(dd->autoidle_reg);
	v &= ~dd->autoidle_mask;
	v |= DPLL_AUTOIDLE_DISABLE << FUNC0(dd->autoidle_mask);
	FUNC2(v, dd->autoidle_reg);
}