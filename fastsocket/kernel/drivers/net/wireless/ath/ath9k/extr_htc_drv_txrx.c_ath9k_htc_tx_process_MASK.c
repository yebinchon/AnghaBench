#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_rate {int count; int idx; int /*<<< orphan*/  flags; } ;
struct TYPE_11__ {struct ieee80211_tx_rate* rates; } ;
struct TYPE_7__ {struct ieee80211_vif* vif; } ;
struct ieee80211_tx_info {int /*<<< orphan*/  flags; TYPE_5__ status; TYPE_1__ control; } ;
struct TYPE_9__ {TYPE_2__* chan; } ;
struct ieee80211_conf {TYPE_3__ chandef; } ;
struct ath9k_htc_tx_ctl {int txok; } ;
struct TYPE_10__ {scalar_t__ queued_cnt; int /*<<< orphan*/  tx_lock; } ;
struct ath9k_htc_priv {TYPE_6__* hw; TYPE_4__ tx; } ;
struct __wmi_event_txstatus {int ts_flags; int /*<<< orphan*/  ts_rate; } ;
struct TYPE_12__ {struct ieee80211_conf conf; } ;
struct TYPE_8__ {scalar_t__ band; } ;

/* Variables and functions */
 int ATH9K_HTC_TXSTAT_ACK ; 
 int ATH9K_HTC_TXSTAT_CW40 ; 
 int ATH9K_HTC_TXSTAT_FILT ; 
 int ATH9K_HTC_TXSTAT_MCS ; 
 int /*<<< orphan*/  ATH9K_HTC_TXSTAT_RATE ; 
 int ATH9K_HTC_TXSTAT_RTC_CTS ; 
 int ATH9K_HTC_TXSTAT_SGI ; 
 struct ath9k_htc_tx_ctl* FUNC0 (struct sk_buff*) ; 
 scalar_t__ IEEE80211_BAND_5GHZ ; 
 struct ieee80211_tx_info* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  IEEE80211_TX_RC_40_MHZ_WIDTH ; 
 int /*<<< orphan*/  IEEE80211_TX_RC_MCS ; 
 int /*<<< orphan*/  IEEE80211_TX_RC_SHORT_GI ; 
 int /*<<< orphan*/  IEEE80211_TX_RC_USE_RTS_CTS ; 
 int /*<<< orphan*/  IEEE80211_TX_STAT_ACK ; 
 int /*<<< orphan*/  IEEE80211_TX_STAT_TX_FILTERED ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath9k_htc_priv*,struct ieee80211_vif*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath9k_htc_priv*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct ath9k_htc_priv*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC15(struct ath9k_htc_priv *priv,
				 struct sk_buff *skb,
				 struct __wmi_event_txstatus *txs)
{
	struct ieee80211_vif *vif;
	struct ath9k_htc_tx_ctl *tx_ctl;
	struct ieee80211_tx_info *tx_info;
	struct ieee80211_tx_rate *rate;
	struct ieee80211_conf *cur_conf = &priv->hw->conf;
	bool txok;
	int slot;
	int hdrlen, padsize;

	slot = FUNC14(priv, skb);
	if (slot < 0) {
		FUNC6(skb);
		return;
	}

	tx_ctl = FUNC0(skb);
	txok = tx_ctl->txok;
	tx_info = FUNC1(skb);
	vif = tx_info->control.vif;
	rate = &tx_info->status.rates[0];

	FUNC10(&tx_info->status, 0, sizeof(tx_info->status));

	/*
	 * URB submission failed for this frame, it never reached
	 * the target.
	 */
	if (!txok || !vif || !txs)
		goto send_mac80211;

	if (txs->ts_flags & ATH9K_HTC_TXSTAT_ACK)
		tx_info->flags |= IEEE80211_TX_STAT_ACK;

	if (txs->ts_flags & ATH9K_HTC_TXSTAT_FILT)
		tx_info->flags |= IEEE80211_TX_STAT_TX_FILTERED;

	if (txs->ts_flags & ATH9K_HTC_TXSTAT_RTC_CTS)
		rate->flags |= IEEE80211_TX_RC_USE_RTS_CTS;

	rate->count = 1;
	rate->idx = FUNC2(txs->ts_rate, ATH9K_HTC_TXSTAT_RATE);

	if (txs->ts_flags & ATH9K_HTC_TXSTAT_MCS) {
		rate->flags |= IEEE80211_TX_RC_MCS;

		if (txs->ts_flags & ATH9K_HTC_TXSTAT_CW40)
			rate->flags |= IEEE80211_TX_RC_40_MHZ_WIDTH;
		if (txs->ts_flags & ATH9K_HTC_TXSTAT_SGI)
			rate->flags |= IEEE80211_TX_RC_SHORT_GI;
	} else {
		if (cur_conf->chandef.chan->band == IEEE80211_BAND_5GHZ)
			rate->idx += 4; /* No CCK rates */
	}

	FUNC4(priv, vif, skb);

send_mac80211:
	FUNC12(&priv->tx.tx_lock);
	if (FUNC3(--priv->tx.queued_cnt < 0))
		priv->tx.queued_cnt = 0;
	FUNC13(&priv->tx.tx_lock);

	FUNC5(priv, slot);

	/* Remove padding before handing frame back to mac80211 */
	hdrlen = FUNC7(skb);

	padsize = hdrlen & 3;
	if (padsize && skb->len > hdrlen + padsize) {
		FUNC9(skb->data + padsize, skb->data, hdrlen);
		FUNC11(skb, padsize);
	}

	/* Send status to mac80211 */
	FUNC8(priv->hw, skb);
}