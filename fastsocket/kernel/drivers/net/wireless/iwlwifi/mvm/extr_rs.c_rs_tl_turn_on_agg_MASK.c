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
typedef  scalar_t__ u8 ;
struct iwl_mvm {int dummy; } ;
struct iwl_lq_sta {int dummy; } ;
struct ieee80211_sta {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ IWL_MAX_TID_COUNT ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,struct iwl_lq_sta*,scalar_t__,struct ieee80211_sta*) ; 

__attribute__((used)) static void FUNC2(struct iwl_mvm *mvm, u8 tid,
			      struct iwl_lq_sta *lq_data,
			      struct ieee80211_sta *sta)
{
	if (tid < IWL_MAX_TID_COUNT)
		FUNC1(mvm, lq_data, tid, sta);
	else
		FUNC0(mvm, "tid exceeds max TID count: %d/%d\n",
			tid, IWL_MAX_TID_COUNT);
}