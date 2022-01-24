#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u64 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ data; } ;
struct p54_rx_data {int rate; int flags; scalar_t__ decrypt_status; int /*<<< orphan*/  len; scalar_t__* align; int /*<<< orphan*/  tsf32; int /*<<< orphan*/  antenna; int /*<<< orphan*/  rssi; int /*<<< orphan*/  freq; } ;
struct p54_common {scalar_t__ mode; int tsf_low32; int /*<<< orphan*/  work; TYPE_4__* hw; scalar_t__ tsf_high32; } ;
struct ieee80211_rx_status {int rate_idx; scalar_t__ band; int mactime; int /*<<< orphan*/  flag; int /*<<< orphan*/  antenna; int /*<<< orphan*/  freq; int /*<<< orphan*/  signal; } ;
struct TYPE_7__ {TYPE_1__* chan; } ;
struct TYPE_8__ {int flags; TYPE_2__ chandef; } ;
struct TYPE_9__ {TYPE_3__ conf; } ;
struct TYPE_6__ {scalar_t__ band; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_BAND_5GHZ ; 
 int IEEE80211_CONF_PS ; 
 struct ieee80211_rx_status* FUNC0 (struct sk_buff*) ; 
 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ; 
 scalar_t__ P54_DECRYPT_FAIL_MICHAEL ; 
 scalar_t__ P54_DECRYPT_FAIL_TKIP ; 
 scalar_t__ P54_DECRYPT_OK ; 
 int /*<<< orphan*/  P54_HDR_FLAG_DATA_ALIGN ; 
 int /*<<< orphan*/  P54_HDR_FLAG_DATA_IN_FCS_GOOD ; 
 int /*<<< orphan*/  P54_STATISTICS_UPDATE ; 
 int /*<<< orphan*/  RX_FLAG_DECRYPTED ; 
 int /*<<< orphan*/  RX_FLAG_MACTIME_END ; 
 int /*<<< orphan*/  RX_FLAG_MMIC_ERROR ; 
 int /*<<< orphan*/  RX_FLAG_SHORTPRE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct p54_common*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct p54_common*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct p54_common *priv, struct sk_buff *skb)
{
	struct p54_rx_data *hdr = (struct p54_rx_data *) skb->data;
	struct ieee80211_rx_status *rx_status = FUNC0(skb);
	u16 freq = FUNC4(hdr->freq);
	size_t header_len = sizeof(*hdr);
	u32 tsf32;
	u8 rate = hdr->rate & 0xf;

	/*
	 * If the device is in a unspecified state we have to
	 * ignore all data frames. Else we could end up with a
	 * nasty crash.
	 */
	if (FUNC11(priv->mode == NL80211_IFTYPE_UNSPECIFIED))
		return 0;

	if (!(hdr->flags & FUNC1(P54_HDR_FLAG_DATA_IN_FCS_GOOD)))
		return 0;

	if (hdr->decrypt_status == P54_DECRYPT_OK)
		rx_status->flag |= RX_FLAG_DECRYPTED;
	if ((hdr->decrypt_status == P54_DECRYPT_FAIL_MICHAEL) ||
	    (hdr->decrypt_status == P54_DECRYPT_FAIL_TKIP))
		rx_status->flag |= RX_FLAG_MMIC_ERROR;

	rx_status->signal = FUNC8(priv, hdr->rssi);
	if (hdr->rate & 0x10)
		rx_status->flag |= RX_FLAG_SHORTPRE;
	if (priv->hw->conf.chandef.chan->band == IEEE80211_BAND_5GHZ)
		rx_status->rate_idx = (rate < 4) ? 0 : rate - 4;
	else
		rx_status->rate_idx = rate;

	rx_status->freq = freq;
	rx_status->band =  priv->hw->conf.chandef.chan->band;
	rx_status->antenna = hdr->antenna;

	tsf32 = FUNC5(hdr->tsf32);
	if (tsf32 < priv->tsf_low32)
		priv->tsf_high32++;
	rx_status->mactime = ((u64)priv->tsf_high32) << 32 | tsf32;
	priv->tsf_low32 = tsf32;

	/* LMAC API Page 10/29 - s_lm_data_in - clock
	 * "usec accurate timestamp of hardware clock
	 * at end of frame (before OFDM SIFS EOF padding"
	 */
	rx_status->flag |= RX_FLAG_MACTIME_END;

	if (hdr->flags & FUNC1(P54_HDR_FLAG_DATA_ALIGN))
		header_len += hdr->align[0];

	FUNC9(skb, header_len);
	FUNC10(skb, FUNC4(hdr->len));
	if (FUNC11(priv->hw->conf.flags & IEEE80211_CONF_PS))
		FUNC7(priv, skb);

	FUNC3(priv->hw, skb);

	FUNC2(priv->hw, &priv->work,
			   FUNC6(P54_STATISTICS_UPDATE));

	return -1;
}