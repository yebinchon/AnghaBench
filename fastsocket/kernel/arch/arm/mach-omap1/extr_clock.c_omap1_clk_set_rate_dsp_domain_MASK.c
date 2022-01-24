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
typedef  int u16 ;
struct clk {int rate_offset; int rate; TYPE_1__* parent; } ;
struct TYPE_2__ {int rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSP_CKCTL ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct clk*,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct clk *clk, unsigned long rate)
{
	int dsor_exp;
	u16 regval;

	dsor_exp = FUNC2(clk, rate);
	if (dsor_exp > 3)
		dsor_exp = -EINVAL;
	if (dsor_exp < 0)
		return dsor_exp;

	regval = FUNC0(DSP_CKCTL);
	regval &= ~(3 << clk->rate_offset);
	regval |= dsor_exp << clk->rate_offset;
	FUNC1(regval, DSP_CKCTL);
	clk->rate = clk->parent->rate / (1 << dsor_exp);

	return 0;
}