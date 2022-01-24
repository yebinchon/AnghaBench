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
struct ieee80211_hw {int /*<<< orphan*/  wiphy; } ;
struct TYPE_2__ {int radio_on; } ;
struct b43_wldev {int radio_hw_enable; TYPE_1__ phy; } ;
struct b43_wl {int /*<<< orphan*/  mutex; struct b43_wldev* current_dev; } ;

/* Variables and functions */
 scalar_t__ B43_STAT_INITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*) ; 
 scalar_t__ FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int) ; 
 scalar_t__ FUNC6 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wl*,char*,char*) ; 
 struct b43_wl* FUNC8 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 

void FUNC13(struct ieee80211_hw *hw)
{
	struct b43_wl *wl = FUNC8(hw);
	struct b43_wldev *dev = wl->current_dev;
	bool enabled;
	bool brought_up = false;

	FUNC9(&wl->mutex);
	if (FUNC11(FUNC6(dev) < B43_STAT_INITIALIZED)) {
		if (FUNC1(dev, 0)) {
			FUNC10(&wl->mutex);
			return;
		}
		FUNC3(dev, 0);
		brought_up = true;
	}

	enabled = FUNC4(dev);

	if (FUNC11(enabled != dev->radio_hw_enable)) {
		dev->radio_hw_enable = enabled;
		FUNC7(wl, "Radio hardware status changed to %s\n",
			enabled ? "ENABLED" : "DISABLED");
		FUNC12(hw->wiphy, !enabled);
		if (enabled != dev->phy.radio_on)
			FUNC5(dev, !enabled);
	}

	if (brought_up) {
		FUNC2(dev, 0);
		FUNC0(dev);
	}

	FUNC10(&wl->mutex);
}