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
struct ieee80211_hw {int /*<<< orphan*/  wiphy; } ;
struct b43_wldev {int dummy; } ;
struct b43_wl {int radiotap_enabled; int beacon0_uploaded; int beacon1_uploaded; int beacon_templates_virgin; int radio_enabled; int /*<<< orphan*/  mutex; scalar_t__ filter_flags; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  bssid; struct b43_wldev* current_dev; } ;

/* Variables and functions */
 scalar_t__ B43_STAT_INITIALIZED ; 
 scalar_t__ B43_STAT_STARTED ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wl*) ; 
 scalar_t__ FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 
 int FUNC4 (struct b43_wldev*) ; 
 int FUNC5 (struct b43_wldev*) ; 
 struct b43_wl* FUNC6 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct ieee80211_hw *hw)
{
	struct b43_wl *wl = FUNC6(hw);
	struct b43_wldev *dev = wl->current_dev;
	int did_init = 0;
	int err = 0;

	/* Kill all old instance specific information to make sure
	 * the card won't use it in the short timeframe between start
	 * and mac80211 reconfiguring it. */
	FUNC7(wl->bssid, 0, ETH_ALEN);
	FUNC7(wl->mac_addr, 0, ETH_ALEN);
	wl->filter_flags = 0;
	wl->radiotap_enabled = false;
	FUNC1(wl);
	wl->beacon0_uploaded = false;
	wl->beacon1_uploaded = false;
	wl->beacon_templates_virgin = true;
	wl->radio_enabled = true;

	FUNC8(&wl->mutex);

	if (FUNC2(dev) < B43_STAT_INITIALIZED) {
		err = FUNC4(dev);
		if (err)
			goto out_mutex_unlock;
		did_init = 1;
	}

	if (FUNC2(dev) < B43_STAT_STARTED) {
		err = FUNC5(dev);
		if (err) {
			if (did_init)
				FUNC3(dev);
			goto out_mutex_unlock;
		}
	}

	/* XXX: only do if device doesn't support rfkill irq */
	FUNC10(hw->wiphy);

 out_mutex_unlock:
	FUNC9(&wl->mutex);

	/*
	 * Configuration may have been overwritten during initialization.
	 * Reload the configuration, but only if initialization was
	 * successful. Reloading the configuration after a failed init
	 * may hang the system.
	 */
	if (!err)
		FUNC0(hw, ~0);

	return err;
}