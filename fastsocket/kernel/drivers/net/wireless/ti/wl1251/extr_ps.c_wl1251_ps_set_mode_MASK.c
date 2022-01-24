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
struct wl1251 {int station_mode; int /*<<< orphan*/  listen_int; } ;
typedef  enum wl1251_station_mode { ____Placeholder_wl1251_station_mode } wl1251_station_mode ;

/* Variables and functions */
 int /*<<< orphan*/  CHIP_ACTIVE_MODE ; 
 int /*<<< orphan*/  CHIP_POWER_SAVE_MODE ; 
 int /*<<< orphan*/  CMD_DISCONNECT ; 
 int /*<<< orphan*/  DEBUG_PSM ; 
#define  STATION_ACTIVE_MODE 130 
#define  STATION_IDLE 129 
#define  STATION_POWER_SAVE_MODE 128 
 int /*<<< orphan*/  WAKE_UP_EVENT_DTIM_BITMAP ; 
 int /*<<< orphan*/  WL1251_ACX_BET_DISABLE ; 
 int /*<<< orphan*/  WL1251_ACX_BET_ENABLE ; 
 int /*<<< orphan*/  WL1251_DEFAULT_BET_CONSECUTIVE ; 
 int /*<<< orphan*/  WL1251_PSM_CAM ; 
 int /*<<< orphan*/  WL1251_PSM_ELP ; 
 int FUNC0 (struct wl1251*,int) ; 
 int FUNC1 (struct wl1251*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1251*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1251*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct wl1251*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct wl1251*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

int FUNC7(struct wl1251 *wl, enum wl1251_station_mode mode)
{
	int ret;

	switch (mode) {
	case STATION_POWER_SAVE_MODE:
		FUNC6(DEBUG_PSM, "entering psm");

		/* enable beacon filtering */
		ret = FUNC0(wl, true);
		if (ret < 0)
			return ret;

		ret = FUNC3(wl,
						    WAKE_UP_EVENT_DTIM_BITMAP,
						    wl->listen_int);
		if (ret < 0)
			return ret;

		ret = FUNC1(wl, WL1251_ACX_BET_ENABLE,
					    WL1251_DEFAULT_BET_CONSECUTIVE);
		if (ret < 0)
			return ret;

		ret = FUNC4(wl, CHIP_POWER_SAVE_MODE);
		if (ret < 0)
			return ret;

		ret = FUNC2(wl, WL1251_PSM_ELP);
		if (ret < 0)
			return ret;
		break;
	case STATION_IDLE:
		FUNC6(DEBUG_PSM, "entering idle");

		ret = FUNC2(wl, WL1251_PSM_ELP);
		if (ret < 0)
			return ret;

		ret = FUNC5(wl, CMD_DISCONNECT, NULL, 0);
		if (ret < 0)
			return ret;
		break;
	case STATION_ACTIVE_MODE:
	default:
		FUNC6(DEBUG_PSM, "leaving psm");

		ret = FUNC2(wl, WL1251_PSM_CAM);
		if (ret < 0)
			return ret;

		/* disable BET */
		ret = FUNC1(wl, WL1251_ACX_BET_DISABLE,
					    WL1251_DEFAULT_BET_CONSECUTIVE);
		if (ret < 0)
			return ret;

		/* disable beacon filtering */
		ret = FUNC0(wl, false);
		if (ret < 0)
			return ret;

		ret = FUNC3(wl,
						    WAKE_UP_EVENT_DTIM_BITMAP,
						    wl->listen_int);
		if (ret < 0)
			return ret;

		ret = FUNC4(wl, CHIP_ACTIVE_MODE);
		if (ret < 0)
			return ret;

		break;
	}
	wl->station_mode = mode;

	return ret;
}