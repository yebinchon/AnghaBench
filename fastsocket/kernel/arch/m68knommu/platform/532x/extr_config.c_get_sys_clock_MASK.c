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

/* Variables and functions */
 int BUSDIV ; 
 int FREF ; 
 int MCF_CCM_CDR ; 
 int FUNC0 (int) ; 
 int MCF_CCM_MISCCR ; 
 int MCF_CCM_MISCCR_LIMP ; 
 int MCF_PLL_PFDR ; 

int FUNC1(void)
{
	int divider;
	
	/* Test to see if device is in LIMP mode */
	if (MCF_CCM_MISCCR & MCF_CCM_MISCCR_LIMP) {
		divider = MCF_CCM_CDR & FUNC0(0xF);
		return (FREF/(2 << divider));
	}
	else
		return ((FREF * MCF_PLL_PFDR) / (BUSDIV * 4));
}