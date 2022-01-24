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
struct iwl_mvm_time_event_data {int dummy; } ;
struct iwl_mvm_vif {struct iwl_mvm_time_event_data time_event_data; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,struct iwl_mvm_vif*,struct iwl_mvm_time_event_data*) ; 
 struct iwl_mvm_vif* FUNC1 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct iwl_mvm *mvm,
				     struct ieee80211_vif *vif)
{
	struct iwl_mvm_vif *mvmvif = FUNC1(vif);
	struct iwl_mvm_time_event_data *te_data = &mvmvif->time_event_data;

	FUNC2(&mvm->mutex);
	FUNC0(mvm, mvmvif, te_data);
}