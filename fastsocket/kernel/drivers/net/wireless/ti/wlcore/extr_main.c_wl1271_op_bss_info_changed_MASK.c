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
struct wl12xx_vif {scalar_t__ bss_type; int /*<<< orphan*/  flags; int /*<<< orphan*/  connection_loss_work; int /*<<< orphan*/  role_id; } ;
struct wl1271 {scalar_t__ state; int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct ieee80211_bss_conf {int /*<<< orphan*/  enable_beacon; } ;

/* Variables and functions */
 int BSS_CHANGED_ASSOC ; 
 int BSS_CHANGED_BEACON_ENABLED ; 
 scalar_t__ BSS_TYPE_AP_BSS ; 
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 scalar_t__ WLCORE_STATE_ON ; 
 int /*<<< orphan*/  WLVIF_FLAG_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct wl1271*,struct ieee80211_vif*,struct ieee80211_bss_conf*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wl1271*,struct ieee80211_vif*,struct ieee80211_bss_conf*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct wl1271*) ; 
 int FUNC9 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC10 (struct wl1271*) ; 
 struct wl12xx_vif* FUNC11 (struct ieee80211_vif*) ; 

__attribute__((used)) static void FUNC12(struct ieee80211_hw *hw,
				       struct ieee80211_vif *vif,
				       struct ieee80211_bss_conf *bss_conf,
				       u32 changed)
{
	struct wl1271 *wl = hw->priv;
	struct wl12xx_vif *wlvif = FUNC11(vif);
	bool is_ap = (wlvif->bss_type == BSS_TYPE_AP_BSS);
	int ret;

	FUNC7(DEBUG_MAC80211, "mac80211 bss info role %d changed 0x%x",
		     wlvif->role_id, (int)changed);

	/*
	 * make sure to cancel pending disconnections if our association
	 * state changed
	 */
	if (!is_ap && (changed & BSS_CHANGED_ASSOC))
		FUNC0(&wlvif->connection_loss_work);

	if (is_ap && (changed & BSS_CHANGED_BEACON_ENABLED) &&
	    !bss_conf->enable_beacon)
		FUNC10(wl);

	FUNC1(&wl->mutex);

	if (FUNC4(wl->state != WLCORE_STATE_ON))
		goto out;

	if (FUNC4(!FUNC3(WLVIF_FLAG_INITIALIZED, &wlvif->flags)))
		goto out;

	ret = FUNC9(wl);
	if (ret < 0)
		goto out;

	if (is_ap)
		FUNC5(wl, vif, bss_conf, changed);
	else
		FUNC6(wl, vif, bss_conf, changed);

	FUNC8(wl);

out:
	FUNC2(&wl->mutex);
}