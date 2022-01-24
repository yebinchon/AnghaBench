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
typedef  scalar_t__ u8 ;
struct wl12xx_vif {scalar_t__ bss_type; int /*<<< orphan*/  flags; int /*<<< orphan*/  list; int /*<<< orphan*/  role_id; struct wl1271* wl; } ;
struct wl1271 {scalar_t__ state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  sta_count; int /*<<< orphan*/  ap_count; int /*<<< orphan*/  wlvif_list; TYPE_1__* addresses; int /*<<< orphan*/  recovery_work; int /*<<< orphan*/  flags; } ;
struct vif_counter_data {int dummy; } ;
struct ieee80211_vif {int driver_flags; int /*<<< orphan*/  addr; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 scalar_t__ BSS_TYPE_AP_BSS ; 
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int IEEE80211_VIF_BEACON_FILTER ; 
 int IEEE80211_VIF_SUPPORTS_CQM_RSSI ; 
 int /*<<< orphan*/  WL1271_FLAG_INTENDED_FW_RECOVERY ; 
 int /*<<< orphan*/  WL1271_FLAG_RECOVERY_IN_PROGRESS ; 
 scalar_t__ WL12XX_INVALID_ROLE_TYPE ; 
 scalar_t__ WLCORE_STATE_OFF ; 
 int /*<<< orphan*/  WLVIF_FLAG_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct wl1271*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC9 (struct wl1271*) ; 
 int FUNC10 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct wl1271*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct wl1271*) ; 
 scalar_t__ FUNC14 (struct wl1271*,struct wl12xx_vif*) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_hw*,struct ieee80211_vif*,struct vif_counter_data*) ; 
 int FUNC16 (struct wl1271*) ; 
 int FUNC17 (struct wl1271*,struct ieee80211_vif*) ; 
 scalar_t__ FUNC18 (struct wl1271*,struct vif_counter_data,int) ; 
 struct wl12xx_vif* FUNC19 (struct ieee80211_vif*) ; 
 int FUNC20 (struct wl1271*,struct wl12xx_vif*) ; 

__attribute__((used)) static int FUNC21(struct ieee80211_hw *hw,
				   struct ieee80211_vif *vif)
{
	struct wl1271 *wl = hw->priv;
	struct wl12xx_vif *wlvif = FUNC19(vif);
	struct vif_counter_data vif_count;
	int ret = 0;
	u8 role_type;

	vif->driver_flags |= IEEE80211_VIF_BEACON_FILTER |
			     IEEE80211_VIF_SUPPORTS_CQM_RSSI;

	FUNC7(DEBUG_MAC80211, "mac80211 add interface type %d mac %pM",
		     FUNC0(vif), vif->addr);

	FUNC15(hw, vif, &vif_count);

	FUNC3(&wl->mutex);
	ret = FUNC10(wl);
	if (ret < 0)
		goto out_unlock;

	/*
	 * in some very corner case HW recovery scenarios its possible to
	 * get here before __wl1271_op_remove_interface is complete, so
	 * opt out if that is the case.
	 */
	if (FUNC6(WL1271_FLAG_RECOVERY_IN_PROGRESS, &wl->flags) ||
	    FUNC6(WLVIF_FLAG_INITIALIZED, &wlvif->flags)) {
		ret = -EBUSY;
		goto out;
	}


	ret = FUNC17(wl, vif);
	if (ret < 0)
		goto out;

	wlvif->wl = wl;
	role_type = FUNC14(wl, wlvif);
	if (role_type == WL12XX_INVALID_ROLE_TYPE) {
		ret = -EINVAL;
		goto out;
	}

	ret = FUNC20(wl, wlvif);
	if (ret < 0)
		goto out;

	if (FUNC18(wl, vif_count, true)) {
		FUNC13(wl);
		FUNC5(WL1271_FLAG_INTENDED_FW_RECOVERY, &wl->flags);
		FUNC4(&wl->mutex);
		FUNC11(&wl->recovery_work);
		return 0;
	}

	/*
	 * TODO: after the nvs issue will be solved, move this block
	 * to start(), and make sure here the driver is ON.
	 */
	if (wl->state == WLCORE_STATE_OFF) {
		/*
		 * we still need this in order to configure the fw
		 * while uploading the nvs
		 */
		FUNC2(wl->addresses[0].addr, vif->addr, ETH_ALEN);

		ret = FUNC16(wl);
		if (ret < 0)
			goto out;
	}

	ret = FUNC12(wl, vif->addr,
				     role_type, &wlvif->role_id);
	if (ret < 0)
		goto out;

	ret = FUNC8(wl, vif);
	if (ret < 0)
		goto out;

	FUNC1(&wlvif->list, &wl->wlvif_list);
	FUNC5(WLVIF_FLAG_INITIALIZED, &wlvif->flags);

	if (wlvif->bss_type == BSS_TYPE_AP_BSS)
		wl->ap_count++;
	else
		wl->sta_count++;
out:
	FUNC9(wl);
out_unlock:
	FUNC4(&wl->mutex);

	return ret;
}