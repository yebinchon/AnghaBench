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
struct ieee80211_hw {int flags; int extra_tx_headroom; int channel_change_time; int max_rates; int vif_data_size; int /*<<< orphan*/  max_rate_tries; TYPE_1__* wiphy; } ;
struct ath_common {int clockrate; int cachelsz; int /*<<< orphan*/  cc_lock; struct ath5k_hw* priv; struct ieee80211_hw* hw; struct ath5k_hw* ah; struct ath_bus_ops const* bus_ops; int /*<<< orphan*/ * ops; } ;
struct ath_bus_ops {int dummy; } ;
struct ath5k_vif {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  cap_mode; scalar_t__ cap_has_mrr_support; } ;
struct ath5k_hw {int bintval; int /*<<< orphan*/  irq; int /*<<< orphan*/  status; scalar_t__ ah_radio_2ghz_revision; scalar_t__ ah_radio_5ghz_revision; TYPE_2__ ah_capabilities; int /*<<< orphan*/  ah_single_chip; int /*<<< orphan*/  ah_phy_revision; scalar_t__ ah_mac_srev; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  block; int /*<<< orphan*/  txbuflock; int /*<<< orphan*/  rxbuflock; int /*<<< orphan*/  lock; int /*<<< orphan*/  opmode; int /*<<< orphan*/  dev; struct ieee80211_hw* hw; } ;
struct TYPE_3__ {int interface_modes; int n_iface_combinations; int available_antennas_tx; int available_antennas_rx; int /*<<< orphan*/  flags; int /*<<< orphan*/ * iface_combinations; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5K_INIT_RETRY_LONG ; 
 int /*<<< orphan*/  AR5K_INIT_RETRY_SHORT ; 
 int /*<<< orphan*/  AR5K_MODE_11A ; 
 int /*<<< orphan*/  AR5K_MODE_11B ; 
 int /*<<< orphan*/  AR5K_VERSION_MAC ; 
 int /*<<< orphan*/  AR5K_VERSION_RAD ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,char*,int /*<<< orphan*/ ,scalar_t__,...) ; 
 int /*<<< orphan*/  ATH_STAT_INVALID ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int IEEE80211_HW_HOST_BROADCAST_PS_BUFFERING ; 
 int IEEE80211_HW_MFP_CAPABLE ; 
 int IEEE80211_HW_REPORTS_TX_ACK_STATUS ; 
 int IEEE80211_HW_RX_INCLUDES_FCS ; 
 int IEEE80211_HW_SIGNAL_DBM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  NL80211_IFTYPE_MESH_POINT ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIPHY_FLAG_IBSS_RSN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ath5k_common_ops ; 
 int /*<<< orphan*/  FUNC7 (struct ath5k_hw*) ; 
 struct ath_common* FUNC8 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC9 (struct ath5k_hw*) ; 
 int FUNC10 (struct ath5k_hw*) ; 
 int FUNC11 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  ath5k_intr ; 
 int /*<<< orphan*/  FUNC12 (struct ath_common*,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct ath5k_hw*) ; 
 int /*<<< orphan*/  if_comb ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC19(struct ath5k_hw *ah, const struct ath_bus_ops *bus_ops)
{
	struct ieee80211_hw *hw = ah->hw;
	struct ath_common *common;
	int ret;
	int csz;

	/* Initialize driver private data */
	FUNC3(hw, ah->dev);
	hw->flags = IEEE80211_HW_RX_INCLUDES_FCS |
			IEEE80211_HW_HOST_BROADCAST_PS_BUFFERING |
			IEEE80211_HW_SIGNAL_DBM |
			IEEE80211_HW_MFP_CAPABLE |
			IEEE80211_HW_REPORTS_TX_ACK_STATUS;

	hw->wiphy->interface_modes =
		FUNC2(NL80211_IFTYPE_AP) |
		FUNC2(NL80211_IFTYPE_STATION) |
		FUNC2(NL80211_IFTYPE_ADHOC) |
		FUNC2(NL80211_IFTYPE_MESH_POINT);

	hw->wiphy->iface_combinations = &if_comb;
	hw->wiphy->n_iface_combinations = 1;

	/* SW support for IBSS_RSN is provided by mac80211 */
	hw->wiphy->flags |= WIPHY_FLAG_IBSS_RSN;

	/* both antennas can be configured as RX or TX */
	hw->wiphy->available_antennas_tx = 0x3;
	hw->wiphy->available_antennas_rx = 0x3;

	hw->extra_tx_headroom = 2;
	hw->channel_change_time = 5000;

	/*
	 * Mark the device as detached to avoid processing
	 * interrupts until setup is complete.
	 */
	FUNC5(ATH_STAT_INVALID, ah->status);

	ah->opmode = NL80211_IFTYPE_STATION;
	ah->bintval = 1000;
	FUNC15(&ah->lock);
	FUNC17(&ah->rxbuflock);
	FUNC17(&ah->txbuflock);
	FUNC17(&ah->block);
	FUNC17(&ah->irqlock);

	/* Setup interrupt handler */
	ret = FUNC16(ah->irq, ath5k_intr, IRQF_SHARED, "ath", ah);
	if (ret) {
		FUNC0(ah, "request_irq failed\n");
		goto err;
	}

	common = FUNC8(ah);
	common->ops = &ath5k_common_ops;
	common->bus_ops = bus_ops;
	common->ah = ah;
	common->hw = hw;
	common->priv = ah;
	common->clockrate = 40;

	/*
	 * Cache line size is used to size and align various
	 * structures used to communicate with the hardware.
	 */
	FUNC12(common, &csz);
	common->cachelsz = csz << 2; /* convert to bytes */

	FUNC17(&common->cc_lock);

	/* Initialize device */
	ret = FUNC10(ah);
	if (ret)
		goto err_irq;

	/* Set up multi-rate retry capabilities */
	if (ah->ah_capabilities.cap_has_mrr_support) {
		hw->max_rates = 4;
		hw->max_rate_tries = FUNC14(AR5K_INIT_RETRY_SHORT,
					 AR5K_INIT_RETRY_LONG);
	}

	hw->vif_data_size = sizeof(struct ath5k_vif);

	/* Finish private driver data initialization */
	ret = FUNC11(hw);
	if (ret)
		goto err_ah;

	FUNC1(ah, "Atheros AR%s chip found (MAC: 0x%x, PHY: 0x%x)\n",
			FUNC6(AR5K_VERSION_MAC, ah->ah_mac_srev),
					ah->ah_mac_srev,
					ah->ah_phy_revision);

	if (!ah->ah_single_chip) {
		/* Single chip radio (!RF5111) */
		if (ah->ah_radio_5ghz_revision &&
			!ah->ah_radio_2ghz_revision) {
			/* No 5GHz support -> report 2GHz radio */
			if (!FUNC18(AR5K_MODE_11A,
				ah->ah_capabilities.cap_mode)) {
				FUNC1(ah, "RF%s 2GHz radio found (0x%x)\n",
					FUNC6(AR5K_VERSION_RAD,
						ah->ah_radio_5ghz_revision),
						ah->ah_radio_5ghz_revision);
			/* No 2GHz support (5110 and some
			 * 5GHz only cards) -> report 5GHz radio */
			} else if (!FUNC18(AR5K_MODE_11B,
				ah->ah_capabilities.cap_mode)) {
				FUNC1(ah, "RF%s 5GHz radio found (0x%x)\n",
					FUNC6(AR5K_VERSION_RAD,
						ah->ah_radio_5ghz_revision),
						ah->ah_radio_5ghz_revision);
			/* Multiband radio */
			} else {
				FUNC1(ah, "RF%s multiband radio found"
					" (0x%x)\n",
					FUNC6(AR5K_VERSION_RAD,
						ah->ah_radio_5ghz_revision),
						ah->ah_radio_5ghz_revision);
			}
		}
		/* Multi chip radio (RF5111 - RF2111) ->
		 * report both 2GHz/5GHz radios */
		else if (ah->ah_radio_5ghz_revision &&
				ah->ah_radio_2ghz_revision) {
			FUNC1(ah, "RF%s 5GHz radio found (0x%x)\n",
				FUNC6(AR5K_VERSION_RAD,
					ah->ah_radio_5ghz_revision),
					ah->ah_radio_5ghz_revision);
			FUNC1(ah, "RF%s 2GHz radio found (0x%x)\n",
				FUNC6(AR5K_VERSION_RAD,
					ah->ah_radio_2ghz_revision),
					ah->ah_radio_2ghz_revision);
		}
	}

	FUNC7(ah);

	/* ready to process interrupts */
	FUNC4(ATH_STAT_INVALID, ah->status);

	return 0;
err_ah:
	FUNC9(ah);
err_irq:
	FUNC13(ah->irq, ah);
err:
	return ret;
}