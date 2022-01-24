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
typedef  int u32 ;
struct wl12xx_vif {int /*<<< orphan*/  flags; int /*<<< orphan*/  basic_rate; int /*<<< orphan*/  basic_rate_set; int /*<<< orphan*/  band; } ;
struct wl1271 {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_2__ {scalar_t__ width; } ;
struct ieee80211_bss_conf {int basic_rates; int /*<<< orphan*/  ht_operation_mode; TYPE_1__ chandef; scalar_t__ enable_beacon; } ;

/* Variables and functions */
 int BSS_CHANGED_BASIC_RATES ; 
 int BSS_CHANGED_BEACON_ENABLED ; 
 int BSS_CHANGED_HT ; 
 int /*<<< orphan*/  DEBUG_AP ; 
 scalar_t__ NL80211_CHAN_WIDTH_20_NOHT ; 
 int /*<<< orphan*/  WLVIF_FLAG_AP_PROBE_RESP_SET ; 
 int /*<<< orphan*/  WLVIF_FLAG_AP_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct wl1271*,struct wl12xx_vif*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct wl1271*,struct wl12xx_vif*) ; 
 int FUNC5 (struct wl1271*,struct ieee80211_vif*) ; 
 int FUNC6 (struct wl1271*,int /*<<< orphan*/ ,struct ieee80211_vif*) ; 
 int FUNC7 (struct wl1271*,struct ieee80211_vif*,struct ieee80211_bss_conf*,int) ; 
 int FUNC8 (struct wl1271*,struct ieee80211_vif*,struct ieee80211_bss_conf*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 int FUNC11 (struct wl1271*,struct wl12xx_vif*) ; 
 int /*<<< orphan*/  FUNC12 (struct wl1271*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct wl1271*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 int FUNC15 (struct wl1271*,struct wl12xx_vif*) ; 
 int FUNC16 (struct wl1271*,struct wl12xx_vif*) ; 
 struct wl12xx_vif* FUNC17 (struct ieee80211_vif*) ; 
 int FUNC18 (struct wl1271*,struct ieee80211_vif*,int) ; 

__attribute__((used)) static void FUNC19(struct wl1271 *wl,
				       struct ieee80211_vif *vif,
				       struct ieee80211_bss_conf *bss_conf,
				       u32 changed)
{
	struct wl12xx_vif *wlvif = FUNC17(vif);
	int ret = 0;

	if (changed & BSS_CHANGED_BASIC_RATES) {
		u32 rates = bss_conf->basic_rates;

		wlvif->basic_rate_set = FUNC12(wl, rates,
								 wlvif->band);
		wlvif->basic_rate = FUNC13(wl,
							wlvif->basic_rate_set);

		ret = FUNC11(wl, wlvif);
		if (ret < 0) {
			FUNC10("AP rate policy change failed %d", ret);
			goto out;
		}

		ret = FUNC5(wl, vif);
		if (ret < 0)
			goto out;

		ret = FUNC6(wl, wlvif->basic_rate, vif);
		if (ret < 0)
			goto out;

		ret = FUNC18(wl, vif, true);
		if (ret < 0)
			goto out;
	}

	ret = FUNC7(wl, vif, bss_conf, changed);
	if (ret < 0)
		goto out;

	if (changed & BSS_CHANGED_BEACON_ENABLED) {
		if (bss_conf->enable_beacon) {
			if (!FUNC2(WLVIF_FLAG_AP_STARTED, &wlvif->flags)) {
				ret = FUNC15(wl, wlvif);
				if (ret < 0)
					goto out;

				ret = FUNC4(wl, wlvif);
				if (ret < 0)
					goto out;

				FUNC1(WLVIF_FLAG_AP_STARTED, &wlvif->flags);
				FUNC9(DEBUG_AP, "started AP");
			}
		} else {
			if (FUNC2(WLVIF_FLAG_AP_STARTED, &wlvif->flags)) {
				ret = FUNC16(wl, wlvif);
				if (ret < 0)
					goto out;

				FUNC0(WLVIF_FLAG_AP_STARTED, &wlvif->flags);
				FUNC0(WLVIF_FLAG_AP_PROBE_RESP_SET,
					  &wlvif->flags);
				FUNC9(DEBUG_AP, "stopped AP");
			}
		}
	}

	ret = FUNC8(wl, vif, bss_conf, changed);
	if (ret < 0)
		goto out;

	/* Handle HT information change */
	if ((changed & BSS_CHANGED_HT) &&
	    (bss_conf->chandef.width != NL80211_CHAN_WIDTH_20_NOHT)) {
		ret = FUNC3(wl, wlvif,
					bss_conf->ht_operation_mode);
		if (ret < 0) {
			FUNC14("Set ht information failed %d", ret);
			goto out;
		}
	}

out:
	return;
}