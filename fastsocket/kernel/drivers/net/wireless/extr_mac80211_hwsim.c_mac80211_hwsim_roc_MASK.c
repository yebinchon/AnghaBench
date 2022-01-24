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
struct mac80211_hwsim_data {int /*<<< orphan*/  roc_done; int /*<<< orphan*/  mutex; struct ieee80211_channel* tmp_chan; scalar_t__ hw_scan_request; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; struct mac80211_hwsim_data* priv; } ;
struct ieee80211_channel {int /*<<< orphan*/  center_freq; } ;
typedef  enum ieee80211_roc_type { ____Placeholder_ieee80211_roc_type } ieee80211_roc_type ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct ieee80211_hw *hw,
			      struct ieee80211_vif *vif,
			      struct ieee80211_channel *chan,
			      int duration,
			      enum ieee80211_roc_type type)
{
	struct mac80211_hwsim_data *hwsim = hw->priv;

	FUNC4(&hwsim->mutex);
	if (FUNC0(hwsim->tmp_chan || hwsim->hw_scan_request)) {
		FUNC5(&hwsim->mutex);
		return -EBUSY;
	}

	hwsim->tmp_chan = chan;
	FUNC5(&hwsim->mutex);

	FUNC6(hw->wiphy, "hwsim ROC (%d MHz, %d ms)\n",
		    chan->center_freq, duration);

	FUNC2(hw);

	FUNC1(hw, &hwsim->roc_done,
				     FUNC3(duration));
	return 0;
}