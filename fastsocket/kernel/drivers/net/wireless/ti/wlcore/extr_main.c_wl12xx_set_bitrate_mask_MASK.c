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
struct wl12xx_vif {scalar_t__ bss_type; int /*<<< orphan*/  basic_rate_set; int /*<<< orphan*/  basic_rate; int /*<<< orphan*/  flags; int /*<<< orphan*/ * bitrate_masks; } ;
struct wl1271 {scalar_t__ state; int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;
struct cfg80211_bitrate_mask {TYPE_1__* control; } ;
struct TYPE_2__ {int /*<<< orphan*/  legacy; } ;

/* Variables and functions */
 scalar_t__ BSS_TYPE_STA_BSS ; 
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 size_t NL80211_BAND_2GHZ ; 
 size_t NL80211_BAND_5GHZ ; 
 int WLCORE_NUM_BANDS ; 
 scalar_t__ WLCORE_STATE_ON ; 
 int /*<<< orphan*/  WLVIF_FLAG_STA_ASSOCIATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct wl1271*,struct wl12xx_vif*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wl1271*) ; 
 int FUNC7 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC8 (struct wl1271*,struct wl12xx_vif*) ; 
 int /*<<< orphan*/  FUNC9 (struct wl1271*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct wl1271*,int /*<<< orphan*/ ) ; 
 struct wl12xx_vif* FUNC11 (struct ieee80211_vif*) ; 

__attribute__((used)) static int FUNC12(struct ieee80211_hw *hw,
				   struct ieee80211_vif *vif,
				   const struct cfg80211_bitrate_mask *mask)
{
	struct wl12xx_vif *wlvif = FUNC11(vif);
	struct wl1271 *wl = hw->priv;
	int i, ret = 0;

	FUNC5(DEBUG_MAC80211, "mac80211 set_bitrate_mask 0x%x 0x%x",
		mask->control[NL80211_BAND_2GHZ].legacy,
		mask->control[NL80211_BAND_5GHZ].legacy);

	FUNC0(&wl->mutex);

	for (i = 0; i < WLCORE_NUM_BANDS; i++)
		wlvif->bitrate_masks[i] =
			FUNC9(wl,
						    mask->control[i].legacy,
						    i);

	if (FUNC3(wl->state != WLCORE_STATE_ON))
		goto out;

	if (wlvif->bss_type == BSS_TYPE_STA_BSS &&
	    !FUNC2(WLVIF_FLAG_STA_ASSOCIATED, &wlvif->flags)) {

		ret = FUNC7(wl);
		if (ret < 0)
			goto out;

		FUNC8(wl, wlvif);
		wlvif->basic_rate =
			FUNC10(wl, wlvif->basic_rate_set);
		ret = FUNC4(wl, wlvif);

		FUNC6(wl);
	}
out:
	FUNC1(&wl->mutex);

	return ret;
}