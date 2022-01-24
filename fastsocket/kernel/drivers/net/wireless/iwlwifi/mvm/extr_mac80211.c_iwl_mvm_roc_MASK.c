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
struct iwl_mvm {int /*<<< orphan*/  mutex; int /*<<< orphan*/  phy_ctxt_roc; } ;
struct ieee80211_vif {int /*<<< orphan*/  type; } ;
struct ieee80211_hw {int dummy; } ;
struct ieee80211_channel {int /*<<< orphan*/  hw_value; } ;
struct cfg80211_chan_def {int dummy; } ;
typedef  enum ieee80211_roc_type { ____Placeholder_ieee80211_roc_type } ieee80211_roc_type ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,int /*<<< orphan*/ ) ; 
 struct iwl_mvm* FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  NL80211_CHAN_NO_HT ; 
 int /*<<< orphan*/  NL80211_IFTYPE_P2P_DEVICE ; 
 int /*<<< orphan*/  FUNC3 (struct cfg80211_chan_def*,struct ieee80211_channel*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iwl_mvm*,int /*<<< orphan*/ *,struct cfg80211_chan_def*,int,int) ; 
 int FUNC5 (struct iwl_mvm*,struct ieee80211_vif*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct ieee80211_hw *hw,
		       struct ieee80211_vif *vif,
		       struct ieee80211_channel *channel,
		       int duration,
		       enum ieee80211_roc_type type)
{
	struct iwl_mvm *mvm = FUNC2(hw);
	struct cfg80211_chan_def chandef;
	int ret;

	if (vif->type != NL80211_IFTYPE_P2P_DEVICE) {
		FUNC1(mvm, "vif isn't a P2P_DEVICE: %d\n", vif->type);
		return -EINVAL;
	}

	FUNC0(mvm, "enter (%d, %d, %d)\n", channel->hw_value,
			   duration, type);

	FUNC6(&mvm->mutex);

	FUNC3(&chandef, channel, NL80211_CHAN_NO_HT);
	ret = FUNC4(mvm, &mvm->phy_ctxt_roc,
				       &chandef, 1, 1);

	/* Schedule the time events */
	ret = FUNC5(mvm, vif, duration, type);

	FUNC7(&mvm->mutex);
	FUNC0(mvm, "leave\n");

	return ret;
}