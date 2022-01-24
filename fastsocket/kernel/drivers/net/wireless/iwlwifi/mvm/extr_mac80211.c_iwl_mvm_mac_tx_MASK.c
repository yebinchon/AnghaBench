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
struct sk_buff {int dummy; } ;
struct iwl_mvm {int /*<<< orphan*/  status; } ;
struct ieee80211_tx_control {int /*<<< orphan*/  sta; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ hw_queue; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
 struct iwl_mvm* FUNC2 (struct ieee80211_hw*) ; 
 scalar_t__ IWL_MVM_OFFCHANNEL_QUEUE ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_HW_RFKILL ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_ROC_RUNNING ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_hw*,struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct iwl_mvm*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct iwl_mvm*,struct sk_buff*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ieee80211_hw *hw,
			   struct ieee80211_tx_control *control,
			   struct sk_buff *skb)
{
	struct iwl_mvm *mvm = FUNC2(hw);

	if (FUNC6(IWL_MVM_STATUS_HW_RFKILL, &mvm->status)) {
		FUNC1(mvm, "Dropping - RF KILL\n");
		goto drop;
	}

	if (FUNC0(skb)->hw_queue == IWL_MVM_OFFCHANNEL_QUEUE &&
	    !FUNC6(IWL_MVM_STATUS_ROC_RUNNING, &mvm->status))
		goto drop;

	if (control->sta) {
		if (FUNC4(mvm, skb, control->sta))
			goto drop;
		return;
	}

	if (FUNC5(mvm, skb))
		goto drop;
	return;
 drop:
	FUNC3(hw, skb);
}