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
typedef  int u_long ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 

u_long FUNC4(void)
{
	static u_long cached_cclk_pll_div, cached_cclk;
	u_long csel, ssel;

	if (FUNC1() & 0x1)
		return FUNC2();

	ssel = FUNC0();
	if (ssel == cached_cclk_pll_div)
		return cached_cclk;
	else
		cached_cclk_pll_div = ssel;

	csel = ((ssel >> 4) & 0x03);
	ssel &= 0xf;
	if (ssel && ssel < (1 << csel))	/* SCLK > CCLK */
		cached_cclk = FUNC3() / ssel;
	else
		cached_cclk = FUNC3() >> csel;
	return cached_cclk;
}