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
struct wl1251 {int mac80211_registered; int /*<<< orphan*/  hw; int /*<<< orphan*/  mac_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct wl1251 *wl)
{
	int ret;

	if (wl->mac80211_registered)
		return 0;

	FUNC0(wl->hw, wl->mac_addr);

	ret = FUNC1(wl->hw);
	if (ret < 0) {
		FUNC2("unable to register mac80211 hw: %d", ret);
		return ret;
	}

	wl->mac80211_registered = true;

	FUNC3("loaded");

	return 0;
}