#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  fw_ver_str; int /*<<< orphan*/  id; } ;
struct wl1271 {int /*<<< orphan*/  state; scalar_t__ enable_11a; TYPE_3__ chip; int /*<<< orphan*/  mutex; int /*<<< orphan*/  netstack_work; TYPE_2__* ops; TYPE_1__* hw; } ;
struct wiphy {TYPE_4__** bands; int /*<<< orphan*/  fw_version; int /*<<< orphan*/  hw_version; } ;
struct TYPE_8__ {scalar_t__ n_channels; } ;
struct TYPE_6__ {int (* boot ) (struct wl1271*) ;} ;
struct TYPE_5__ {struct wiphy* wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_MAC80211 ; 
 size_t IEEE80211_BAND_5GHZ ; 
 int WL1271_BOOT_RETRIES ; 
 int /*<<< orphan*/  WLCORE_STATE_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct wl1271*) ; 
 int FUNC8 (struct wl1271*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct wl1271*) ; 
 int FUNC11 (struct wl1271*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct wl1271*) ; 

__attribute__((used)) static int FUNC13(struct wl1271 *wl)
{
	int retries = WL1271_BOOT_RETRIES;
	bool booted = false;
	struct wiphy *wiphy = wl->hw->wiphy;
	int ret;

	while (retries) {
		retries--;
		ret = FUNC11(wl, false);
		if (ret < 0)
			goto power_off;

		ret = wl->ops->boot(wl);
		if (ret < 0)
			goto power_off;

		ret = FUNC8(wl);
		if (ret < 0)
			goto irq_disable;

		booted = true;
		break;

irq_disable:
		FUNC2(&wl->mutex);
		/* Unlocking the mutex in the middle of handling is
		   inherently unsafe. In this case we deem it safe to do,
		   because we need to let any possibly pending IRQ out of
		   the system (and while we are WLCORE_STATE_OFF the IRQ
		   work function will not do anything.) Also, any other
		   possible concurrent operations will fail due to the
		   current state, hence the wl1271 struct should be safe. */
		FUNC12(wl);
		FUNC7(wl);
		FUNC0(&wl->netstack_work);
		FUNC1(&wl->mutex);
power_off:
		FUNC10(wl);
	}

	if (!booted) {
		FUNC6("firmware boot failed despite %d retries",
			     WL1271_BOOT_RETRIES);
		goto out;
	}

	FUNC9("firmware booted (%s)", wl->chip.fw_ver_str);

	/* update hw/fw version info in wiphy struct */
	wiphy->hw_version = wl->chip.id;
	FUNC3(wiphy->fw_version, wl->chip.fw_ver_str,
		sizeof(wiphy->fw_version));

	/*
	 * Now we know if 11a is supported (info from the NVS), so disable
	 * 11a channels if not supported
	 */
	if (!wl->enable_11a)
		wiphy->bands[IEEE80211_BAND_5GHZ]->n_channels = 0;

	FUNC5(DEBUG_MAC80211, "11a is %ssupported",
		     wl->enable_11a ? "" : "not ");

	wl->state = WLCORE_STATE_ON;
out:
	return ret;
}