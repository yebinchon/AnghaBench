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
typedef  int /*<<< orphan*/  u8 ;
struct wl12xx_vif {int dummy; } ;
struct wl1271 {int /*<<< orphan*/  roc_map; } ;
typedef  enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wl1271*,struct wl12xx_vif*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC4(struct wl1271 *wl, struct wl12xx_vif *wlvif, u8 role_id,
	       enum ieee80211_band band, u8 channel)
{
	int ret = 0;

	if (FUNC0(FUNC2(role_id, wl->roc_map)))
		return 0;

	ret = FUNC3(wl, wlvif, role_id, band, channel);
	if (ret < 0)
		goto out;

	FUNC1(role_id, wl->roc_map);
out:
	return ret;
}