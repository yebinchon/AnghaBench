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
struct wl12xx_vif {int dummy; } ;
struct wl1271 {scalar_t__ state; int /*<<< orphan*/  mutex; struct wl12xx_vif* sched_vif; TYPE_1__* ops; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sched_scan_ies {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct cfg80211_sched_scan_request {int dummy; } ;
struct TYPE_2__ {int (* sched_scan_start ) (struct wl1271*,struct wl12xx_vif*,struct cfg80211_sched_scan_request*,struct ieee80211_sched_scan_ies*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int EAGAIN ; 
 scalar_t__ WLCORE_STATE_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct wl1271*,struct wl12xx_vif*,struct cfg80211_sched_scan_request*,struct ieee80211_sched_scan_ies*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wl1271*) ; 
 int FUNC6 (struct wl1271*) ; 
 struct wl12xx_vif* FUNC7 (struct ieee80211_vif*) ; 

__attribute__((used)) static int FUNC8(struct ieee80211_hw *hw,
				      struct ieee80211_vif *vif,
				      struct cfg80211_sched_scan_request *req,
				      struct ieee80211_sched_scan_ies *ies)
{
	struct wl1271 *wl = hw->priv;
	struct wl12xx_vif *wlvif = FUNC7(vif);
	int ret;

	FUNC4(DEBUG_MAC80211, "wl1271_op_sched_scan_start");

	FUNC0(&wl->mutex);

	if (FUNC3(wl->state != WLCORE_STATE_ON)) {
		ret = -EAGAIN;
		goto out;
	}

	ret = FUNC6(wl);
	if (ret < 0)
		goto out;

	ret = wl->ops->sched_scan_start(wl, wlvif, req, ies);
	if (ret < 0)
		goto out_sleep;

	wl->sched_vif = wlvif;

out_sleep:
	FUNC5(wl);
out:
	FUNC1(&wl->mutex);
	return ret;
}