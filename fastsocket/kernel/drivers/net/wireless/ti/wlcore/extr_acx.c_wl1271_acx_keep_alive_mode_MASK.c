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
struct wl12xx_vif {int /*<<< orphan*/  role_id; } ;
struct wl1271_acx_keep_alive_mode {int enabled; int /*<<< orphan*/  role_id; } ;
struct wl1271 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACX_KEEP_ALIVE_MODE ; 
 int /*<<< orphan*/  DEBUG_ACX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct wl1271_acx_keep_alive_mode*) ; 
 struct wl1271_acx_keep_alive_mode* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct wl1271*,int /*<<< orphan*/ ,struct wl1271_acx_keep_alive_mode*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct wl1271 *wl, struct wl12xx_vif *wlvif,
			       bool enable)
{
	struct wl1271_acx_keep_alive_mode *acx = NULL;
	int ret = 0;

	FUNC3(DEBUG_ACX, "acx keep alive mode: %d", enable);

	acx = FUNC1(sizeof(*acx), GFP_KERNEL);
	if (!acx) {
		ret = -ENOMEM;
		goto out;
	}

	acx->role_id = wlvif->role_id;
	acx->enabled = enable;

	ret = FUNC2(wl, ACX_KEEP_ALIVE_MODE, acx, sizeof(*acx));
	if (ret < 0) {
		FUNC4("acx keep alive mode failed: %d", ret);
		goto out;
	}

out:
	FUNC0(acx);
	return ret;
}