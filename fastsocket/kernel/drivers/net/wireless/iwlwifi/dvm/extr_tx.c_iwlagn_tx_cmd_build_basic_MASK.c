#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sk_buff {scalar_t__ protocol; } ;
struct TYPE_8__ {void* pm_frame_timeout; } ;
struct TYPE_5__ {int /*<<< orphan*/  life_time; } ;
struct iwl_tx_cmd {int tx_flags; int sta_id; int tid_tspec; scalar_t__ next_frame_len; scalar_t__ driver_txop; TYPE_4__ timeout; TYPE_1__ stop_time; } ;
struct iwl_priv {TYPE_3__* cfg; } ;
struct ieee80211_tx_info {int flags; scalar_t__ band; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
typedef  int __le32 ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_7__ {TYPE_2__* bt_params; } ;
struct TYPE_6__ {scalar_t__ advanced_bt_coexist; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_PAE ; 
 scalar_t__ IEEE80211_BAND_2GHZ ; 
 int IEEE80211_TX_CTL_ASSIGN_SEQ ; 
 int IEEE80211_TX_CTL_NO_ACK ; 
 int IWL_TID_NON_QOS ; 
 int TX_CMD_FLG_ACK_MSK ; 
 int TX_CMD_FLG_ANT_SEL_MSK ; 
 int TX_CMD_FLG_IGNORE_BT ; 
 int TX_CMD_FLG_IMM_BA_RSP_MASK ; 
 int TX_CMD_FLG_MORE_FRAG_MSK ; 
 int TX_CMD_FLG_SEQ_CTL_MSK ; 
 int TX_CMD_FLG_TSF_MSK ; 
 int /*<<< orphan*/  TX_CMD_LIFE_TIME_INFINITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int* FUNC2 (struct ieee80211_hdr*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct iwl_priv*,struct ieee80211_tx_info*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC12(struct iwl_priv *priv,
				      struct sk_buff *skb,
				      struct iwl_tx_cmd *tx_cmd,
				      struct ieee80211_tx_info *info,
				      struct ieee80211_hdr *hdr, u8 sta_id)
{
	__le16 fc = hdr->frame_control;
	__le32 tx_flags = tx_cmd->tx_flags;

	tx_cmd->stop_time.life_time = TX_CMD_LIFE_TIME_INFINITE;

	if (!(info->flags & IEEE80211_TX_CTL_NO_ACK))
		tx_flags |= TX_CMD_FLG_ACK_MSK;
	else
		tx_flags &= ~TX_CMD_FLG_ACK_MSK;

	if (FUNC9(fc))
		tx_flags |= TX_CMD_FLG_TSF_MSK;
	else if (FUNC6(fc))
		tx_flags |= TX_CMD_FLG_ACK_MSK | TX_CMD_FLG_IMM_BA_RSP_MASK;
	else if (info->band == IEEE80211_BAND_2GHZ &&
		 priv->cfg->bt_params &&
		 priv->cfg->bt_params->advanced_bt_coexist &&
		 (FUNC5(fc) || FUNC4(fc) ||
		 FUNC10(fc) ||
		 skb->protocol == FUNC0(ETH_P_PAE)))
		tx_flags |= TX_CMD_FLG_IGNORE_BT;


	tx_cmd->sta_id = sta_id;
	if (FUNC3(fc))
		tx_flags |= TX_CMD_FLG_MORE_FRAG_MSK;

	if (FUNC7(fc)) {
		u8 *qc = FUNC2(hdr);
		tx_cmd->tid_tspec = qc[0] & 0xf;
		tx_flags &= ~TX_CMD_FLG_SEQ_CTL_MSK;
	} else {
		tx_cmd->tid_tspec = IWL_TID_NON_QOS;
		if (info->flags & IEEE80211_TX_CTL_ASSIGN_SEQ)
			tx_flags |= TX_CMD_FLG_SEQ_CTL_MSK;
		else
			tx_flags &= ~TX_CMD_FLG_SEQ_CTL_MSK;
	}

	FUNC11(priv, info, fc, &tx_flags);

	tx_flags &= ~(TX_CMD_FLG_ANT_SEL_MSK);
	if (FUNC8(fc)) {
		if (FUNC4(fc) || FUNC10(fc))
			tx_cmd->timeout.pm_frame_timeout = FUNC1(3);
		else
			tx_cmd->timeout.pm_frame_timeout = FUNC1(2);
	} else {
		tx_cmd->timeout.pm_frame_timeout = 0;
	}

	tx_cmd->driver_txop = 0;
	tx_cmd->tx_flags = tx_flags;
	tx_cmd->next_frame_len = 0;
}