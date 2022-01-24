#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ssb_sprom {int /*<<< orphan*/  il0mac; int /*<<< orphan*/  et1mac; } ;
struct TYPE_5__ {int /*<<< orphan*/  revision; } ;
struct ssb_device {TYPE_2__ id; TYPE_3__* bus; int /*<<< orphan*/  dev; } ;
struct ieee80211_hw {int flags; int queues; int max_rates; TYPE_1__* wiphy; } ;
struct b43legacy_wl {scalar_t__* tx_queue_stopped; int /*<<< orphan*/ * tx_queue; int /*<<< orphan*/  tx_work; int /*<<< orphan*/  beacon_update_trigger; int /*<<< orphan*/  devlist; int /*<<< orphan*/  mutex; int /*<<< orphan*/  leds_lock; int /*<<< orphan*/  irq_lock; struct ieee80211_hw* hw; } ;
struct TYPE_6__ {int /*<<< orphan*/  chip_id; struct ssb_sprom sprom; } ;
struct TYPE_4__ {int interface_modes; } ;

/* Variables and functions */
 int B43legacy_QOS_QUEUE_NUM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int IEEE80211_HW_RX_INCLUDES_FCS ; 
 int IEEE80211_HW_SIGNAL_DBM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  NL80211_IFTYPE_WDS ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  b43legacy_beacon_update_trigger_work ; 
 int /*<<< orphan*/  b43legacy_hw_ops ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  b43legacy_tx_work ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct b43legacy_wl*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct b43legacy_wl* FUNC8 (struct ieee80211_hw*) ; 
 struct ieee80211_hw* FUNC9 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct b43legacy_wl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct ssb_device*,struct b43legacy_wl*) ; 

__attribute__((used)) static int FUNC16(struct ssb_device *dev)
{
	struct ssb_sprom *sprom = &dev->bus->sprom;
	struct ieee80211_hw *hw;
	struct b43legacy_wl *wl;
	int err = -ENOMEM;
	int queue_num;

	FUNC5(dev->bus);

	hw = FUNC9(sizeof(*wl), &b43legacy_hw_ops);
	if (!hw) {
		FUNC6(NULL, "Could not allocate ieee80211 device\n");
		goto out;
	}

	/* fill hw info */
	hw->flags = IEEE80211_HW_RX_INCLUDES_FCS |
		    IEEE80211_HW_SIGNAL_DBM;
	hw->wiphy->interface_modes =
		FUNC0(NL80211_IFTYPE_AP) |
		FUNC0(NL80211_IFTYPE_STATION) |
		FUNC0(NL80211_IFTYPE_WDS) |
		FUNC0(NL80211_IFTYPE_ADHOC);
	hw->queues = 1; /* FIXME: hardware has more queues */
	hw->max_rates = 2;
	FUNC3(hw, dev->dev);
	if (FUNC10(sprom->et1mac))
		FUNC4(hw, sprom->et1mac);
	else
		FUNC4(hw, sprom->il0mac);

	/* Get and initialize struct b43legacy_wl */
	wl = FUNC8(hw);
	FUNC11(wl, 0, sizeof(*wl));
	wl->hw = hw;
	FUNC14(&wl->irq_lock);
	FUNC14(&wl->leds_lock);
	FUNC12(&wl->mutex);
	FUNC1(&wl->devlist);
	FUNC2(&wl->beacon_update_trigger, b43legacy_beacon_update_trigger_work);
	FUNC2(&wl->tx_work, b43legacy_tx_work);

	/* Initialize queues and flags. */
	for (queue_num = 0; queue_num < B43legacy_QOS_QUEUE_NUM; queue_num++) {
		FUNC13(&wl->tx_queue[queue_num]);
		wl->tx_queue_stopped[queue_num] = 0;
	}

	FUNC15(dev, wl);
	FUNC7(wl, "Broadcom %04X WLAN found (core revision %u)\n",
		      dev->bus->chip_id, dev->id.revision);
	err = 0;
out:
	return err;
}