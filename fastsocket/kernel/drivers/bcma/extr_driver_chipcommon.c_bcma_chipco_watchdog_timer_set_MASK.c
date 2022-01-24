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
struct bcma_drv_cc {int capabilities; int /*<<< orphan*/  core; } ;
typedef  enum bcma_clkmode { ____Placeholder_bcma_clkmode } bcma_clkmode ;

/* Variables and functions */
 int BCMA_CC_CAP_PMU ; 
 int /*<<< orphan*/  BCMA_CC_PMU_WATCHDOG ; 
 int /*<<< orphan*/  BCMA_CC_WATCHDOG ; 
 int BCMA_CLKMODE_DYNAMIC ; 
 int BCMA_CLKMODE_FAST ; 
 int /*<<< orphan*/  FUNC0 (struct bcma_drv_cc*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct bcma_drv_cc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

u32 FUNC3(struct bcma_drv_cc *cc, u32 ticks)
{
	u32 maxt;
	enum bcma_clkmode clkmode;

	maxt = FUNC1(cc);
	if (cc->capabilities & BCMA_CC_CAP_PMU) {
		if (ticks == 1)
			ticks = 2;
		else if (ticks > maxt)
			ticks = maxt;
		FUNC0(cc, BCMA_CC_PMU_WATCHDOG, ticks);
	} else {
		clkmode = ticks ? BCMA_CLKMODE_FAST : BCMA_CLKMODE_DYNAMIC;
		FUNC2(cc->core, clkmode);
		if (ticks > maxt)
			ticks = maxt;
		/* instant NMI */
		FUNC0(cc, BCMA_CC_WATCHDOG, ticks);
	}
	return ticks;
}