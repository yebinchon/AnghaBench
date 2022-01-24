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
typedef  int /*<<< orphan*/  u8 ;
struct wl1271 {scalar_t__ state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  roc_map; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct cfg80211_scan_request {TYPE_1__* ssids; scalar_t__ n_ssids; } ;
struct TYPE_2__ {size_t ssid_len; int /*<<< orphan*/ * ssid; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int EAGAIN ; 
 int EBUSY ; 
 scalar_t__ WL12XX_MAX_ROLES ; 
 scalar_t__ WLCORE_STATE_ON ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wl1271*) ; 
 int FUNC6 (struct wl1271*) ; 
 int FUNC7 (struct wl1271*,struct ieee80211_vif*,int /*<<< orphan*/ *,size_t,struct cfg80211_scan_request*) ; 

__attribute__((used)) static int FUNC8(struct ieee80211_hw *hw,
			     struct ieee80211_vif *vif,
			     struct cfg80211_scan_request *req)
{
	struct wl1271 *wl = hw->priv;
	int ret;
	u8 *ssid = NULL;
	size_t len = 0;

	FUNC4(DEBUG_MAC80211, "mac80211 hw scan");

	if (req->n_ssids) {
		ssid = req->ssids[0].ssid;
		len = req->ssids[0].ssid_len;
	}

	FUNC1(&wl->mutex);

	if (FUNC3(wl->state != WLCORE_STATE_ON)) {
		/*
		 * We cannot return -EBUSY here because cfg80211 will expect
		 * a call to ieee80211_scan_completed if we do - in this case
		 * there won't be any call.
		 */
		ret = -EAGAIN;
		goto out;
	}

	ret = FUNC6(wl);
	if (ret < 0)
		goto out;

	/* fail if there is any role in ROC */
	if (FUNC0(wl->roc_map, WL12XX_MAX_ROLES) < WL12XX_MAX_ROLES) {
		/* don't allow scanning right now */
		ret = -EBUSY;
		goto out_sleep;
	}

	ret = FUNC7(hw->priv, vif, ssid, len, req);
out_sleep:
	FUNC5(wl);
out:
	FUNC2(&wl->mutex);

	return ret;
}