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
struct ieee80211_hw {int dummy; } ;
struct b43_wldev {int dummy; } ;
struct b43_wl {int radio_enabled; int /*<<< orphan*/  txpower_adjust_work; int /*<<< orphan*/  mutex; int /*<<< orphan*/  beacon_update_trigger; struct b43_wldev* current_dev; } ;

/* Variables and functions */
 scalar_t__ B43_STAT_STARTED ; 
 scalar_t__ FUNC0 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*) ; 
 struct b43_wldev* FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct b43_wl* FUNC4 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_hw *hw)
{
	struct b43_wl *wl = FUNC4(hw);
	struct b43_wldev *dev = wl->current_dev;

	FUNC3(&(wl->beacon_update_trigger));

	if (!dev)
		goto out;

	FUNC5(&wl->mutex);
	if (FUNC0(dev) >= B43_STAT_STARTED) {
		dev = FUNC2(dev);
		if (!dev)
			goto out_unlock;
	}
	FUNC1(dev);
	wl->radio_enabled = false;

out_unlock:
	FUNC6(&wl->mutex);
out:
	FUNC3(&(wl->txpower_adjust_work));
}