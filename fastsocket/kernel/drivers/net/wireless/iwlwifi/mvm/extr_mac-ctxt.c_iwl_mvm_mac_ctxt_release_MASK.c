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
struct iwl_mvm {int /*<<< orphan*/  trans; int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int type; int /*<<< orphan*/ * hw_queue; int /*<<< orphan*/  cab_queue; } ;

/* Variables and functions */
 int IEEE80211_NUM_ACS ; 
 int /*<<< orphan*/  IWL_MVM_OFFCHANNEL_QUEUE ; 
#define  NL80211_IFTYPE_AP 129 
#define  NL80211_IFTYPE_P2P_DEVICE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
	int ac;

	FUNC1(&mvm->mutex);

	switch (vif->type) {
	case NL80211_IFTYPE_P2P_DEVICE:
		FUNC0(mvm->trans, IWL_MVM_OFFCHANNEL_QUEUE);
		break;
	case NL80211_IFTYPE_AP:
		FUNC0(mvm->trans, vif->cab_queue);
		/* fall through */
	default:
		for (ac = 0; ac < IEEE80211_NUM_ACS; ac++)
			FUNC0(mvm->trans, vif->hw_queue[ac]);
	}
}