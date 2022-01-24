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
struct iwl_mvm {int /*<<< orphan*/  async_handlers_wk; int /*<<< orphan*/  mutex; int /*<<< orphan*/  aux_sta; int /*<<< orphan*/  trans; int /*<<< orphan*/  roc_done_wk; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct ieee80211_hw *hw)
{
	struct iwl_mvm *mvm = FUNC0(hw);

	FUNC2(&mvm->async_handlers_wk);

	FUNC7(&mvm->mutex);
	/* async_handlers_wk is now blocked */

	/*
	 * The work item could be running or queued if the
	 * ROC time event stops just as we get here.
	 */
	FUNC1(&mvm->roc_done_wk);

	FUNC5(mvm->trans);
	FUNC6(mvm->trans, false);

	FUNC3(mvm);
	/* async_handlers_list is empty and will stay empty: HW is stopped */

	/* the fw is stopped, the aux sta is dead: clean up driver state */
	FUNC4(mvm, &mvm->aux_sta);

	FUNC8(&mvm->mutex);

	/*
	 * The worker might have been waiting for the mutex, let it run and
	 * discover that its list is now empty.
	 */
	FUNC1(&mvm->async_handlers_wk);
}