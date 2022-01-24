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
struct timespec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CORE_MOD ; 
 int /*<<< orphan*/  MPU_MOD ; 
 unsigned long long NSEC_PER_USEC ; 
 int /*<<< orphan*/  OMAP24XX_PM_WKST2 ; 
 int OMAP_LOGICRETSTATE ; 
 int OMAP_POWERSTATE_SHIFT ; 
 int /*<<< orphan*/  PM_PWSTCTRL ; 
 int /*<<< orphan*/  PM_WKST ; 
 int /*<<< orphan*/  PM_WKST1 ; 
 int /*<<< orphan*/  WKUP_MOD ; 
 int /*<<< orphan*/  FUNC0 (struct timespec*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ omap2_pm_debug ; 
 int /*<<< orphan*/  FUNC3 (int,int,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct timespec FUNC6 (struct timespec,struct timespec) ; 
 unsigned long long FUNC7 (struct timespec*) ; 

__attribute__((used)) static void FUNC8(void)
{
	int only_idle = 0;
	struct timespec ts_preidle, ts_postidle, ts_idle;

	/* Putting MPU into the WFI state while a transfer is active
	 * seems to cause the I2C block to timeout. Why? Good question. */
	if (FUNC2())
		return;

	/* The peripherals seem not to be able to wake up the MPU when
	 * it is in retention mode. */
	if (FUNC1()) {
		/* REVISIT: These write to reserved bits? */
		FUNC5(0xffffffff, CORE_MOD, PM_WKST1);
		FUNC5(0xffffffff, CORE_MOD, OMAP24XX_PM_WKST2);
		FUNC5(0xffffffff, WKUP_MOD, PM_WKST);

		/* Try to enter MPU retention */
		FUNC5((0x01 << OMAP_POWERSTATE_SHIFT) |
				  OMAP_LOGICRETSTATE,
				  MPU_MOD, PM_PWSTCTRL);
	} else {
		/* Block MPU retention */

		FUNC5(OMAP_LOGICRETSTATE, MPU_MOD, PM_PWSTCTRL);
		only_idle = 1;
	}

	if (omap2_pm_debug) {
		FUNC3(only_idle ? 2 : 1, 0, 0);
		FUNC0(&ts_preidle);
	}

	FUNC4();

	if (omap2_pm_debug) {
		unsigned long long tmp;

		FUNC0(&ts_postidle);
		ts_idle = FUNC6(ts_postidle, ts_preidle);
		tmp = FUNC7(&ts_idle) * NSEC_PER_USEC;
		FUNC3(only_idle ? 2 : 1, 1, tmp);
	}
}