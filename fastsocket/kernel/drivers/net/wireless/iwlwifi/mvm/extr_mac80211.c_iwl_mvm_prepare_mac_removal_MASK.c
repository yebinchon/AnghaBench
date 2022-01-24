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
typedef  size_t u32 ;
struct iwl_mvm {int /*<<< orphan*/  sta_drained_wk; int /*<<< orphan*/  roc_done_wk; int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {scalar_t__* hw_queue; scalar_t__ cab_queue; scalar_t__ type; } ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 scalar_t__ IEEE80211_INVAL_HW_QUEUE ; 
 size_t IEEE80211_NUM_ACS ; 
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct iwl_mvm *mvm,
					struct ieee80211_vif *vif)
{
	u32 tfd_msk = 0, ac;

	for (ac = 0; ac < IEEE80211_NUM_ACS; ac++)
		if (vif->hw_queue[ac] != IEEE80211_INVAL_HW_QUEUE)
			tfd_msk |= FUNC0(vif->hw_queue[ac]);

	if (vif->cab_queue != IEEE80211_INVAL_HW_QUEUE)
		tfd_msk |= FUNC0(vif->cab_queue);

	if (tfd_msk) {
		FUNC3(&mvm->mutex);
		FUNC2(mvm, tfd_msk, true);
		FUNC4(&mvm->mutex);
	}

	if (vif->type == NL80211_IFTYPE_P2P_DEVICE) {
		/*
		 * Flush the ROC worker which will flush the OFFCHANNEL queue.
		 * We assume here that all the packets sent to the OFFCHANNEL
		 * queue are sent in ROC session.
		 */
		FUNC1(&mvm->roc_done_wk);
	} else {
		/*
		 * By now, all the AC queues are empty. The AGG queues are
		 * empty too. We already got all the Tx responses for all the
		 * packets in the queues. The drain work can have been
		 * triggered. Flush it. This work item takes the mutex, so kill
		 * it before we take it.
		 */
		FUNC1(&mvm->sta_drained_wk);
	}
}