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
typedef  size_t u8 ;
struct wl12xx_vif {int dummy; } ;
struct wl1271 {int /*<<< orphan*/  ap_ps_map; TYPE_1__* links; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  allocated_pkts; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_PSM ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ *) ; 
 struct ieee80211_sta* FUNC1 (struct ieee80211_vif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_sta*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wl1271*,size_t) ; 
 struct ieee80211_vif* FUNC9 (struct wl12xx_vif*) ; 

void FUNC10(struct wl1271 *wl, struct wl12xx_vif *wlvif,
			  u8 hlid, bool clean_queues)
{
	struct ieee80211_sta *sta;
	struct ieee80211_vif *vif = FUNC9(wlvif);

	if (FUNC5(hlid, &wl->ap_ps_map))
		return;

	FUNC6(DEBUG_PSM, "start mac80211 PSM on hlid %d pkts %d "
		     "clean_queues %d", hlid, wl->links[hlid].allocated_pkts,
		     clean_queues);

	FUNC3();
	sta = FUNC1(vif, wl->links[hlid].addr);
	if (!sta) {
		FUNC7("could not find sta %pM for starting ps",
			     wl->links[hlid].addr);
		FUNC4();
		return;
	}

	FUNC2(sta, true);
	FUNC4();

	/* do we want to filter all frames from this link's queues? */
	if (clean_queues)
		FUNC8(wl, hlid);

	FUNC0(hlid, &wl->ap_ps_map);
}