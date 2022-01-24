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
typedef  size_t u8 ;
typedef  int u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct iwl_wipan_noa_data {size_t length; struct ieee80211_hdr* data; } ;
struct iwl_tx_cmd {int /*<<< orphan*/  hdr; int /*<<< orphan*/  len; } ;
struct TYPE_4__ {scalar_t__ state; int txq_id; } ;
struct iwl_tid_data {int seq_number; TYPE_2__ agg; } ;
struct iwl_station_priv {int /*<<< orphan*/  pending_frames; scalar_t__ client; scalar_t__ asleep; } ;
struct iwl_rxon_context {size_t bcast_sta_id; int mcast_queue; int* ac_to_queue; scalar_t__ payload; } ;
struct iwl_priv {int* queue_to_mac80211; int /*<<< orphan*/  sta_lock; int /*<<< orphan*/  trans; struct iwl_tid_data** tid_data; int /*<<< orphan*/  noa_data; struct iwl_rxon_context* contexts; } ;
struct iwl_device_cmd {size_t bcast_sta_id; int mcast_queue; int* ac_to_queue; scalar_t__ payload; } ;
struct TYPE_3__ {scalar_t__ hw_key; scalar_t__ vif; } ;
struct ieee80211_tx_info {int flags; int hw_queue; struct iwl_rxon_context** driver_data; struct iwl_rxon_context status; TYPE_1__ control; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; int /*<<< orphan*/  seq_ctrl; int /*<<< orphan*/  addr1; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IEEE80211_FCTL_MOREDATA ; 
 size_t IEEE80211_QOS_CTL_TID_MASK ; 
 int IEEE80211_SCTL_FRAG ; 
 int IEEE80211_SCTL_SEQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ieee80211_tx_info* FUNC1 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_AMPDU ; 
 int IEEE80211_TX_CTL_NO_PS_BUFFER ; 
 int IEEE80211_TX_CTL_SEND_AFTER_DTIM ; 
 int IEEE80211_TX_CTL_TX_OFFCHAN ; 
 scalar_t__ IWL_AGG_OFF ; 
 scalar_t__ IWL_AGG_ON ; 
 int IWL_AUX_QUEUE ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_priv*,char*,size_t,size_t,...) ; 
 size_t IWL_INVALID_STATION ; 
 size_t IWL_MAX_TID_COUNT ; 
 size_t IWL_RXON_CTX_BSS ; 
 scalar_t__ FUNC5 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 size_t* FUNC9 (struct ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 size_t FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct iwl_priv*) ; 
 struct iwl_rxon_context* FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (struct iwl_priv*) ; 
 size_t FUNC22 (struct iwl_rxon_context*,struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC23 (struct iwl_priv*,size_t,int) ; 
 struct iwl_rxon_context* FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,struct iwl_rxon_context*) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,struct sk_buff*,struct iwl_rxon_context*,int) ; 
 int /*<<< orphan*/  FUNC27 (struct iwl_priv*,struct sk_buff*,struct iwl_tx_cmd*,struct ieee80211_tx_info*,struct ieee80211_hdr*,size_t) ; 
 int /*<<< orphan*/  FUNC28 (struct iwl_priv*,struct ieee80211_tx_info*,struct iwl_tx_cmd*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC29 (struct iwl_priv*,struct iwl_tx_cmd*,struct ieee80211_tx_info*,struct ieee80211_sta*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,struct ieee80211_hdr*,size_t) ; 
 int /*<<< orphan*/  FUNC31 (struct iwl_rxon_context*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC32 (struct sk_buff*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 struct iwl_wipan_noa_data* FUNC33 (int /*<<< orphan*/ ) ; 
 size_t FUNC34 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC35 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC38 (int) ; 

int FUNC39(struct iwl_priv *priv,
		  struct ieee80211_sta *sta,
		  struct sk_buff *skb)
{
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
	struct ieee80211_tx_info *info = FUNC1(skb);
	struct iwl_station_priv *sta_priv = NULL;
	struct iwl_rxon_context *ctx = &priv->contexts[IWL_RXON_CTX_BSS];
	struct iwl_device_cmd *dev_cmd;
	struct iwl_tx_cmd *tx_cmd;
	__le16 fc;
	u8 hdr_len;
	u16 len, seq_number = 0;
	u8 sta_id, tid = IWL_MAX_TID_COUNT;
	bool is_agg = false, is_data_qos = false;
	int txq_id;

	if (info->control.vif)
		ctx = FUNC20(info->control.vif);

	if (FUNC19(priv)) {
		FUNC2(priv, "Dropping - RF KILL\n");
		goto drop_unlock_priv;
	}

	fc = hdr->frame_control;

#ifdef CONFIG_IWLWIFI_DEBUG
	if (ieee80211_is_auth(fc))
		IWL_DEBUG_TX(priv, "Sending AUTH frame\n");
	else if (ieee80211_is_assoc_req(fc))
		IWL_DEBUG_TX(priv, "Sending ASSOC frame\n");
	else if (ieee80211_is_reassoc_req(fc))
		IWL_DEBUG_TX(priv, "Sending REASSOC frame\n");
#endif

	if (FUNC38(FUNC16(fc))) {
		struct iwl_wipan_noa_data *noa_data =
			FUNC33(priv->noa_data);

		if (noa_data &&
		    FUNC32(skb, 0, noa_data->length,
				     GFP_ATOMIC) == 0) {
			FUNC30(FUNC35(skb, noa_data->length),
			       noa_data->data, noa_data->length);
			hdr = (struct ieee80211_hdr *)skb->data;
		}
	}

	hdr_len = FUNC11(fc);

	/* For management frames use broadcast id to do not break aggregation */
	if (!FUNC14(fc))
		sta_id = ctx->bcast_sta_id;
	else {
		/* Find index into station table for destination station */
		sta_id = FUNC22(ctx, sta);
		if (sta_id == IWL_INVALID_STATION) {
			FUNC2(priv, "Dropping - INVALID STATION: %pM\n",
				       hdr->addr1);
			goto drop_unlock_priv;
		}
	}

	if (sta)
		sta_priv = (void *)sta->drv_priv;

	if (sta_priv && sta_priv->asleep &&
	    (info->flags & IEEE80211_TX_CTL_NO_PS_BUFFER)) {
		/*
		 * This sends an asynchronous command to the device,
		 * but we can rely on it being processed before the
		 * next frame is processed -- and the next frame to
		 * this station is the one that will consume this
		 * counter.
		 * For now set the counter to just 1 since we do not
		 * support uAPSD yet.
		 *
		 * FIXME: If we get two non-bufferable frames one
		 * after the other, we might only send out one of
		 * them because this is racy.
		 */
		FUNC23(priv, sta_id, 1);
	}

	dev_cmd = FUNC24(priv->trans);

	if (FUNC38(!dev_cmd))
		goto drop_unlock_priv;

	FUNC31(dev_cmd, 0, sizeof(*dev_cmd));
	tx_cmd = (struct iwl_tx_cmd *) dev_cmd->payload;

	/* Total # bytes to be transmitted */
	len = (u16)skb->len;
	tx_cmd->len = FUNC8(len);

	if (info->control.hw_key)
		FUNC28(priv, info, tx_cmd, skb);

	/* TODO need this for burst mode later on */
	FUNC27(priv, skb, tx_cmd, info, hdr, sta_id);

	FUNC29(priv, tx_cmd, info, sta, fc);

	FUNC31(&info->status, 0, sizeof(info->status));

	info->driver_data[0] = ctx;
	info->driver_data[1] = dev_cmd;
	/* From now on, we cannot access info->control */

	FUNC36(&priv->sta_lock);

	if (FUNC15(fc) && !FUNC17(fc)) {
		u8 *qc = NULL;
		struct iwl_tid_data *tid_data;
		qc = FUNC9(hdr);
		tid = qc[0] & IEEE80211_QOS_CTL_TID_MASK;
		if (FUNC6(tid >= IWL_MAX_TID_COUNT))
			goto drop_unlock_sta;
		tid_data = &priv->tid_data[sta_id][tid];

		/* aggregation is on for this <sta,tid> */
		if (info->flags & IEEE80211_TX_CTL_AMPDU &&
		    tid_data->agg.state != IWL_AGG_ON) {
			FUNC4(priv, "TX_CTL_AMPDU while not in AGG:"
				" Tx flags = 0x%08x, agg.state = %d",
				info->flags, tid_data->agg.state);
			FUNC4(priv, "sta_id = %d, tid = %d seq_num = %d",
				sta_id, tid,
				FUNC0(tid_data->seq_number));
			goto drop_unlock_sta;
		}

		/* We can receive packets from the stack in IWL_AGG_{ON,OFF}
		 * only. Check this here.
		 */
		if (FUNC5(tid_data->agg.state != IWL_AGG_ON &&
			      tid_data->agg.state != IWL_AGG_OFF,
		    "Tx while agg.state = %d", tid_data->agg.state))
			goto drop_unlock_sta;

		seq_number = tid_data->seq_number;
		seq_number &= IEEE80211_SCTL_SEQ;
		hdr->seq_ctrl &= FUNC8(IEEE80211_SCTL_FRAG);
		hdr->seq_ctrl |= FUNC8(seq_number);
		seq_number += 0x10;

		if (info->flags & IEEE80211_TX_CTL_AMPDU)
			is_agg = true;
		is_data_qos = true;
	}

	/* Copy MAC header from skb into command buffer */
	FUNC30(tx_cmd->hdr, hdr, hdr_len);

	if (is_agg)
		txq_id = priv->tid_data[sta_id][tid].agg.txq_id;
	else if (info->flags & IEEE80211_TX_CTL_SEND_AFTER_DTIM) {
		/*
		 * Send this frame after DTIM -- there's a special queue
		 * reserved for this for contexts that support AP mode.
		 */
		txq_id = ctx->mcast_queue;

		/*
		 * The microcode will clear the more data
		 * bit in the last frame it transmits.
		 */
		hdr->frame_control |=
			FUNC8(IEEE80211_FCTL_MOREDATA);
	} else if (info->flags & IEEE80211_TX_CTL_TX_OFFCHAN)
		txq_id = IWL_AUX_QUEUE;
	else
		txq_id = ctx->ac_to_queue[FUNC34(skb)];

	FUNC6(!is_agg && txq_id != info->hw_queue);
	FUNC6(is_agg &&
		     priv->queue_to_mac80211[txq_id] != info->hw_queue);

	FUNC3(priv, "TX to [%d|%d] Q:%d - seq: 0x%x\n", sta_id, tid,
		     txq_id, seq_number);

	if (FUNC26(priv->trans, skb, dev_cmd, txq_id))
		goto drop_unlock_sta;

	if (is_data_qos && !FUNC10(fc))
		priv->tid_data[sta_id][tid].seq_number = seq_number;

	FUNC37(&priv->sta_lock);

	/*
	 * Avoid atomic ops if it isn't an associated client.
	 * Also, if this is a packet for aggregation, don't
	 * increase the counter because the ucode will stop
	 * aggregation queues when their respective station
	 * goes to sleep.
	 */
	if (sta_priv && sta_priv->client && !is_agg)
		FUNC7(&sta_priv->pending_frames);

	if (info->flags & IEEE80211_TX_CTL_TX_OFFCHAN)
		FUNC21(priv);

	return 0;

drop_unlock_sta:
	if (dev_cmd)
		FUNC25(priv->trans, dev_cmd);
	FUNC37(&priv->sta_lock);
drop_unlock_priv:
	return -1;
}