#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mwl8k_vif {int dummy; } ;
struct mwl8k_sta {int dummy; } ;
struct mwl8k_priv {int radio_on; int radio_short_preamble; int /*<<< orphan*/  cookie_dma; int /*<<< orphan*/ * cookie; int /*<<< orphan*/  pdev; TYPE_1__* device_info; scalar_t__ sta_macids_supported; scalar_t__ ap_macids_supported; int /*<<< orphan*/ * tx_wait; int /*<<< orphan*/  stream_lock; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/ * hostcmd_wait; scalar_t__ fw_mutex_depth; int /*<<< orphan*/ * fw_mutex_owner; int /*<<< orphan*/  fw_mutex; int /*<<< orphan*/  poll_rx_task; int /*<<< orphan*/  poll_tx_task; int /*<<< orphan*/  fw_reload; int /*<<< orphan*/  watchdog_ba_handle; int /*<<< orphan*/  finalize_join_worker; int /*<<< orphan*/  vif_list; scalar_t__ macids_used; scalar_t__ ap_fw; struct ieee80211_hw* hw; } ;
struct mwl8k_dma_data {int dummy; } ;
struct ieee80211_hw {int extra_tx_headroom; int channel_change_time; int flags; int vif_data_size; int sta_data_size; TYPE_2__* wiphy; int /*<<< orphan*/  queues; } ;
struct ieee80211_cts {int dummy; } ;
struct TYPE_4__ {int n_iface_combinations; int /*<<< orphan*/  interface_modes; int /*<<< orphan*/ * iface_combinations; } ;
struct TYPE_3__ {scalar_t__ fw_image_sta; scalar_t__ fw_image_ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int IEEE80211_HW_AP_LINK_PS ; 
 int IEEE80211_HW_HAS_RATE_CONTROL ; 
 int IEEE80211_HW_SIGNAL_DBM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MWL8K_TX_WMM_QUEUES ; 
 int /*<<< orphan*/  NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int REDUCED_TX_HEADROOM ; 
 int /*<<< orphan*/  ap_if_comb ; 
 int FUNC3 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mwl8k_finalize_join_worker ; 
 int /*<<< orphan*/  mwl8k_hw_restart_work ; 
 int FUNC5 (struct ieee80211_hw*) ; 
 int FUNC6 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct mwl8k_priv*) ; 
 int /*<<< orphan*/  mwl8k_rx_poll ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mwl8k_tx_poll ; 
 int FUNC9 (struct mwl8k_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_hw*,int) ; 
 int /*<<< orphan*/  mwl8k_watchdog_ba_events ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,char*) ; 

__attribute__((used)) static int FUNC17(struct mwl8k_priv *priv)
{
	struct ieee80211_hw *hw = priv->hw;
	int i, rc;

	rc = FUNC5(hw);
	FUNC7(priv);
	if (rc) {
		FUNC16(hw->wiphy, "Cannot start firmware\n");
		return rc;
	}

	/*
	 * Extra headroom is the size of the required DMA header
	 * minus the size of the smallest 802.11 frame (CTS frame).
	 */
	hw->extra_tx_headroom =
		sizeof(struct mwl8k_dma_data) - sizeof(struct ieee80211_cts);

	hw->extra_tx_headroom -= priv->ap_fw ? REDUCED_TX_HEADROOM : 0;

	hw->channel_change_time = 10;

	hw->queues = MWL8K_TX_WMM_QUEUES;

	/* Set rssi values to dBm */
	hw->flags |= IEEE80211_HW_SIGNAL_DBM | IEEE80211_HW_HAS_RATE_CONTROL;

	/*
	 * Ask mac80211 to not to trigger PS mode
	 * based on PM bit of incoming frames.
	 */
	if (priv->ap_fw)
		hw->flags |= IEEE80211_HW_AP_LINK_PS;

	hw->vif_data_size = sizeof(struct mwl8k_vif);
	hw->sta_data_size = sizeof(struct mwl8k_sta);

	priv->macids_used = 0;
	FUNC1(&priv->vif_list);

	/* Set default radio state and preamble */
	priv->radio_on = false;
	priv->radio_short_preamble = false;

	/* Finalize join worker */
	FUNC2(&priv->finalize_join_worker, mwl8k_finalize_join_worker);
	/* Handle watchdog ba events */
	FUNC2(&priv->watchdog_ba_handle, mwl8k_watchdog_ba_events);
	/* To reload the firmware if it crashes */
	FUNC2(&priv->fw_reload, mwl8k_hw_restart_work);

	/* TX reclaim and RX tasklets.  */
	FUNC15(&priv->poll_tx_task, mwl8k_tx_poll, (unsigned long)hw);
	FUNC14(&priv->poll_tx_task);
	FUNC15(&priv->poll_rx_task, mwl8k_rx_poll, (unsigned long)hw);
	FUNC14(&priv->poll_rx_task);

	/* Power management cookie */
	priv->cookie = FUNC11(priv->pdev, 4, &priv->cookie_dma);
	if (priv->cookie == NULL)
		return -ENOMEM;

	FUNC4(&priv->fw_mutex);
	priv->fw_mutex_owner = NULL;
	priv->fw_mutex_depth = 0;
	priv->hostcmd_wait = NULL;

	FUNC13(&priv->tx_lock);

	FUNC13(&priv->stream_lock);

	priv->tx_wait = NULL;

	rc = FUNC6(hw);
	if (rc)
		goto err_free_cookie;

	hw->wiphy->interface_modes = 0;

	if (priv->ap_macids_supported || priv->device_info->fw_image_ap) {
		hw->wiphy->interface_modes |= FUNC0(NL80211_IFTYPE_AP);
		hw->wiphy->interface_modes |= FUNC0(NL80211_IFTYPE_STATION);
		hw->wiphy->iface_combinations = &ap_if_comb;
		hw->wiphy->n_iface_combinations = 1;
	}

	if (priv->sta_macids_supported || priv->device_info->fw_image_sta)
		hw->wiphy->interface_modes |= FUNC0(NL80211_IFTYPE_STATION);

	rc = FUNC3(hw);
	if (rc) {
		FUNC16(hw->wiphy, "Cannot register device\n");
		goto err_unprobe_hw;
	}

	return 0;

err_unprobe_hw:
	for (i = 0; i < FUNC9(priv); i++)
		FUNC10(hw, i);
	FUNC8(hw, 0);

err_free_cookie:
	if (priv->cookie != NULL)
		FUNC12(priv->pdev, 4,
				priv->cookie, priv->cookie_dma);

	return rc;
}