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
typedef  size_t u8 ;
struct TYPE_3__ {int /*<<< orphan*/ * sta_hlid_map; } ;
struct wl12xx_vif {TYPE_1__ ap; } ;
struct wl1271_station {int /*<<< orphan*/  total_freed_pkts; } ;
struct wl1271 {unsigned long ap_ps_map; scalar_t__ active_sta_count; int /*<<< orphan*/  flags; TYPE_2__* links; int /*<<< orphan*/  ap_fw_ps_map; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  total_freed_pkts; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 size_t WL1271_FLAG_RECOVERY_IN_PROGRESS ; 
 scalar_t__ WL1271_TX_SQN_POST_RECOVERY_PADDING ; 
 int /*<<< orphan*/  FUNC0 (size_t,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ *) ; 
 struct ieee80211_sta* FUNC2 (struct ieee80211_vif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct wl1271*,struct wl12xx_vif*,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (struct wl1271*) ; 
 struct ieee80211_vif* FUNC8 (struct wl12xx_vif*) ; 

void FUNC9(struct wl1271 *wl, struct wl12xx_vif *wlvif, u8 hlid)
{
	struct wl1271_station *wl_sta;
	struct ieee80211_sta *sta;
	struct ieee80211_vif *vif = FUNC8(wlvif);

	if (!FUNC5(hlid, wlvif->ap.sta_hlid_map))
		return;

	FUNC1(hlid, wlvif->ap.sta_hlid_map);
	FUNC0(hlid, &wl->ap_ps_map);
	FUNC0(hlid, (unsigned long *)&wl->ap_fw_ps_map);

	/*
	 * save the last used PN in the private part of iee80211_sta,
	 * in case of recovery/suspend
	 */
	FUNC3();
	sta = FUNC2(vif, wl->links[hlid].addr);
	if (sta) {
		wl_sta = (void *)sta->drv_priv;
		wl_sta->total_freed_pkts = wl->links[hlid].total_freed_pkts;

		/*
		 * increment the initial seq number on recovery to account for
		 * transmitted packets that we haven't yet got in the FW status
		 */
		if (FUNC5(WL1271_FLAG_RECOVERY_IN_PROGRESS, &wl->flags))
			wl_sta->total_freed_pkts +=
					WL1271_TX_SQN_POST_RECOVERY_PADDING;
	}
	FUNC4();

	FUNC6(wl, wlvif, &hlid);
	wl->active_sta_count--;

	/*
	 * rearm the tx watchdog when the last STA is freed - give the FW a
	 * chance to return STA-buffered packets before complaining.
	 */
	if (wl->active_sta_count == 0)
		FUNC7(wl);
}