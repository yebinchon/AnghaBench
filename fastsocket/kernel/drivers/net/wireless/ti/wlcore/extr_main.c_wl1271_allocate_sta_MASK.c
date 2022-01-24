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
struct TYPE_3__ {int /*<<< orphan*/  sta_hlid_map; } ;
struct wl12xx_vif {TYPE_1__ ap; } ;
struct wl1271_station {size_t hlid; int /*<<< orphan*/  total_freed_pkts; } ;
struct wl1271 {scalar_t__ active_sta_count; TYPE_2__* links; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; scalar_t__ drv_priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  total_freed_pkts; } ;

/* Variables and functions */
 scalar_t__ AP_MAX_STATIONS ; 
 int EBUSY ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct wl1271*,struct wl12xx_vif*,size_t*) ; 

__attribute__((used)) static int FUNC4(struct wl1271 *wl,
			     struct wl12xx_vif *wlvif,
			     struct ieee80211_sta *sta)
{
	struct wl1271_station *wl_sta;
	int ret;


	if (wl->active_sta_count >= AP_MAX_STATIONS) {
		FUNC2("could not allocate HLID - too much stations");
		return -EBUSY;
	}

	wl_sta = (struct wl1271_station *)sta->drv_priv;
	ret = FUNC3(wl, wlvif, &wl_sta->hlid);
	if (ret < 0) {
		FUNC2("could not allocate HLID - too many links");
		return -EBUSY;
	}

	/* use the previous security seq, if this is a recovery/resume */
	wl->links[wl_sta->hlid].total_freed_pkts = wl_sta->total_freed_pkts;

	FUNC1(wl_sta->hlid, wlvif->ap.sta_hlid_map);
	FUNC0(wl->links[wl_sta->hlid].addr, sta->addr, ETH_ALEN);
	wl->active_sta_count++;
	return 0;
}