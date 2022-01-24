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
struct iwl_mvm {int /*<<< orphan*/  mutex; int /*<<< orphan*/  status; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int) ; 
 struct iwl_mvm* FUNC1 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_IN_HW_RESTART ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct iwl_mvm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ieee80211_hw *hw)
{
	struct iwl_mvm *mvm = FUNC1(hw);
	int ret;

	FUNC4(&mvm->mutex);

	FUNC2(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status);
	ret = FUNC3(mvm, NULL);
	if (ret)
		FUNC0(mvm, "Failed to update quotas after restart (%d)\n",
			ret);

	FUNC5(&mvm->mutex);
}