#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_queue_params {int txop; int /*<<< orphan*/  cw_max; int /*<<< orphan*/  cw_min; int /*<<< orphan*/  aifs; } ;
struct ieee80211_hw {struct ath5k_hw* priv; } ;
struct ath5k_txq_info {int tqi_burst_time; int /*<<< orphan*/  tqi_cw_max; int /*<<< orphan*/  tqi_cw_min; int /*<<< orphan*/  tqi_aifs; } ;
struct TYPE_3__ {scalar_t__ q_tx_num; } ;
struct TYPE_4__ {TYPE_1__ cap_queues; } ;
struct ath5k_hw {int /*<<< orphan*/  lock; TYPE_2__ ah_capabilities; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ATH5K_DEBUG_ANY ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,char*,scalar_t__) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,scalar_t__,struct ath5k_txq_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath5k_hw*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct ath5k_hw*,scalar_t__,struct ath5k_txq_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct ieee80211_hw *hw, struct ieee80211_vif *vif, u16 queue,
	      const struct ieee80211_tx_queue_params *params)
{
	struct ath5k_hw *ah = hw->priv;
	struct ath5k_txq_info qi;
	int ret = 0;

	if (queue >= ah->ah_capabilities.cap_queues.q_tx_num)
		return 0;

	FUNC5(&ah->lock);

	FUNC2(ah, queue, &qi);

	qi.tqi_aifs = params->aifs;
	qi.tqi_cw_min = params->cw_min;
	qi.tqi_cw_max = params->cw_max;
	qi.tqi_burst_time = params->txop * 32;

	FUNC0(ah, ATH5K_DEBUG_ANY,
		  "Configure tx [queue %d],  "
		  "aifs: %d, cw_min: %d, cw_max: %d, txop: %d\n",
		  queue, params->aifs, params->cw_min,
		  params->cw_max, params->txop);

	if (FUNC4(ah, queue, &qi)) {
		FUNC1(ah,
			  "Unable to update hardware queue %u!\n", queue);
		ret = -EIO;
	} else
		FUNC3(ah, queue);

	FUNC6(&ah->lock);

	return ret;
}