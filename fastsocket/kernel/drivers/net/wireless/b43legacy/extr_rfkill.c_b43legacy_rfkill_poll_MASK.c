#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ssb_bus {int dummy; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; } ;
struct TYPE_4__ {int radio_on; } ;
struct b43legacy_wldev {int radio_hw_enable; TYPE_2__* dev; TYPE_1__ phy; } ;
struct b43legacy_wl {int /*<<< orphan*/  mutex; struct b43legacy_wldev* current_dev; } ;
struct TYPE_5__ {struct ssb_bus* bus; } ;

/* Variables and functions */
 scalar_t__ B43legacy_STAT_INITIALIZED ; 
 int FUNC0 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*) ; 
 scalar_t__ FUNC3 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43legacy_wl*,char*,char*) ; 
 struct b43legacy_wl* FUNC5 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ssb_bus*) ; 
 scalar_t__ FUNC9 (struct ssb_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 

void FUNC14(struct ieee80211_hw *hw)
{
	struct b43legacy_wl *wl = FUNC5(hw);
	struct b43legacy_wldev *dev = wl->current_dev;
	struct ssb_bus *bus = dev->dev->bus;
	bool enabled;
	bool brought_up = false;

	FUNC6(&wl->mutex);
	if (FUNC12(FUNC3(dev) < B43legacy_STAT_INITIALIZED)) {
		if (FUNC9(bus, 0)) {
			FUNC7(&wl->mutex);
			return;
		}
		FUNC11(dev->dev, 0);
		brought_up = true;
	}

	enabled = FUNC0(dev);

	if (FUNC12(enabled != dev->radio_hw_enable)) {
		dev->radio_hw_enable = enabled;
		FUNC4(wl, "Radio hardware status changed to %s\n",
			enabled ? "ENABLED" : "DISABLED");
		FUNC13(hw->wiphy, !enabled);
		if (enabled != dev->phy.radio_on) {
			if (enabled)
				FUNC2(dev);
			else
				FUNC1(dev, 0);
		}
	}

	if (brought_up) {
		FUNC10(dev->dev, 0);
		FUNC8(bus);
	}

	FUNC7(&wl->mutex);
}