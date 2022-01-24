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
typedef  int u32 ;
struct wl1251 {int channel; int psm_requested; scalar_t__ station_mode; scalar_t__ power_level; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dtim_period; int /*<<< orphan*/  beacon_int; int /*<<< orphan*/  bss_type; int /*<<< orphan*/  scanning; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct ieee80211_conf {int flags; scalar_t__ power_level; int /*<<< orphan*/  ps_dtim_period; TYPE_2__ chandef; } ;
struct ieee80211_hw {struct ieee80211_conf conf; struct wl1251* priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  center_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int /*<<< orphan*/  DEBUG_PSM ; 
 int IEEE80211_CONF_CHANGE_IDLE ; 
 int IEEE80211_CONF_IDLE ; 
 int IEEE80211_CONF_PS ; 
 scalar_t__ STATION_ACTIVE_MODE ; 
 scalar_t__ STATION_IDLE ; 
 scalar_t__ STATION_POWER_SAVE_MODE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct wl1251*,scalar_t__) ; 
 int FUNC4 (struct wl1251*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (struct wl1251*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wl1251*) ; 
 int FUNC8 (struct wl1251*) ; 
 int FUNC9 (struct wl1251*,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct ieee80211_hw *hw, u32 changed)
{
	struct wl1251 *wl = hw->priv;
	struct ieee80211_conf *conf = &hw->conf;
	int channel, ret = 0;

	channel = FUNC0(
			conf->chandef.chan->center_freq);

	FUNC5(DEBUG_MAC80211, "mac80211 config ch %d psm %s power %d",
		     channel,
		     conf->flags & IEEE80211_CONF_PS ? "on" : "off",
		     conf->power_level);

	FUNC1(&wl->mutex);

	ret = FUNC8(wl);
	if (ret < 0)
		goto out;

	if (channel != wl->channel) {
		wl->channel = channel;

		ret = FUNC6(wl, wl->bss_type, wl->channel,
				  wl->beacon_int, wl->dtim_period);
		if (ret < 0)
			goto out_sleep;
	}

	if (conf->flags & IEEE80211_CONF_PS && !wl->psm_requested) {
		FUNC5(DEBUG_PSM, "psm enabled");

		wl->psm_requested = true;

		wl->dtim_period = conf->ps_dtim_period;

		ret = FUNC4(wl, wl->beacon_int,
						  wl->dtim_period);

		/*
		 * mac80211 enables PSM only if we're already associated.
		 */
		ret = FUNC9(wl, STATION_POWER_SAVE_MODE);
		if (ret < 0)
			goto out_sleep;
	} else if (!(conf->flags & IEEE80211_CONF_PS) &&
		   wl->psm_requested) {
		FUNC5(DEBUG_PSM, "psm disabled");

		wl->psm_requested = false;

		if (wl->station_mode != STATION_ACTIVE_MODE) {
			ret = FUNC9(wl, STATION_ACTIVE_MODE);
			if (ret < 0)
				goto out_sleep;
		}
	}

	if (changed & IEEE80211_CONF_CHANGE_IDLE && !wl->scanning) {
		if (conf->flags & IEEE80211_CONF_IDLE) {
			ret = FUNC9(wl, STATION_IDLE);
			if (ret < 0)
				goto out_sleep;
		} else {
			ret = FUNC9(wl, STATION_ACTIVE_MODE);
			if (ret < 0)
				goto out_sleep;
			ret = FUNC6(wl, wl->bss_type, wl->channel,
					  wl->beacon_int, wl->dtim_period);
			if (ret < 0)
				goto out_sleep;
		}
	}

	if (conf->power_level != wl->power_level) {
		ret = FUNC3(wl, conf->power_level);
		if (ret < 0)
			goto out_sleep;

		wl->power_level = conf->power_level;
	}

out_sleep:
	FUNC7(wl);

out:
	FUNC2(&wl->mutex);

	return ret;
}