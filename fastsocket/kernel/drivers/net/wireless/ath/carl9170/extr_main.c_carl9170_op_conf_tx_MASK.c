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
typedef  scalar_t__ u16 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_queue_params {int dummy; } ;
struct ieee80211_hw {struct ar9170* priv; } ;
struct ar9170 {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * edcf; TYPE_1__* hw; } ;
struct TYPE_2__ {scalar_t__ queues; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t* ar9170_qmap ; 
 int FUNC0 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ieee80211_tx_queue_params const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ieee80211_hw *hw,
			       struct ieee80211_vif *vif, u16 queue,
			       const struct ieee80211_tx_queue_params *param)
{
	struct ar9170 *ar = hw->priv;
	int ret;

	FUNC2(&ar->mutex);
	if (queue < ar->hw->queues) {
		FUNC1(&ar->edcf[ar9170_qmap[queue]], param, sizeof(*param));
		ret = FUNC0(ar);
	} else {
		ret = -EINVAL;
	}

	FUNC3(&ar->mutex);
	return ret;
}