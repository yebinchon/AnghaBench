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
typedef  int /*<<< orphan*/  u32 ;
struct wl12xx_vif {scalar_t__ power_level; } ;
struct wl1271 {int dummy; } ;
struct ieee80211_conf {scalar_t__ power_level; } ;

/* Variables and functions */
 int FUNC0 (struct wl1271*,struct wl12xx_vif*,scalar_t__) ; 

__attribute__((used)) static int FUNC1(struct wl1271 *wl, struct wl12xx_vif *wlvif,
			     struct ieee80211_conf *conf, u32 changed)
{
	int ret;

	if (conf->power_level != wlvif->power_level) {
		ret = FUNC0(wl, wlvif, conf->power_level);
		if (ret < 0)
			return ret;

		wlvif->power_level = conf->power_level;
	}

	return 0;
}