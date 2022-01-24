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
typedef  int /*<<< orphan*/  u64 ;
struct wl12xx_vif {int dummy; } ;
struct wl1271 {scalar_t__ state; int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct wl1271* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 int /*<<< orphan*/  ULLONG_MAX ; 
 scalar_t__ WLCORE_STATE_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct wl1271*) ; 
 int FUNC5 (struct wl1271*) ; 
 int FUNC6 (struct wl1271*,struct wl12xx_vif*,int /*<<< orphan*/ *) ; 
 struct wl12xx_vif* FUNC7 (struct ieee80211_vif*) ; 

__attribute__((used)) static u64 FUNC8(struct ieee80211_hw *hw,
			     struct ieee80211_vif *vif)
{

	struct wl1271 *wl = hw->priv;
	struct wl12xx_vif *wlvif = FUNC7(vif);
	u64 mactime = ULLONG_MAX;
	int ret;

	FUNC3(DEBUG_MAC80211, "mac80211 get tsf");

	FUNC0(&wl->mutex);

	if (FUNC2(wl->state != WLCORE_STATE_ON))
		goto out;

	ret = FUNC5(wl);
	if (ret < 0)
		goto out;

	ret = FUNC6(wl, wlvif, &mactime);
	if (ret < 0)
		goto out_sleep;

out_sleep:
	FUNC4(wl);

out:
	FUNC1(&wl->mutex);
	return mactime;
}