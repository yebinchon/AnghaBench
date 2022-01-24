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
struct sk_buff {int dummy; } ;
struct iwl_mvm {int /*<<< orphan*/  hw; } ;
struct ieee80211_vif {scalar_t__ type; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,struct ieee80211_vif*) ; 
 int FUNC3 (struct iwl_mvm*,struct ieee80211_vif*,struct sk_buff*) ; 

int FUNC4(struct iwl_mvm *mvm,
				    struct ieee80211_vif *vif)
{
	struct sk_buff *beacon;
	int ret;

	FUNC0(vif->type != NL80211_IFTYPE_AP);

	beacon = FUNC2(mvm->hw, vif);
	if (!beacon)
		return -ENOMEM;

	ret = FUNC3(mvm, vif, beacon);
	FUNC1(beacon);
	return ret;
}