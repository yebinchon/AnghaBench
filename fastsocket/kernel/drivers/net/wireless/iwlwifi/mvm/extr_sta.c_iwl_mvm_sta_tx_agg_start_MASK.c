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
typedef  size_t u16 ;
struct iwl_mvm_tid_data {scalar_t__ state; size_t ssn; int txq_id; scalar_t__ next_reclaimed; int /*<<< orphan*/  seq_number; } ;
struct iwl_mvm_sta {int /*<<< orphan*/  lock; int /*<<< orphan*/  sta_id; struct iwl_mvm_tid_data* tid_data; } ;
struct iwl_mvm {scalar_t__* queue_to_mac80211; int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif {scalar_t__* hw_queue; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; scalar_t__ drv_priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENXIO ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IWL_AGG_OFF ; 
 scalar_t__ IWL_AGG_STARTING ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,int /*<<< orphan*/ ,size_t,int,size_t,scalar_t__) ; 
 scalar_t__ IWL_EMPTYING_HW_QUEUE_ADDBA ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,char*,...) ; 
 scalar_t__ IWL_INVALID_MAC80211_QUEUE ; 
 size_t IWL_MAX_TID_COUNT ; 
 int IWL_MVM_FIRST_AGG_QUEUE ; 
 int IWL_MVM_LAST_AGG_QUEUE ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_vif*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 size_t* tid_to_ac ; 

int FUNC8(struct iwl_mvm *mvm, struct ieee80211_vif *vif,
			     struct ieee80211_sta *sta, u16 tid, u16 *ssn)
{
	struct iwl_mvm_sta *mvmsta = (void *)sta->drv_priv;
	struct iwl_mvm_tid_data *tid_data;
	int txq_id;

	if (FUNC3(tid >= IWL_MAX_TID_COUNT))
		return -EINVAL;

	if (mvmsta->tid_data[tid].state != IWL_AGG_OFF) {
		FUNC2(mvm, "Start AGG when state is not IWL_AGG_OFF %d!\n",
			mvmsta->tid_data[tid].state);
		return -ENXIO;
	}

	FUNC5(&mvm->mutex);

	for (txq_id = IWL_MVM_FIRST_AGG_QUEUE;
	     txq_id <= IWL_MVM_LAST_AGG_QUEUE; txq_id++)
		if (mvm->queue_to_mac80211[txq_id] ==
		    IWL_INVALID_MAC80211_QUEUE)
			break;

	if (txq_id > IWL_MVM_LAST_AGG_QUEUE) {
		FUNC2(mvm, "Failed to allocate agg queue\n");
		return -EIO;
	}

	/* the new tx queue is still connected to the same mac80211 queue */
	mvm->queue_to_mac80211[txq_id] = vif->hw_queue[tid_to_ac[tid]];

	FUNC6(&mvmsta->lock);
	tid_data = &mvmsta->tid_data[tid];
	tid_data->ssn = FUNC0(tid_data->seq_number);
	tid_data->txq_id = txq_id;
	*ssn = tid_data->ssn;

	FUNC1(mvm,
			    "Start AGG: sta %d tid %d queue %d - ssn = %d, next_recl = %d\n",
			    mvmsta->sta_id, tid, txq_id, tid_data->ssn,
			    tid_data->next_reclaimed);

	if (tid_data->ssn == tid_data->next_reclaimed) {
		tid_data->state = IWL_AGG_STARTING;
		FUNC4(vif, sta->addr, tid);
	} else {
		tid_data->state = IWL_EMPTYING_HW_QUEUE_ADDBA;
	}

	FUNC7(&mvmsta->lock);

	return 0;
}