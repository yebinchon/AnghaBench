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
struct ssb_sprom {int /*<<< orphan*/  il0mac; int /*<<< orphan*/  et1mac; } ;
struct ieee80211_hw {int flags; int max_rates; TYPE_1__* wiphy; } ;
struct b43_wl {int hw_registred; scalar_t__* tx_queue_stopped; int /*<<< orphan*/ * tx_queue; int /*<<< orphan*/  tx_work; int /*<<< orphan*/  txpower_adjust_work; int /*<<< orphan*/  beacon_update_trigger; int /*<<< orphan*/  devlist; int /*<<< orphan*/  hardirq_lock; int /*<<< orphan*/  mutex; struct ieee80211_hw* hw; } ;
struct b43_bus_dev {int chip_id; int /*<<< orphan*/  core_rev; int /*<<< orphan*/  dev; struct ssb_sprom* bus_sprom; } ;
struct TYPE_2__ {int interface_modes; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int B43_QOS_QUEUE_NUM ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct b43_wl* FUNC2 (int /*<<< orphan*/ ) ; 
 int IEEE80211_HW_RX_INCLUDES_FCS ; 
 int IEEE80211_HW_SIGNAL_DBM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  NL80211_IFTYPE_MESH_POINT ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  NL80211_IFTYPE_WDS ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIPHY_FLAG_IBSS_RSN ; 
 int /*<<< orphan*/  b43_beacon_update_trigger_work ; 
 int /*<<< orphan*/  b43_hw_ops ; 
 int /*<<< orphan*/  b43_phy_txpower_adjust_work ; 
 int /*<<< orphan*/  b43_tx_work ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct b43_wl*,char*,char*,int /*<<< orphan*/ ) ; 
 struct b43_wl* FUNC9 (struct ieee80211_hw*) ; 
 struct ieee80211_hw* FUNC10 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct b43_wl *FUNC16(struct b43_bus_dev *dev)
{
	struct ssb_sprom *sprom = dev->bus_sprom;
	struct ieee80211_hw *hw;
	struct b43_wl *wl;
	char chip_name[6];
	int queue_num;

	hw = FUNC10(sizeof(*wl), &b43_hw_ops);
	if (!hw) {
		FUNC7(NULL, "Could not allocate ieee80211 device\n");
		return FUNC2(-ENOMEM);
	}
	wl = FUNC9(hw);

	/* fill hw info */
	hw->flags = IEEE80211_HW_RX_INCLUDES_FCS |
		    IEEE80211_HW_SIGNAL_DBM;

	hw->wiphy->interface_modes =
		FUNC1(NL80211_IFTYPE_AP) |
		FUNC1(NL80211_IFTYPE_MESH_POINT) |
		FUNC1(NL80211_IFTYPE_STATION) |
		FUNC1(NL80211_IFTYPE_WDS) |
		FUNC1(NL80211_IFTYPE_ADHOC);

	hw->wiphy->flags |= WIPHY_FLAG_IBSS_RSN;

	wl->hw_registred = false;
	hw->max_rates = 2;
	FUNC5(hw, dev->dev);
	if (FUNC11(sprom->et1mac))
		FUNC6(hw, sprom->et1mac);
	else
		FUNC6(hw, sprom->il0mac);

	/* Initialize struct b43_wl */
	wl->hw = hw;
	FUNC12(&wl->mutex);
	FUNC15(&wl->hardirq_lock);
	FUNC3(&wl->devlist);
	FUNC4(&wl->beacon_update_trigger, b43_beacon_update_trigger_work);
	FUNC4(&wl->txpower_adjust_work, b43_phy_txpower_adjust_work);
	FUNC4(&wl->tx_work, b43_tx_work);

	/* Initialize queues and flags. */
	for (queue_num = 0; queue_num < B43_QOS_QUEUE_NUM; queue_num++) {
		FUNC13(&wl->tx_queue[queue_num]);
		wl->tx_queue_stopped[queue_num] = 0;
	}

	FUNC14(chip_name, FUNC0(chip_name),
		 (dev->chip_id > 0x9999) ? "%d" : "%04X", dev->chip_id);
	FUNC8(wl, "Broadcom %s WLAN found (core revision %u)\n", chip_name,
		dev->core_rev);
	return wl;
}