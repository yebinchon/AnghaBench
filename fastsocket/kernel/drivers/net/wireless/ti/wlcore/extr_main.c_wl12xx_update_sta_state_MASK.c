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
struct wl12xx_vif {scalar_t__ bss_type; scalar_t__ role_id; int /*<<< orphan*/  channel; int /*<<< orphan*/  band; int /*<<< orphan*/  flags; } ;
struct wl1271_station {int /*<<< orphan*/  hlid; } ;
struct wl1271 {int /*<<< orphan*/  roc_map; } ;
struct ieee80211_sta {int /*<<< orphan*/  ht_cap; scalar_t__ drv_priv; } ;
typedef  enum ieee80211_sta_state { ____Placeholder_ieee80211_sta_state } ieee80211_sta_state ;

/* Variables and functions */
 scalar_t__ BSS_TYPE_AP_BSS ; 
 scalar_t__ BSS_TYPE_STA_BSS ; 
 int IEEE80211_STA_ASSOC ; 
 int IEEE80211_STA_AUTHORIZED ; 
 int IEEE80211_STA_NONE ; 
 int IEEE80211_STA_NOTEXIST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ WL12XX_INVALID_ROLE_ID ; 
 scalar_t__ WL12XX_MAX_ROLES ; 
 int /*<<< orphan*/  WLVIF_FLAG_STA_AUTHORIZED ; 
 int /*<<< orphan*/  WLVIF_FLAG_STA_STATE_SENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct wl1271*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct wl1271*,struct wl12xx_vif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wl1271*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct wl1271*,struct wl12xx_vif*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct wl1271*,struct wl12xx_vif*) ; 
 int FUNC10 (struct wl1271*,struct wl12xx_vif*,struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC11 (struct wl1271*,struct wl12xx_vif*,struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC12 (struct wl1271*,struct wl12xx_vif*,struct wl1271_station*,int) ; 

__attribute__((used)) static int FUNC13(struct wl1271 *wl,
				   struct wl12xx_vif *wlvif,
				   struct ieee80211_sta *sta,
				   enum ieee80211_sta_state old_state,
				   enum ieee80211_sta_state new_state)
{
	struct wl1271_station *wl_sta;
	bool is_ap = wlvif->bss_type == BSS_TYPE_AP_BSS;
	bool is_sta = wlvif->bss_type == BSS_TYPE_STA_BSS;
	int ret;

	wl_sta = (struct wl1271_station *)sta->drv_priv;

	/* Add station (AP mode) */
	if (is_ap &&
	    old_state == IEEE80211_STA_NOTEXIST &&
	    new_state == IEEE80211_STA_NONE) {
		ret = FUNC10(wl, wlvif, sta);
		if (ret)
			return ret;

		FUNC12(wl, wlvif, wl_sta, true);
	}

	/* Remove station (AP mode) */
	if (is_ap &&
	    old_state == IEEE80211_STA_NONE &&
	    new_state == IEEE80211_STA_NOTEXIST) {
		/* must not fail */
		FUNC11(wl, wlvif, sta);

		FUNC12(wl, wlvif, wl_sta, false);
	}

	/* Authorize station (AP mode) */
	if (is_ap &&
	    new_state == IEEE80211_STA_AUTHORIZED) {
		ret = FUNC6(wl, wlvif, wl_sta->hlid);
		if (ret < 0)
			return ret;

		ret = FUNC5(wl, &sta->ht_cap, true,
						     wl_sta->hlid);
		if (ret)
			return ret;

		FUNC12(wl, wlvif, wl_sta, false);
	}

	/* Authorize station */
	if (is_sta &&
	    new_state == IEEE80211_STA_AUTHORIZED) {
		FUNC3(WLVIF_FLAG_STA_AUTHORIZED, &wlvif->flags);
		ret = FUNC9(wl, wlvif);
		if (ret)
			return ret;
	}

	if (is_sta &&
	    old_state == IEEE80211_STA_AUTHORIZED &&
	    new_state == IEEE80211_STA_ASSOC) {
		FUNC1(WLVIF_FLAG_STA_AUTHORIZED, &wlvif->flags);
		FUNC1(WLVIF_FLAG_STA_STATE_SENT, &wlvif->flags);
	}

	/* clear ROCs on failure or authorization */
	if (is_sta &&
	    (new_state == IEEE80211_STA_AUTHORIZED ||
	     new_state == IEEE80211_STA_NOTEXIST)) {
		if (FUNC4(wlvif->role_id, wl->roc_map))
			FUNC7(wl, wlvif->role_id);
	}

	if (is_sta &&
	    old_state == IEEE80211_STA_NOTEXIST &&
	    new_state == IEEE80211_STA_NONE) {
		if (FUNC2(wl->roc_map,
				   WL12XX_MAX_ROLES) >= WL12XX_MAX_ROLES) {
			FUNC0(wlvif->role_id == WL12XX_INVALID_ROLE_ID);
			FUNC8(wl, wlvif, wlvif->role_id,
				   wlvif->band, wlvif->channel);
		}
	}
	return 0;
}