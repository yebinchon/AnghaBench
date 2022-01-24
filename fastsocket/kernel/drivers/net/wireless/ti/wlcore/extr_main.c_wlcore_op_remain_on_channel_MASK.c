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
struct wl12xx_vif {int /*<<< orphan*/  role_id; } ;
struct wl1271 {scalar_t__ state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  roc_complete_work; struct ieee80211_vif* roc_vif; int /*<<< orphan*/  roc_map; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct ieee80211_channel {int /*<<< orphan*/  band; int /*<<< orphan*/  center_freq; } ;
typedef  enum ieee80211_roc_type { ____Placeholder_ieee80211_roc_type } ieee80211_roc_type ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int EBUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ WL12XX_MAX_ROLES ; 
 scalar_t__ WLCORE_STATE_ON ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wl1271*) ; 
 int FUNC10 (struct wl1271*) ; 
 int FUNC11 (struct wl1271*,struct wl12xx_vif*,int /*<<< orphan*/ ,int) ; 
 struct wl12xx_vif* FUNC12 (struct ieee80211_vif*) ; 

__attribute__((used)) static int FUNC13(struct ieee80211_hw *hw,
				       struct ieee80211_vif *vif,
				       struct ieee80211_channel *chan,
				       int duration,
				       enum ieee80211_roc_type type)
{
	struct wl12xx_vif *wlvif = FUNC12(vif);
	struct wl1271 *wl = hw->priv;
	int channel, ret = 0;

	channel = FUNC2(chan->center_freq);

	FUNC8(DEBUG_MAC80211, "mac80211 roc %d (%d)",
		     channel, wlvif->role_id);

	FUNC5(&wl->mutex);

	if (FUNC7(wl->state != WLCORE_STATE_ON))
		goto out;

	/* return EBUSY if we can't ROC right now */
	if (FUNC0(wl->roc_vif ||
		    FUNC1(wl->roc_map,
				   WL12XX_MAX_ROLES) < WL12XX_MAX_ROLES)) {
		ret = -EBUSY;
		goto out;
	}

	ret = FUNC10(wl);
	if (ret < 0)
		goto out;

	ret = FUNC11(wl, wlvif, chan->band, channel);
	if (ret < 0)
		goto out_sleep;

	wl->roc_vif = vif;
	FUNC3(hw, &wl->roc_complete_work,
				     FUNC4(duration));
out_sleep:
	FUNC9(wl);
out:
	FUNC6(&wl->mutex);
	return ret;
}