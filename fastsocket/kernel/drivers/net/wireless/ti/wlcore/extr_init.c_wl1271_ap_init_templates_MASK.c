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
struct wl12xx_vif {int dummy; } ;
struct wl1271 {int dummy; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct wl1271*,struct wl12xx_vif*,int) ; 
 int FUNC1 (struct wl1271*,struct wl12xx_vif*) ; 
 int FUNC2 (struct wl1271*,struct ieee80211_vif*) ; 
 int FUNC3 (struct wl1271*,struct ieee80211_vif*) ; 
 struct wl12xx_vif* FUNC4 (struct ieee80211_vif*) ; 

int FUNC5(struct wl1271 *wl, struct ieee80211_vif *vif)
{
	struct wl12xx_vif *wlvif = FUNC4(vif);
	int ret;

	ret = FUNC1(wl, wlvif);
	if (ret < 0)
		return ret;

	ret = FUNC2(wl, vif);
	if (ret < 0)
		return ret;

	ret = FUNC3(wl, vif);
	if (ret < 0)
		return ret;

	/*
	 * when operating as AP we want to receive external beacons for
	 * configuring ERP protection.
	 */
	ret = FUNC0(wl, wlvif, false);
	if (ret < 0)
		return ret;

	return 0;
}