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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {scalar_t__ data; } ;
struct iwl_tx_cmd {int dummy; } ;
struct iwl_mvm {int /*<<< orphan*/  trans; } ;
struct iwl_device_cmd {scalar_t__ payload; } ;
struct TYPE_2__ {scalar_t__ hw_key; } ;
struct ieee80211_tx_info {struct iwl_device_cmd** driver_data; struct iwl_device_cmd status; TYPE_1__ control; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;

/* Variables and functions */
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,struct sk_buff*,struct iwl_tx_cmd*,struct ieee80211_tx_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,struct ieee80211_tx_info*,struct iwl_tx_cmd*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,struct iwl_tx_cmd*,struct ieee80211_tx_info*,struct ieee80211_sta*,int /*<<< orphan*/ ) ; 
 struct iwl_device_cmd* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_device_cmd*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static struct iwl_device_cmd *
FUNC7(struct iwl_mvm *mvm, struct sk_buff *skb,
		      struct ieee80211_sta *sta, u8 sta_id)
{
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
	struct ieee80211_tx_info *info = FUNC0(skb);
	struct iwl_device_cmd *dev_cmd;
	struct iwl_tx_cmd *tx_cmd;

	dev_cmd = FUNC4(mvm->trans);

	if (FUNC6(!dev_cmd))
		return NULL;

	FUNC5(dev_cmd, 0, sizeof(*dev_cmd));
	tx_cmd = (struct iwl_tx_cmd *)dev_cmd->payload;

	if (info->control.hw_key)
		FUNC2(mvm, info, tx_cmd, skb);

	FUNC1(mvm, skb, tx_cmd, info, sta_id);

	FUNC3(mvm, tx_cmd, info, sta, hdr->frame_control);

	FUNC5(&info->status, 0, sizeof(info->status));

	info->driver_data[0] = NULL;
	info->driver_data[1] = dev_cmd;

	return dev_cmd;
}