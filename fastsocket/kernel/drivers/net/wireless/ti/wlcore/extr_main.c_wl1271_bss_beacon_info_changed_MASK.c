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
typedef  int u32 ;
struct wl12xx_vif {scalar_t__ bss_type; int /*<<< orphan*/  basic_rate_set; int /*<<< orphan*/  beacon_int; } ;
struct wl1271 {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_bss_conf {int /*<<< orphan*/  beacon_int; } ;

/* Variables and functions */
 int BSS_CHANGED_AP_PROBE_RESP ; 
 int BSS_CHANGED_BEACON ; 
 int BSS_CHANGED_BEACON_INT ; 
 scalar_t__ BSS_TYPE_AP_BSS ; 
 int /*<<< orphan*/  DEBUG_MASTER ; 
 int /*<<< orphan*/  FUNC0 (struct wl1271*,int,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (struct wl1271*,int /*<<< orphan*/ ) ; 
 struct wl12xx_vif* FUNC4 (struct ieee80211_vif*) ; 
 int FUNC5 (struct wl1271*,struct ieee80211_vif*,int) ; 

__attribute__((used)) static int FUNC6(struct wl1271 *wl,
					  struct ieee80211_vif *vif,
					  struct ieee80211_bss_conf *bss_conf,
					  u32 changed)
{
	struct wl12xx_vif *wlvif = FUNC4(vif);
	bool is_ap = (wlvif->bss_type == BSS_TYPE_AP_BSS);
	int ret = 0;

	if (changed & BSS_CHANGED_BEACON_INT) {
		FUNC1(DEBUG_MASTER, "beacon interval updated: %d",
			bss_conf->beacon_int);

		wlvif->beacon_int = bss_conf->beacon_int;
	}

	if ((changed & BSS_CHANGED_AP_PROBE_RESP) && is_ap) {
		u32 rate = FUNC3(wl, wlvif->basic_rate_set);

		FUNC0(wl, rate, vif);
	}

	if (changed & BSS_CHANGED_BEACON) {
		ret = FUNC5(wl, vif, is_ap);
		if (ret < 0)
			goto out;
	}

out:
	if (ret != 0)
		FUNC2("beacon info change failed: %d", ret);
	return ret;
}