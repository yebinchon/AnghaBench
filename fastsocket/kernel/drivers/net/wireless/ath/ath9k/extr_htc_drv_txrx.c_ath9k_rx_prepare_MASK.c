#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sk_buff {scalar_t__ len; int* data; } ;
struct ieee80211_rx_status {scalar_t__ signal; int /*<<< orphan*/  flag; int /*<<< orphan*/  antenna; int /*<<< orphan*/  freq; int /*<<< orphan*/  band; int /*<<< orphan*/  mactime; } ;
struct TYPE_11__ {TYPE_3__* chan; } ;
struct TYPE_12__ {TYPE_4__ chandef; } ;
struct ieee80211_hw {TYPE_5__ conf; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr3; int /*<<< orphan*/  frame_control; } ;
struct ath_htc_rx_status {int /*<<< orphan*/  rs_datalen; } ;
struct ath_common {int /*<<< orphan*/  curbssid; int /*<<< orphan*/  keymap; } ;
struct TYPE_13__ {int rs_status; int rs_keyix; scalar_t__ rs_rssi; int /*<<< orphan*/  rs_antenna; int /*<<< orphan*/  rs_tstamp; int /*<<< orphan*/  rs_moreaggr; int /*<<< orphan*/  rs_flags; int /*<<< orphan*/  rs_rate; } ;
struct ath9k_htc_rxbuf {TYPE_6__ rxstatus; struct sk_buff* skb; } ;
struct TYPE_8__ {int last_rssi; } ;
struct ath9k_htc_priv {TYPE_7__* ah; TYPE_1__ rx; struct ieee80211_hw* hw; } ;
typedef  scalar_t__ s8 ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_9__ {scalar_t__ avgbrssi; } ;
struct TYPE_14__ {scalar_t__ opmode; TYPE_2__ stats; } ;
struct TYPE_10__ {int /*<<< orphan*/  center_freq; int /*<<< orphan*/  band; } ;

/* Variables and functions */
 scalar_t__ ATH9K_RSSI_BAD ; 
 int ATH9K_RXERR_CRC ; 
 int ATH9K_RXERR_DECRYPT ; 
 int ATH9K_RXERR_MIC ; 
 int ATH9K_RXERR_PHY ; 
 int ATH9K_RXKEYIX_INVALID ; 
 scalar_t__ ATH_DEFAULT_NOISE_FLOOR ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int ATH_RSSI_DUMMY_MARKER ; 
 int /*<<< orphan*/  ATH_RSSI_EP_MULTIPLIER ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 scalar_t__ FCS_LEN ; 
 scalar_t__ HTC_RX_FRAME_HEADER_SIZE ; 
 scalar_t__ NL80211_IFTYPE_MONITOR ; 
 int /*<<< orphan*/  RX_FLAG_DECRYPTED ; 
 int /*<<< orphan*/  RX_FLAG_FAILED_FCS_CRC ; 
 int /*<<< orphan*/  RX_FLAG_MACTIME_END ; 
 int /*<<< orphan*/  RX_FLAG_MMIC_ERROR ; 
 int /*<<< orphan*/  FUNC2 (struct ath9k_htc_priv*,struct ath_htc_rx_status*) ; 
 struct ath_common* FUNC3 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_hw*,struct ieee80211_rx_status*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_common*,char*,scalar_t__,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*,struct ath_htc_rx_status*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct ieee80211_rx_status*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int) ; 
 scalar_t__ FUNC19 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC20(struct ath9k_htc_priv *priv,
			     struct ath9k_htc_rxbuf *rxbuf,
			     struct ieee80211_rx_status *rx_status)

{
	struct ieee80211_hdr *hdr;
	struct ieee80211_hw *hw = priv->hw;
	struct sk_buff *skb = rxbuf->skb;
	struct ath_common *common = FUNC3(priv->ah);
	struct ath_htc_rx_status *rxstatus;
	int hdrlen, padsize;
	int last_rssi = ATH_RSSI_DUMMY_MARKER;
	__le16 fc;

	if (skb->len < HTC_RX_FRAME_HEADER_SIZE) {
		FUNC5(common, "Corrupted RX frame, dropping (len: %d)\n",
			skb->len);
		goto rx_next;
	}

	rxstatus = (struct ath_htc_rx_status *)skb->data;

	if (FUNC6(rxstatus->rs_datalen) -
	    (skb->len - HTC_RX_FRAME_HEADER_SIZE) != 0) {
		FUNC5(common,
			"Corrupted RX data len, dropping (dlen: %d, skblen: %d)\n",
			rxstatus->rs_datalen, skb->len);
		goto rx_next;
	}

	FUNC2(priv, rxstatus);

	/* Get the RX status information */
	FUNC15(&rxbuf->rxstatus, rxstatus, HTC_RX_FRAME_HEADER_SIZE);
	FUNC18(skb, HTC_RX_FRAME_HEADER_SIZE);

	hdr = (struct ieee80211_hdr *)skb->data;
	fc = hdr->frame_control;
	hdrlen = FUNC9(skb);

	padsize = hdrlen & 3;
	if (padsize && skb->len >= hdrlen+padsize+FCS_LEN) {
		FUNC16(skb->data + padsize, skb->data, hdrlen);
		FUNC18(skb, padsize);
	}

	FUNC17(rx_status, 0, sizeof(struct ieee80211_rx_status));

	if (rxbuf->rxstatus.rs_status != 0) {
		if (rxbuf->rxstatus.rs_status & ATH9K_RXERR_CRC)
			rx_status->flag |= RX_FLAG_FAILED_FCS_CRC;
		if (rxbuf->rxstatus.rs_status & ATH9K_RXERR_PHY)
			goto rx_next;

		if (rxbuf->rxstatus.rs_status & ATH9K_RXERR_DECRYPT) {
			/* FIXME */
		} else if (rxbuf->rxstatus.rs_status & ATH9K_RXERR_MIC) {
			if (FUNC12(fc))
				/*
				 * Sometimes, we get invalid
				 * MIC failures on valid control frames.
				 * Remove these mic errors.
				 */
				rxbuf->rxstatus.rs_status &= ~ATH9K_RXERR_MIC;
			else
				rx_status->flag |= RX_FLAG_MMIC_ERROR;
		}

		/*
		 * Reject error frames with the exception of
		 * decryption and MIC failures. For monitor mode,
		 * we also ignore the CRC error.
		 */
		if (priv->ah->opmode == NL80211_IFTYPE_MONITOR) {
			if (rxbuf->rxstatus.rs_status &
			    ~(ATH9K_RXERR_DECRYPT | ATH9K_RXERR_MIC |
			      ATH9K_RXERR_CRC))
				goto rx_next;
		} else {
			if (rxbuf->rxstatus.rs_status &
			    ~(ATH9K_RXERR_DECRYPT | ATH9K_RXERR_MIC)) {
				goto rx_next;
			}
		}
	}

	if (!(rxbuf->rxstatus.rs_status & ATH9K_RXERR_DECRYPT)) {
		u8 keyix;
		keyix = rxbuf->rxstatus.rs_keyix;
		if (keyix != ATH9K_RXKEYIX_INVALID) {
			rx_status->flag |= RX_FLAG_DECRYPTED;
		} else if (FUNC10(fc) &&
			   skb->len >= hdrlen + 4) {
			keyix = skb->data[hdrlen + 3] >> 6;
			if (FUNC19(keyix, common->keymap))
				rx_status->flag |= RX_FLAG_DECRYPTED;
		}
	}

	FUNC4(hw, rx_status, rxbuf->rxstatus.rs_rate,
			   rxbuf->rxstatus.rs_flags);

	if (rxbuf->rxstatus.rs_rssi != ATH9K_RSSI_BAD &&
	    !rxbuf->rxstatus.rs_moreaggr)
		FUNC1(priv->rx.last_rssi,
			     rxbuf->rxstatus.rs_rssi);

	last_rssi = priv->rx.last_rssi;

	if (FUNC11(hdr->frame_control) &&
	    !FUNC13(common->curbssid) &&
	    FUNC8(hdr->addr3, common->curbssid)) {
		s8 rssi = rxbuf->rxstatus.rs_rssi;

		if (FUNC14(last_rssi != ATH_RSSI_DUMMY_MARKER))
			rssi = FUNC0(last_rssi, ATH_RSSI_EP_MULTIPLIER);

		if (rssi < 0)
			rssi = 0;

		priv->ah->stats.avgbrssi = rssi;
	}

	rx_status->mactime = FUNC7(rxbuf->rxstatus.rs_tstamp);
	rx_status->band = hw->conf.chandef.chan->band;
	rx_status->freq = hw->conf.chandef.chan->center_freq;
	rx_status->signal =  rxbuf->rxstatus.rs_rssi + ATH_DEFAULT_NOISE_FLOOR;
	rx_status->antenna = rxbuf->rxstatus.rs_antenna;
	rx_status->flag |= RX_FLAG_MACTIME_END;

	return true;

rx_next:
	return false;
}