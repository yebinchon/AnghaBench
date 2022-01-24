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
struct txentry_desc {scalar_t__ retry_limit; int /*<<< orphan*/  rate_mode; int /*<<< orphan*/  flags; int /*<<< orphan*/  header_length; int /*<<< orphan*/  length; } ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct rt2x00_rate {int flags; } ;
struct rt2x00_dev {scalar_t__ long_retry; int /*<<< orphan*/  cap_flags; int /*<<< orphan*/  hw; } ;
struct ieee80211_tx_rate {scalar_t__ count; int flags; } ;
struct TYPE_2__ {scalar_t__ rts_cts_rate_idx; struct ieee80211_tx_rate* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_1__ control; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_rate {int /*<<< orphan*/  hw_value; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;

/* Variables and functions */
 int DEV_RATE_OFDM ; 
 int /*<<< orphan*/  ENTRY_TXD_ACK ; 
 int /*<<< orphan*/  ENTRY_TXD_BURST ; 
 int /*<<< orphan*/  ENTRY_TXD_CTS_FRAME ; 
 int /*<<< orphan*/  ENTRY_TXD_FIRST_FRAGMENT ; 
 int /*<<< orphan*/  ENTRY_TXD_MORE_FRAG ; 
 int /*<<< orphan*/  ENTRY_TXD_REQ_TIMESTAMP ; 
 int /*<<< orphan*/  ENTRY_TXD_RETRY_MODE ; 
 int /*<<< orphan*/  ENTRY_TXD_RTS_FRAME ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_FIRST_FRAGMENT ; 
 int IEEE80211_TX_CTL_MORE_FRAMES ; 
 int IEEE80211_TX_CTL_NO_ACK ; 
 int IEEE80211_TX_RC_GREEN_FIELD ; 
 int IEEE80211_TX_RC_MCS ; 
 int /*<<< orphan*/  RATE_MODE_CCK ; 
 int /*<<< orphan*/  RATE_MODE_HT_GREENFIELD ; 
 int /*<<< orphan*/  RATE_MODE_HT_MIX ; 
 int /*<<< orphan*/  RATE_MODE_OFDM ; 
 int /*<<< orphan*/  REQUIRE_HT_TX_DESC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct ieee80211_rate* FUNC3 (int /*<<< orphan*/ ,struct ieee80211_tx_info*) ; 
 struct ieee80211_rate* FUNC4 (int /*<<< orphan*/ ,struct ieee80211_tx_info*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct txentry_desc*,int /*<<< orphan*/ ,int) ; 
 struct rt2x00_rate* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct rt2x00_dev*,struct sk_buff*,struct txentry_desc*) ; 
 int /*<<< orphan*/  FUNC13 (struct rt2x00_dev*,struct sk_buff*,struct txentry_desc*,struct ieee80211_sta*,struct rt2x00_rate const*) ; 
 int /*<<< orphan*/  FUNC14 (struct rt2x00_dev*,struct sk_buff*,struct txentry_desc*,struct rt2x00_rate const*) ; 
 int /*<<< orphan*/  FUNC15 (struct rt2x00_dev*,struct sk_buff*,struct txentry_desc*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(struct rt2x00_dev *rt2x00dev,
					     struct sk_buff *skb,
					     struct txentry_desc *txdesc,
					     struct ieee80211_sta *sta)
{
	struct ieee80211_tx_info *tx_info = FUNC0(skb);
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
	struct ieee80211_tx_rate *txrate = &tx_info->control.rates[0];
	struct ieee80211_rate *rate;
	const struct rt2x00_rate *hwrate = NULL;

	FUNC10(txdesc, 0, sizeof(*txdesc));

	/*
	 * Header and frame information.
	 */
	txdesc->length = skb->len;
	txdesc->header_length = FUNC2(skb);

	/*
	 * Check whether this frame is to be acked.
	 */
	if (!(tx_info->flags & IEEE80211_TX_CTL_NO_ACK))
		FUNC1(ENTRY_TXD_ACK, &txdesc->flags);

	/*
	 * Check if this is a RTS/CTS frame
	 */
	if (FUNC9(hdr->frame_control) ||
	    FUNC7(hdr->frame_control)) {
		FUNC1(ENTRY_TXD_BURST, &txdesc->flags);
		if (FUNC9(hdr->frame_control))
			FUNC1(ENTRY_TXD_RTS_FRAME, &txdesc->flags);
		else
			FUNC1(ENTRY_TXD_CTS_FRAME, &txdesc->flags);
		if (tx_info->control.rts_cts_rate_idx >= 0)
			rate =
			    FUNC3(rt2x00dev->hw, tx_info);
	}

	/*
	 * Determine retry information.
	 */
	txdesc->retry_limit = tx_info->control.rates[0].count - 1;
	if (txdesc->retry_limit >= rt2x00dev->long_retry)
		FUNC1(ENTRY_TXD_RETRY_MODE, &txdesc->flags);

	/*
	 * Check if more fragments are pending
	 */
	if (FUNC5(hdr->frame_control)) {
		FUNC1(ENTRY_TXD_BURST, &txdesc->flags);
		FUNC1(ENTRY_TXD_MORE_FRAG, &txdesc->flags);
	}

	/*
	 * Check if more frames (!= fragments) are pending
	 */
	if (tx_info->flags & IEEE80211_TX_CTL_MORE_FRAMES)
		FUNC1(ENTRY_TXD_BURST, &txdesc->flags);

	/*
	 * Beacons and probe responses require the tsf timestamp
	 * to be inserted into the frame.
	 */
	if (FUNC6(hdr->frame_control) ||
	    FUNC8(hdr->frame_control))
		FUNC1(ENTRY_TXD_REQ_TIMESTAMP, &txdesc->flags);

	if ((tx_info->flags & IEEE80211_TX_CTL_FIRST_FRAGMENT) &&
	    !FUNC16(ENTRY_TXD_RTS_FRAME, &txdesc->flags))
		FUNC1(ENTRY_TXD_FIRST_FRAGMENT, &txdesc->flags);

	/*
	 * Determine rate modulation.
	 */
	if (txrate->flags & IEEE80211_TX_RC_GREEN_FIELD)
		txdesc->rate_mode = RATE_MODE_HT_GREENFIELD;
	else if (txrate->flags & IEEE80211_TX_RC_MCS)
		txdesc->rate_mode = RATE_MODE_HT_MIX;
	else {
		rate = FUNC4(rt2x00dev->hw, tx_info);
		hwrate = FUNC11(rate->hw_value);
		if (hwrate->flags & DEV_RATE_OFDM)
			txdesc->rate_mode = RATE_MODE_OFDM;
		else
			txdesc->rate_mode = RATE_MODE_CCK;
	}

	/*
	 * Apply TX descriptor handling by components
	 */
	FUNC12(rt2x00dev, skb, txdesc);
	FUNC15(rt2x00dev, skb, txdesc);

	if (FUNC16(REQUIRE_HT_TX_DESC, &rt2x00dev->cap_flags))
		FUNC13(rt2x00dev, skb, txdesc,
						   sta, hwrate);
	else
		FUNC14(rt2x00dev, skb, txdesc,
						      hwrate);
}