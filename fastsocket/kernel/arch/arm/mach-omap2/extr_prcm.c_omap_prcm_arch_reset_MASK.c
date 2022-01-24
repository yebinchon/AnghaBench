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
typedef  int /*<<< orphan*/  s16 ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP3430_GR_MOD ; 
 int /*<<< orphan*/  OMAP_RST_DPLL3 ; 
 int /*<<< orphan*/  RM_RSTCTRL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WKUP_MOD ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(char mode)
{
	s16 prcm_offs;
	FUNC3();

	if (FUNC1())
		prcm_offs = WKUP_MOD;
	else if (FUNC2())
		prcm_offs = OMAP3430_GR_MOD;
	else
		FUNC0(1);

	FUNC4(OMAP_RST_DPLL3, prcm_offs, RM_RSTCTRL);
}