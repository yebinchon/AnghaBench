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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {scalar_t__ data; } ;
struct iwl_tx_cmd {int /*<<< orphan*/  hdr; } ;
struct TYPE_6__ {int /*<<< orphan*/  sta_id; } ;
struct iwl_mvm_vif {TYPE_2__ bcast_sta; } ;
struct TYPE_7__ {int /*<<< orphan*/  sta_id; } ;
struct iwl_mvm {int /*<<< orphan*/  trans; TYPE_3__ aux_sta; } ;
struct iwl_device_cmd {scalar_t__ payload; } ;
struct TYPE_5__ {TYPE_4__* vif; } ;
struct ieee80211_tx_info {int flags; scalar_t__ hw_queue; TYPE_1__ control; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct TYPE_8__ {scalar_t__ cab_queue; scalar_t__ type; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_AMPDU ; 
 int IEEE80211_TX_CTL_SEND_AFTER_DTIM ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct iwl_device_cmd* FUNC4 (struct iwl_mvm*,struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct iwl_mvm_vif* FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct iwl_device_cmd*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct sk_buff*,struct iwl_device_cmd*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct ieee80211_hdr*,int /*<<< orphan*/ ) ; 

int FUNC9(struct iwl_mvm *mvm, struct sk_buff *skb)
{
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
	struct ieee80211_tx_info *info = FUNC0(skb);
	struct iwl_device_cmd *dev_cmd;
	struct iwl_tx_cmd *tx_cmd;
	u8 sta_id;

	if (FUNC2(info->flags & IEEE80211_TX_CTL_AMPDU))
		return -1;

	if (FUNC2(info->flags & IEEE80211_TX_CTL_SEND_AFTER_DTIM &&
			 (!info->control.vif ||
			  info->hw_queue != info->control.vif->cab_queue)))
		return -1;

	/*
	 * If the interface on which frame is sent is the P2P_DEVICE
	 * or an AP/GO interface use the broadcast station associated
	 * with it; otherwise use the AUX station.
	 */
	if (info->control.vif &&
	    (info->control.vif->type == NL80211_IFTYPE_P2P_DEVICE ||
	     info->control.vif->type == NL80211_IFTYPE_AP)) {
		struct iwl_mvm_vif *mvmvif =
			FUNC5(info->control.vif);
		sta_id = mvmvif->bcast_sta.sta_id;
	} else {
		sta_id = mvm->aux_sta.sta_id;
	}

	FUNC1(mvm, "station Id %d, queue=%d\n", sta_id, info->hw_queue);

	dev_cmd = FUNC4(mvm, skb, NULL, sta_id);
	if (!dev_cmd)
		return -1;

	/* From now on, we cannot access info->control */
	tx_cmd = (struct iwl_tx_cmd *)dev_cmd->payload;

	/* Copy MAC header from skb into command buffer */
	FUNC8(tx_cmd->hdr, hdr, FUNC3(hdr->frame_control));

	if (FUNC7(mvm->trans, skb, dev_cmd, info->hw_queue)) {
		FUNC6(mvm->trans, dev_cmd);
		return -1;
	}

	return 0;
}