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

__attribute__((used)) static u_long FUNC2(void)
{
	static u_long cached_vco;
	u_long msel, pll_ctl;

	/* The assumption here is that VCO never changes at runtime.
	 * If, someday, we support that, then we'll have to change this.
	 */
	if (cached_vco)
		return cached_vco;

	pll_ctl = FUNC0();
	msel = (pll_ctl >> 9) & 0x3F;
	if (0 == msel)
		msel = 64;

	cached_vco = FUNC1();
	cached_vco >>= (1 & pll_ctl);	/* DF bit */
	cached_vco *= msel;
	return cached_vco;
}