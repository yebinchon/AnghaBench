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
struct clockdomain {int flags; TYPE_2__ pwrdm; int /*<<< orphan*/  clktrctrl_mask; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  prcm_offs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int CLKDM_CAN_FORCE_SLEEP ; 
 int /*<<< orphan*/  CM_CLKSTCTRL ; 
 int EINVAL ; 
 int /*<<< orphan*/  OMAP24XX_FORCESTATE ; 
 int OMAP34XX_CLKSTCTRL_FORCE_SLEEP ; 
 int /*<<< orphan*/  PM_PWSTCTRL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

int FUNC7(struct clockdomain *clkdm)
{
	if (!clkdm)
		return -EINVAL;

	if (!(clkdm->flags & CLKDM_CAN_FORCE_SLEEP)) {
		FUNC6("clockdomain: %s does not support forcing "
			 "sleep via software\n", clkdm->name);
		return -EINVAL;
	}

	FUNC6("clockdomain: forcing sleep on %s\n", clkdm->name);

	if (FUNC4()) {

		FUNC3(OMAP24XX_FORCESTATE,
				    clkdm->pwrdm.ptr->prcm_offs, PM_PWSTCTRL);

	} else if (FUNC5()) {

		u32 v = (OMAP34XX_CLKSTCTRL_FORCE_SLEEP <<
			 FUNC1(clkdm->clktrctrl_mask));

		FUNC2(clkdm->clktrctrl_mask, v,
				    clkdm->pwrdm.ptr->prcm_offs, CM_CLKSTCTRL);

	} else {
		FUNC0();
	};

	return 0;
}