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
struct TYPE_3__ {int /*<<< orphan*/  state; } ;
struct TYPE_4__ {TYPE_1__ sg; } ;
struct wl1271 {TYPE_2__ conf; } ;
struct acx_bt_wlan_coex {int /*<<< orphan*/  enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_SG_ENABLE ; 
 int /*<<< orphan*/  CONF_SG_DISABLE ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct acx_bt_wlan_coex*) ; 
 struct acx_bt_wlan_coex* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ,struct acx_bt_wlan_coex*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct wl1271 *wl, bool enable)
{
	struct acx_bt_wlan_coex *pta;
	int ret;

	FUNC3(DEBUG_ACX, "acx sg enable");

	pta = FUNC1(sizeof(*pta), GFP_KERNEL);
	if (!pta) {
		ret = -ENOMEM;
		goto out;
	}

	if (enable)
		pta->enable = wl->conf.sg.state;
	else
		pta->enable = CONF_SG_DISABLE;

	ret = FUNC2(wl, ACX_SG_ENABLE, pta, sizeof(*pta));
	if (ret < 0) {
		FUNC4("failed to set softgemini enable: %d", ret);
		goto out;
	}

out:
	FUNC0(pta);
	return ret;
}