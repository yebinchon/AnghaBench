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
struct iwl_mvm {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum ieee80211_rssi_event { ____Placeholder_ieee80211_rssi_event } ieee80211_rssi_event ;

/* Variables and functions */
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,struct ieee80211_vif*,int) ; 

__attribute__((used)) static void FUNC2(struct ieee80211_hw *hw,
				      struct ieee80211_vif *vif,
				      enum ieee80211_rssi_event rssi_event)
{
	struct iwl_mvm *mvm = FUNC0(hw);

	FUNC1(mvm, vif, rssi_event);
}