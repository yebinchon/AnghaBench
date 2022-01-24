#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  fw_ver_str; int /*<<< orphan*/  id; } ;
struct wl1271 {scalar_t__ state; int plt; int plt_mode; int /*<<< orphan*/  mutex; TYPE_3__ chip; TYPE_2__* ops; TYPE_1__* hw; } ;
struct wiphy {int /*<<< orphan*/  fw_version; int /*<<< orphan*/  hw_version; } ;
typedef  enum plt_mode { ____Placeholder_plt_mode } plt_mode ;
struct TYPE_5__ {int (* plt_init ) (struct wl1271*) ;} ;
struct TYPE_4__ {struct wiphy* wiphy; } ;

/* Variables and functions */
 int EBUSY ; 
 int PLT_OFF ; 
 int WL1271_BOOT_RETRIES ; 
 scalar_t__ WLCORE_STATE_OFF ; 
 int WLCORE_STATE_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct wl1271*) ; 
 int FUNC7 (struct wl1271*,int) ; 

int FUNC8(struct wl1271 *wl, const enum plt_mode plt_mode)
{
	int retries = WL1271_BOOT_RETRIES;
	struct wiphy *wiphy = wl->hw->wiphy;

	static const char* const PLT_MODE[] = {
		"PLT_OFF",
		"PLT_ON",
		"PLT_FEM_DETECT"
	};

	int ret;

	FUNC0(&wl->mutex);

	FUNC5("power up");

	if (wl->state != WLCORE_STATE_OFF) {
		FUNC4("cannot go into PLT state because not "
			     "in off state: %d", wl->state);
		ret = -EBUSY;
		goto out;
	}

	/* Indicate to lower levels that we are now in PLT mode */
	wl->plt = true;
	wl->plt_mode = plt_mode;

	while (retries) {
		retries--;
		ret = FUNC7(wl, true);
		if (ret < 0)
			goto power_off;

		ret = wl->ops->plt_init(wl);
		if (ret < 0)
			goto power_off;

		wl->state = WLCORE_STATE_ON;
		FUNC5("firmware booted in PLT mode %s (%s)",
			      PLT_MODE[plt_mode],
			      wl->chip.fw_ver_str);

		/* update hw/fw version info in wiphy struct */
		wiphy->hw_version = wl->chip.id;
		FUNC2(wiphy->fw_version, wl->chip.fw_ver_str,
			sizeof(wiphy->fw_version));

		goto out;

power_off:
		FUNC6(wl);
	}

	wl->plt = false;
	wl->plt_mode = PLT_OFF;

	FUNC4("firmware boot in PLT mode failed despite %d retries",
		     WL1271_BOOT_RETRIES);
out:
	FUNC1(&wl->mutex);

	return ret;
}