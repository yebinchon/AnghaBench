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
struct iwl_mvm {scalar_t__ scan_status; int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct cfg80211_scan_request {scalar_t__ n_channels; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 struct iwl_mvm* FUNC0 (struct ieee80211_hw*) ; 
 scalar_t__ IWL_MVM_SCAN_NONE ; 
 scalar_t__ MAX_NUM_SCAN_CHANNELS ; 
 int FUNC1 (struct iwl_mvm*,struct ieee80211_vif*,struct cfg80211_scan_request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_hw *hw,
			       struct ieee80211_vif *vif,
			       struct cfg80211_scan_request *req)
{
	struct iwl_mvm *mvm = FUNC0(hw);
	int ret;

	if (req->n_channels == 0 || req->n_channels > MAX_NUM_SCAN_CHANNELS)
		return -EINVAL;

	FUNC2(&mvm->mutex);

	if (mvm->scan_status == IWL_MVM_SCAN_NONE)
		ret = FUNC1(mvm, vif, req);
	else
		ret = -EBUSY;

	FUNC3(&mvm->mutex);

	return ret;
}