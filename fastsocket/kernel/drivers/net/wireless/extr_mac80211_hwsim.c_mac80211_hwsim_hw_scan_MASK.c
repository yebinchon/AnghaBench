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
struct mac80211_hwsim_data {int /*<<< orphan*/  hw_scan; int /*<<< orphan*/  hw; int /*<<< orphan*/  mutex; scalar_t__ scan_chan_idx; struct ieee80211_vif* hw_scan_vif; struct cfg80211_scan_request* hw_scan_request; scalar_t__ tmp_chan; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; struct mac80211_hwsim_data* priv; } ;
struct cfg80211_scan_request {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(struct ieee80211_hw *hw,
				  struct ieee80211_vif *vif,
				  struct cfg80211_scan_request *req)
{
	struct mac80211_hwsim_data *hwsim = hw->priv;

	FUNC2(&hwsim->mutex);
	if (FUNC0(hwsim->tmp_chan || hwsim->hw_scan_request)) {
		FUNC3(&hwsim->mutex);
		return -EBUSY;
	}
	hwsim->hw_scan_request = req;
	hwsim->hw_scan_vif = vif;
	hwsim->scan_chan_idx = 0;
	FUNC3(&hwsim->mutex);

	FUNC4(hw->wiphy, "hwsim hw_scan request\n");

	FUNC1(hwsim->hw, &hwsim->hw_scan, 0);

	return 0;
}