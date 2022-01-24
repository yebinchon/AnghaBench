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
typedef  int u32 ;
struct TYPE_4__ {TYPE_1__* ptr; } ;
struct clockdomain {TYPE_2__ pwrdm; int /*<<< orphan*/  clktrctrl_mask; } ;
struct TYPE_3__ {int /*<<< orphan*/  prcm_offs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CM_CLKSTCTRL ; 
 int OMAP24XX_CLKSTCTRL_DISABLE_AUTO ; 
 int OMAP24XX_CLKSTCTRL_ENABLE_AUTO ; 
 int OMAP34XX_CLKSTCTRL_DISABLE_AUTO ; 
 int OMAP34XX_CLKSTCTRL_ENABLE_AUTO ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct clockdomain *clkdm, int enable)
{
	u32 v;

	if (FUNC3()) {
		if (enable)
			v = OMAP24XX_CLKSTCTRL_ENABLE_AUTO;
		else
			v = OMAP24XX_CLKSTCTRL_DISABLE_AUTO;
	} else if (FUNC4()) {
		if (enable)
			v = OMAP34XX_CLKSTCTRL_ENABLE_AUTO;
		else
			v = OMAP34XX_CLKSTCTRL_DISABLE_AUTO;
	} else {
		FUNC0();
	}

	FUNC2(clkdm->clktrctrl_mask,
			    v << FUNC1(clkdm->clktrctrl_mask),
			    clkdm->pwrdm.ptr->prcm_offs, CM_CLKSTCTRL);
}