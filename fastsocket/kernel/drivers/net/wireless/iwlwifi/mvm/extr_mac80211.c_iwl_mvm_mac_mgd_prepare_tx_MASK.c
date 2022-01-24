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
typedef  int /*<<< orphan*/  u32 ;
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;
struct TYPE_2__ {int /*<<< orphan*/  assoc; scalar_t__ beacon_int; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  IWL_MVM_TE_SESSION_PROTECTION_MAX_TIME_MS ; 
 int /*<<< orphan*/  IWL_MVM_TE_SESSION_PROTECTION_MIN_TIME_MS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,struct ieee80211_vif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *hw,
				      struct ieee80211_vif *vif)
{
	struct iwl_mvm *mvm = FUNC0(hw);
	u32 duration = FUNC3(IWL_MVM_TE_SESSION_PROTECTION_MAX_TIME_MS,
			   200 + vif->bss_conf.beacon_int);
	u32 min_duration = FUNC3(IWL_MVM_TE_SESSION_PROTECTION_MIN_TIME_MS,
			       100 + vif->bss_conf.beacon_int);

	if (FUNC1(vif->bss_conf.assoc))
		return;

	FUNC4(&mvm->mutex);
	/* Try really hard to protect the session and hear a beacon */
	FUNC2(mvm, vif, duration, min_duration);
	FUNC5(&mvm->mutex);
}