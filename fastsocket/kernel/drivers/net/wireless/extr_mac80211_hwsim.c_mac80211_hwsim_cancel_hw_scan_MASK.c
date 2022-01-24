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
struct mac80211_hwsim_data {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * hw_scan_vif; int /*<<< orphan*/ * hw_scan_request; int /*<<< orphan*/ * tmp_chan; int /*<<< orphan*/  hw; int /*<<< orphan*/  hw_scan; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; struct mac80211_hwsim_data* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(struct ieee80211_hw *hw,
					  struct ieee80211_vif *vif)
{
	struct mac80211_hwsim_data *hwsim = hw->priv;

	FUNC4(hw->wiphy, "hwsim cancel_hw_scan\n");

	FUNC0(&hwsim->hw_scan);

	FUNC2(&hwsim->mutex);
	FUNC1(hwsim->hw, true);
	hwsim->tmp_chan = NULL;
	hwsim->hw_scan_request = NULL;
	hwsim->hw_scan_vif = NULL;
	FUNC3(&hwsim->mutex);
}