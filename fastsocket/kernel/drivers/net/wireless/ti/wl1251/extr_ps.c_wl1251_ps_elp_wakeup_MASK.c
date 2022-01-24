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
struct wl1251 {int elp; int /*<<< orphan*/  elp_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_PSM ; 
 int /*<<< orphan*/  ELPCTRL_WAKE_UP ; 
 int ELPCTRL_WLAN_READY ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HW_ACCESS_ELP_CTRL_REG_ADDR ; 
 int /*<<< orphan*/  WL1251_WAKEUP_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (struct wl1251*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wl1251*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct wl1251 *wl)
{
	unsigned long timeout, start;
	u32 elp_reg;

	FUNC0(&wl->elp_work);

	if (!wl->elp)
		return 0;

	FUNC5(DEBUG_PSM, "waking up chip from elp");

	start = jiffies;
	timeout = jiffies + FUNC2(WL1251_WAKEUP_TIMEOUT);

	FUNC8(wl, HW_ACCESS_ELP_CTRL_REG_ADDR, ELPCTRL_WAKE_UP);

	elp_reg = FUNC7(wl, HW_ACCESS_ELP_CTRL_REG_ADDR);

	/*
	 * FIXME: we should wait for irq from chip but, as a temporary
	 * solution to simplify locking, let's poll instead
	 */
	while (!(elp_reg & ELPCTRL_WLAN_READY)) {
		if (FUNC4(jiffies, timeout)) {
			FUNC6("elp wakeup timeout");
			return -ETIMEDOUT;
		}
		FUNC3(1);
		elp_reg = FUNC7(wl, HW_ACCESS_ELP_CTRL_REG_ADDR);
	}

	FUNC5(DEBUG_PSM, "wakeup time: %u ms",
		     FUNC1(jiffies - start));

	wl->elp = false;

	return 0;
}