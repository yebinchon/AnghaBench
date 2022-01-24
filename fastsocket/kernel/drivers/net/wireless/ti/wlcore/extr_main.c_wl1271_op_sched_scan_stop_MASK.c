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
struct wl1271 {scalar_t__ state; int /*<<< orphan*/  mutex; TYPE_1__* ops; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* sched_scan_stop ) (struct wl1271*,struct wl12xx_vif*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 scalar_t__ WLCORE_STATE_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct wl1271*,struct wl12xx_vif*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wl1271*) ; 
 int FUNC6 (struct wl1271*) ; 
 struct wl12xx_vif* FUNC7 (struct ieee80211_vif*) ; 

__attribute__((used)) static void FUNC8(struct ieee80211_hw *hw,
				      struct ieee80211_vif *vif)
{
	struct wl1271 *wl = hw->priv;
	struct wl12xx_vif *wlvif = FUNC7(vif);
	int ret;

	FUNC4(DEBUG_MAC80211, "wl1271_op_sched_scan_stop");

	FUNC0(&wl->mutex);

	if (FUNC3(wl->state != WLCORE_STATE_ON))
		goto out;

	ret = FUNC6(wl);
	if (ret < 0)
		goto out;

	wl->ops->sched_scan_stop(wl, wlvif);

	FUNC5(wl);
out:
	FUNC1(&wl->mutex);
}