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
struct clk {int /*<<< orphan*/  enable_reg; } ;

/* Variables and functions */
 int EP93XX_SYSCON_CLKDIV_ESEL ; 
 int EP93XX_SYSCON_CLKDIV_PDIV_SHIFT ; 
 int EP93XX_SYSCON_CLKDIV_PSEL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct clk*,unsigned long,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct clk *clk, unsigned long rate)
{
	int err, psel = 0, esel = 0, pdiv = 0, div = 0;
	u32 val;

	err = FUNC1(clk, rate, &psel, &esel, &pdiv, &div);
	if (err)
		return err;

	/* Clear the esel, psel, pdiv and div bits */
	val = FUNC0(clk->enable_reg);
	val &= ~0x7fff;

	/* Set the new esel, psel, pdiv and div bits for the new clock rate */
	val |= (esel ? EP93XX_SYSCON_CLKDIV_ESEL : 0) |
		(psel ? EP93XX_SYSCON_CLKDIV_PSEL : 0) |
		(pdiv << EP93XX_SYSCON_CLKDIV_PDIV_SHIFT) | div;
	FUNC2(val, clk->enable_reg);
	return 0;
}