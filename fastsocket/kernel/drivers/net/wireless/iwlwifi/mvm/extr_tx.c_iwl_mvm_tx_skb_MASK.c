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
typedef  size_t u8 ;
typedef  int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct iwl_tx_cmd {int /*<<< orphan*/  hdr; } ;
struct iwl_mvm_sta {size_t sta_id; int /*<<< orphan*/  lock; TYPE_1__* tid_data; } ;
struct iwl_mvm {int /*<<< orphan*/  trans; int /*<<< orphan*/ * pending_frames; } ;
struct iwl_device_cmd {scalar_t__ payload; } ;
struct ieee80211_tx_info {size_t hw_queue; int flags; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_hdr {int /*<<< orphan*/  seq_ctrl; int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int seq_number; scalar_t__ state; size_t txq_id; } ;

/* Variables and functions */
 size_t IEEE80211_QOS_CTL_TID_MASK ; 
 int IEEE80211_SCTL_FRAG ; 
 int IEEE80211_SCTL_SEQ ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_AMPDU ; 
 int IEEE80211_TX_CTL_SEND_AFTER_DTIM ; 
 scalar_t__ IWL_AGG_ON ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,size_t,size_t,size_t,int) ; 
 size_t IWL_MAX_TID_COUNT ; 
 size_t IWL_MVM_FIRST_AGG_QUEUE ; 
 size_t IWL_MVM_STATION_COUNT ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 size_t* FUNC5 (struct ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct iwl_device_cmd* FUNC10 (struct iwl_mvm*,struct sk_buff*,struct ieee80211_sta*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct iwl_device_cmd*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,struct sk_buff*,struct iwl_device_cmd*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct ieee80211_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int FUNC16(struct iwl_mvm *mvm, struct sk_buff *skb,
		   struct ieee80211_sta *sta)
{
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
	struct ieee80211_tx_info *info = FUNC0(skb);
	struct iwl_mvm_sta *mvmsta;
	struct iwl_device_cmd *dev_cmd;
	struct iwl_tx_cmd *tx_cmd;
	__le16 fc;
	u16 seq_number = 0;
	u8 tid = IWL_MAX_TID_COUNT;
	u8 txq_id = info->hw_queue;
	bool is_data_qos = false, is_ampdu = false;

	mvmsta = (void *)sta->drv_priv;
	fc = hdr->frame_control;

	if (FUNC2(!mvmsta))
		return -1;

	if (FUNC2(mvmsta->sta_id == IWL_MVM_STATION_COUNT))
		return -1;

	dev_cmd = FUNC10(mvm, skb, sta, mvmsta->sta_id);
	if (!dev_cmd)
		goto drop;

	tx_cmd = (struct iwl_tx_cmd *)dev_cmd->payload;
	/* From now on, we cannot access info->control */

	FUNC14(&mvmsta->lock);

	if (FUNC8(fc) && !FUNC9(fc)) {
		u8 *qc = NULL;
		qc = FUNC5(hdr);
		tid = qc[0] & IEEE80211_QOS_CTL_TID_MASK;
		if (FUNC2(tid >= IWL_MAX_TID_COUNT))
			goto drop_unlock_sta;

		seq_number = mvmsta->tid_data[tid].seq_number;
		seq_number &= IEEE80211_SCTL_SEQ;
		hdr->seq_ctrl &= FUNC4(IEEE80211_SCTL_FRAG);
		hdr->seq_ctrl |= FUNC4(seq_number);
		seq_number += 0x10;
		is_data_qos = true;
		is_ampdu = info->flags & IEEE80211_TX_CTL_AMPDU;
	}

	/* Copy MAC header from skb into command buffer */
	FUNC13(tx_cmd->hdr, hdr, FUNC7(fc));

	FUNC2(info->flags & IEEE80211_TX_CTL_SEND_AFTER_DTIM);

	if (is_ampdu) {
		if (FUNC2(mvmsta->tid_data[tid].state != IWL_AGG_ON))
			goto drop_unlock_sta;
		txq_id = mvmsta->tid_data[tid].txq_id;
	}

	FUNC1(mvm, "TX to [%d|%d] Q:%d - seq: 0x%x\n", mvmsta->sta_id,
		     tid, txq_id, seq_number);

	/* NOTE: aggregation will need changes here (for txq id) */
	if (FUNC12(mvm->trans, skb, dev_cmd, txq_id))
		goto drop_unlock_sta;

	if (is_data_qos && !FUNC6(fc))
		mvmsta->tid_data[tid].seq_number = seq_number;

	FUNC15(&mvmsta->lock);

	if (txq_id < IWL_MVM_FIRST_AGG_QUEUE)
		FUNC3(&mvm->pending_frames[mvmsta->sta_id]);

	return 0;

drop_unlock_sta:
	FUNC11(mvm->trans, dev_cmd);
	FUNC15(&mvmsta->lock);
drop:
	return -1;
}