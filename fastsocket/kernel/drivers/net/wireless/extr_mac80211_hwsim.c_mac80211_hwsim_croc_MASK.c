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
struct mac80211_hwsim_data {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * tmp_chan; int /*<<< orphan*/  roc_done; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; struct mac80211_hwsim_data* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_hw *hw)
{
	struct mac80211_hwsim_data *hwsim = hw->priv;

	FUNC0(&hwsim->roc_done);

	FUNC1(&hwsim->mutex);
	hwsim->tmp_chan = NULL;
	FUNC2(&hwsim->mutex);

	FUNC3(hw->wiphy, "hwsim ROC canceled\n");

	return 0;
}