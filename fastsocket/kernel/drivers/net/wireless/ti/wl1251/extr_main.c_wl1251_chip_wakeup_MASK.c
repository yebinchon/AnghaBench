#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wl1251 {int chip_id; int /*<<< orphan*/  use_eeprom; int /*<<< orphan*/ * nvs; int /*<<< orphan*/ * fw; TYPE_1__* if_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* reset ) (struct wl1251*) ;} ;

/* Variables and functions */
#define  CHIP_ID_1251_PG10 130 
#define  CHIP_ID_1251_PG11 129 
#define  CHIP_ID_1251_PG12 128 
 int /*<<< orphan*/  CHIP_ID_B ; 
 int /*<<< orphan*/  DEBUG_BOOT ; 
 int ENODEV ; 
 int /*<<< orphan*/  REGISTERS_BASE ; 
 int /*<<< orphan*/  REGISTERS_DOWN_SIZE ; 
 int /*<<< orphan*/  WL1251_POWER_ON_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wl1251*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (struct wl1251*) ; 
 int FUNC5 (struct wl1251*) ; 
 int /*<<< orphan*/  FUNC6 (struct wl1251*) ; 
 int FUNC7 (struct wl1251*) ; 
 int FUNC8 (struct wl1251*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wl1251*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct wl1251 *wl)
{
	int ret;

	ret = FUNC7(wl);
	if (ret < 0)
		return ret;

	FUNC0(WL1251_POWER_ON_SLEEP);
	wl->if_ops->reset(wl);

	/* We don't need a real memory partition here, because we only want
	 * to use the registers at this point. */
	FUNC9(wl,
			     0x00000000,
			     0x00000000,
			     REGISTERS_BASE,
			     REGISTERS_DOWN_SIZE);

	/* ELP module wake up */
	FUNC6(wl);

	/* whal_FwCtrl_BootSm() */

	/* 0. read chip id from CHIP_ID */
	wl->chip_id = FUNC8(wl, CHIP_ID_B);

	/* 1. check if chip id is valid */

	switch (wl->chip_id) {
	case CHIP_ID_1251_PG12:
		FUNC2(DEBUG_BOOT, "chip id 0x%x (1251 PG12)",
			     wl->chip_id);
		break;
	case CHIP_ID_1251_PG11:
		FUNC2(DEBUG_BOOT, "chip id 0x%x (1251 PG11)",
			     wl->chip_id);
		break;
	case CHIP_ID_1251_PG10:
	default:
		FUNC3("unsupported chip id: 0x%x", wl->chip_id);
		ret = -ENODEV;
		goto out;
	}

	if (wl->fw == NULL) {
		ret = FUNC4(wl);
		if (ret < 0)
			goto out;
	}

	if (wl->nvs == NULL && !wl->use_eeprom) {
		/* No NVS from netlink, try to get it from the filesystem */
		ret = FUNC5(wl);
		if (ret < 0)
			goto out;
	}

out:
	return ret;
}