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
typedef  int u8 ;
struct TYPE_5__ {int tx_params; int* rx_mask; } ;
struct ieee80211_sta_ht_cap {int ht_supported; int cap; TYPE_2__ mcs; int /*<<< orphan*/  ampdu_density; int /*<<< orphan*/  ampdu_factor; } ;
struct ath_common {int dummy; } ;
struct ath9k_htc_priv {TYPE_3__* ah; } ;
struct TYPE_4__ {int hw_caps; } ;
struct TYPE_6__ {int /*<<< orphan*/  rxchainmask; int /*<<< orphan*/  txchainmask; TYPE_1__ caps; } ;

/* Variables and functions */
 int ATH9K_HW_CAP_SGI_20 ; 
 int /*<<< orphan*/  CONFIG ; 
 int IEEE80211_HT_CAP_DSSSCCK40 ; 
 int IEEE80211_HT_CAP_RX_STBC_SHIFT ; 
 int IEEE80211_HT_CAP_SGI_20 ; 
 int IEEE80211_HT_CAP_SGI_40 ; 
 int IEEE80211_HT_CAP_SM_PS ; 
 int IEEE80211_HT_CAP_SUP_WIDTH_20_40 ; 
 int /*<<< orphan*/  IEEE80211_HT_MAX_AMPDU_64K ; 
 int IEEE80211_HT_MCS_TX_DEFINED ; 
 int IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT ; 
 int IEEE80211_HT_MCS_TX_RX_DIFF ; 
 int /*<<< orphan*/  IEEE80211_HT_MPDU_DENSITY_8 ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct ath_common* FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_common*,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct ath9k_htc_priv *priv,
			 struct ieee80211_sta_ht_cap *ht_info)
{
	struct ath_common *common = FUNC1(priv->ah);
	u8 tx_streams, rx_streams;
	int i;

	ht_info->ht_supported = true;
	ht_info->cap = IEEE80211_HT_CAP_SUP_WIDTH_20_40 |
		       IEEE80211_HT_CAP_SM_PS |
		       IEEE80211_HT_CAP_SGI_40 |
		       IEEE80211_HT_CAP_DSSSCCK40;

	if (priv->ah->caps.hw_caps & ATH9K_HW_CAP_SGI_20)
		ht_info->cap |= IEEE80211_HT_CAP_SGI_20;

	ht_info->cap |= (1 << IEEE80211_HT_CAP_RX_STBC_SHIFT);

	ht_info->ampdu_factor = IEEE80211_HT_MAX_AMPDU_64K;
	ht_info->ampdu_density = IEEE80211_HT_MPDU_DENSITY_8;

	FUNC3(&ht_info->mcs, 0, sizeof(ht_info->mcs));

	/* ath9k_htc supports only 1 or 2 stream devices */
	tx_streams = FUNC0(priv->ah->txchainmask, 2);
	rx_streams = FUNC0(priv->ah->rxchainmask, 2);

	FUNC2(common, CONFIG, "TX streams %d, RX streams: %d\n",
		tx_streams, rx_streams);

	if (tx_streams != rx_streams) {
		ht_info->mcs.tx_params |= IEEE80211_HT_MCS_TX_RX_DIFF;
		ht_info->mcs.tx_params |= ((tx_streams - 1) <<
					   IEEE80211_HT_MCS_TX_MAX_STREAMS_SHIFT);
	}

	for (i = 0; i < rx_streams; i++)
		ht_info->mcs.rx_mask[i] = 0xff;

	ht_info->mcs.tx_params |= IEEE80211_HT_MCS_TX_DEFINED;
}