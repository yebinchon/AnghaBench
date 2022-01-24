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
struct iwl_mvm_sta {size_t sta_id; } ;
struct iwl_mvm {int /*<<< orphan*/ * pending_frames; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum sta_notify_cmd { ____Placeholder_sta_notify_cmd } sta_notify_cmd ;

/* Variables and functions */
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
 size_t IWL_MVM_STATION_COUNT ; 
#define  STA_NOTIFY_AWAKE 129 
#define  STA_NOTIFY_SLEEP 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,struct ieee80211_sta*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*,struct ieee80211_sta*) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw,
				   struct ieee80211_vif *vif,
				   enum sta_notify_cmd cmd,
				   struct ieee80211_sta *sta)
{
	struct iwl_mvm *mvm = FUNC0(hw);
	struct iwl_mvm_sta *mvmsta = (void *)sta->drv_priv;

	switch (cmd) {
	case STA_NOTIFY_SLEEP:
		if (FUNC2(&mvm->pending_frames[mvmsta->sta_id]) > 0)
			FUNC3(hw, sta, true);
		/*
		 * The fw updates the STA to be asleep. Tx packets on the Tx
		 * queues to this station will not be transmitted. The fw will
		 * send a Tx response with TX_STATUS_FAIL_DEST_PS.
		 */
		break;
	case STA_NOTIFY_AWAKE:
		if (FUNC1(mvmsta->sta_id == IWL_MVM_STATION_COUNT))
			break;
		FUNC4(mvm, sta);
		break;
	default:
		break;
	}
}