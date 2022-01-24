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
struct wl12xx_vif {int dummy; } ;
struct TYPE_4__ {scalar_t__ state; int /*<<< orphan*/ * req; int /*<<< orphan*/  scanned_ch; } ;
struct wl1271 {scalar_t__ state; int /*<<< orphan*/  scan_complete_work; int /*<<< orphan*/  mutex; int /*<<< orphan*/  hw; TYPE_2__ scan; int /*<<< orphan*/ * scan_wlvif; TYPE_1__* ops; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct TYPE_3__ {int (* scan_stop ) (struct wl1271*,struct wl12xx_vif*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 scalar_t__ WL1271_SCAN_STATE_DONE ; 
 scalar_t__ WL1271_SCAN_STATE_IDLE ; 
 scalar_t__ WLCORE_STATE_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct wl1271*,struct wl12xx_vif*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct wl1271*) ; 
 int FUNC9 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC10 (struct wl1271*) ; 
 struct wl12xx_vif* FUNC11 (struct ieee80211_vif*) ; 

__attribute__((used)) static void FUNC12(struct ieee80211_hw *hw,
				     struct ieee80211_vif *vif)
{
	struct wl1271 *wl = hw->priv;
	struct wl12xx_vif *wlvif = FUNC11(vif);
	int ret;

	FUNC7(DEBUG_MAC80211, "mac80211 cancel hw scan");

	FUNC3(&wl->mutex);

	if (FUNC6(wl->state != WLCORE_STATE_ON))
		goto out;

	if (wl->scan.state == WL1271_SCAN_STATE_IDLE)
		goto out;

	ret = FUNC9(wl);
	if (ret < 0)
		goto out;

	if (wl->scan.state != WL1271_SCAN_STATE_DONE) {
		ret = wl->ops->scan_stop(wl, wlvif);
		if (ret < 0)
			goto out_sleep;
	}

	/*
	 * Rearm the tx watchdog just before idling scan. This
	 * prevents just-finished scans from triggering the watchdog
	 */
	FUNC10(wl);

	wl->scan.state = WL1271_SCAN_STATE_IDLE;
	FUNC2(wl->scan.scanned_ch, 0, sizeof(wl->scan.scanned_ch));
	wl->scan_wlvif = NULL;
	wl->scan.req = NULL;
	FUNC1(wl->hw, true);

out_sleep:
	FUNC8(wl);
out:
	FUNC4(&wl->mutex);

	FUNC0(&wl->scan_complete_work);
}