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
typedef  int u16 ;
struct mwl8k_rxd_sta {int rx_ctrl; int channel; int /*<<< orphan*/  pkt_len; int /*<<< orphan*/  qos_control; int /*<<< orphan*/  noise_level; int /*<<< orphan*/  rssi; int /*<<< orphan*/  rate_info; } ;
struct ieee80211_rx_status {int rate_idx; int flag; int /*<<< orphan*/  band; int /*<<< orphan*/  freq; int /*<<< orphan*/  antenna; int /*<<< orphan*/  signal; } ;
typedef  int /*<<< orphan*/  s8 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_BAND_2GHZ ; 
 int /*<<< orphan*/  IEEE80211_BAND_5GHZ ; 
 int MWL8K_STA_RATE_INFO_40MHZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MWL8K_STA_RATE_INFO_MCS_FORMAT ; 
 int FUNC1 (int) ; 
 int MWL8K_STA_RATE_INFO_SHORTGI ; 
 int MWL8K_STA_RATE_INFO_SHORTPRE ; 
 int MWL8K_STA_RX_CTRL_DECRYPT_ERROR ; 
 int MWL8K_STA_RX_CTRL_DEC_ERR_TYPE ; 
 int MWL8K_STA_RX_CTRL_OWNED_BY_HOST ; 
 int RX_FLAG_40MHZ ; 
 int RX_FLAG_HT ; 
 int RX_FLAG_MMIC_ERROR ; 
 int RX_FLAG_SHORTPRE ; 
 int RX_FLAG_SHORT_GI ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_rx_status*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int
FUNC6(void *_rxd, struct ieee80211_rx_status *status,
		       __le16 *qos, s8 *noise)
{
	struct mwl8k_rxd_sta *rxd = _rxd;
	u16 rate_info;

	if (!(rxd->rx_ctrl & MWL8K_STA_RX_CTRL_OWNED_BY_HOST))
		return -1;
	FUNC5();

	rate_info = FUNC3(rxd->rate_info);

	FUNC4(status, 0, sizeof(*status));

	status->signal = -rxd->rssi;
	*noise = -rxd->noise_level;
	status->antenna = FUNC0(rate_info);
	status->rate_idx = FUNC1(rate_info);

	if (rate_info & MWL8K_STA_RATE_INFO_SHORTPRE)
		status->flag |= RX_FLAG_SHORTPRE;
	if (rate_info & MWL8K_STA_RATE_INFO_40MHZ)
		status->flag |= RX_FLAG_40MHZ;
	if (rate_info & MWL8K_STA_RATE_INFO_SHORTGI)
		status->flag |= RX_FLAG_SHORT_GI;
	if (rate_info & MWL8K_STA_RATE_INFO_MCS_FORMAT)
		status->flag |= RX_FLAG_HT;

	if (rxd->channel > 14) {
		status->band = IEEE80211_BAND_5GHZ;
		if (!(status->flag & RX_FLAG_HT))
			status->rate_idx -= 5;
	} else {
		status->band = IEEE80211_BAND_2GHZ;
	}
	status->freq = FUNC2(rxd->channel,
						      status->band);

	*qos = rxd->qos_control;
	if ((rxd->rx_ctrl & MWL8K_STA_RX_CTRL_DECRYPT_ERROR) &&
	    (rxd->rx_ctrl & MWL8K_STA_RX_CTRL_DEC_ERR_TYPE))
		status->flag |= RX_FLAG_MMIC_ERROR;

	return FUNC3(rxd->pkt_len);
}