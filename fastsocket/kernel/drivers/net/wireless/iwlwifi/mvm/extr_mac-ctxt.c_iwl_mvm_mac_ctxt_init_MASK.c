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
typedef  size_t u32 ;
struct iwl_mvm {int /*<<< orphan*/  trans; int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int type; int /*<<< orphan*/ * hw_queue; int /*<<< orphan*/  cab_queue; } ;

/* Variables and functions */
 size_t IEEE80211_NUM_ACS ; 
 int /*<<< orphan*/  IWL_MVM_OFFCHANNEL_QUEUE ; 
 int /*<<< orphan*/  IWL_MVM_TX_FIFO_MCAST ; 
 int /*<<< orphan*/  IWL_MVM_TX_FIFO_VO ; 
#define  NL80211_IFTYPE_AP 129 
#define  NL80211_IFTYPE_P2P_DEVICE 128 
 int /*<<< orphan*/ * iwl_mvm_ac_to_tx_fifo ; 
 int FUNC0 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
	u32 ac;
	int ret;

	FUNC2(&mvm->mutex);

	ret = FUNC0(mvm, vif);
	if (ret)
		return ret;

	switch (vif->type) {
	case NL80211_IFTYPE_P2P_DEVICE:
		FUNC1(mvm->trans, IWL_MVM_OFFCHANNEL_QUEUE,
					IWL_MVM_TX_FIFO_VO);
		break;
	case NL80211_IFTYPE_AP:
		FUNC1(mvm->trans, vif->cab_queue,
					IWL_MVM_TX_FIFO_MCAST);
		/* fall through */
	default:
		for (ac = 0; ac < IEEE80211_NUM_ACS; ac++)
			FUNC1(mvm->trans, vif->hw_queue[ac],
						iwl_mvm_ac_to_tx_fifo[ac]);
		break;
	}

	return 0;
}