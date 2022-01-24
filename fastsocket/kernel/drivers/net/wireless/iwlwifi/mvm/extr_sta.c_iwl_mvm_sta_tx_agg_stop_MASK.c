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
struct iwl_mvm_tid_data {size_t txq_id; int state; int ssn; int next_reclaimed; int /*<<< orphan*/  seq_number; } ;
struct iwl_mvm_sta {int /*<<< orphan*/  lock; int /*<<< orphan*/  sta_id; struct iwl_mvm_tid_data* tid_data; } ;
struct iwl_mvm {int /*<<< orphan*/ * queue_to_mac80211; int /*<<< orphan*/  mutex; int /*<<< orphan*/  trans; int /*<<< orphan*/  status; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; scalar_t__ drv_priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int IWL_AGG_OFF ; 
#define  IWL_AGG_ON 130 
#define  IWL_AGG_STARTING 129 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,int,int,...) ; 
#define  IWL_EMPTYING_HW_QUEUE_ADDBA 128 
 int IWL_EMPTYING_HW_QUEUE_DELBA ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,char*,size_t,...) ; 
 int /*<<< orphan*/  IWL_INVALID_MAC80211_QUEUE ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_IN_HW_RESTART ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_vif*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC9(struct iwl_mvm *mvm, struct ieee80211_vif *vif,
			    struct ieee80211_sta *sta, u16 tid)
{
	struct iwl_mvm_sta *mvmsta = (void *)sta->drv_priv;
	struct iwl_mvm_tid_data *tid_data = &mvmsta->tid_data[tid];
	u16 txq_id;
	int err;


	/*
	 * If mac80211 is cleaning its state, then say that we finished since
	 * our state has been cleared anyway.
	 */
	if (FUNC8(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status)) {
		FUNC3(vif, sta->addr, tid);
		return 0;
	}

	FUNC6(&mvmsta->lock);

	txq_id = tid_data->txq_id;

	FUNC1(mvm, "Stop AGG: sta %d tid %d q %d state %d\n",
			    mvmsta->sta_id, tid, txq_id, tid_data->state);

	switch (tid_data->state) {
	case IWL_AGG_ON:
		tid_data->ssn = FUNC0(tid_data->seq_number);

		FUNC1(mvm,
				    "ssn = %d, next_recl = %d\n",
				    tid_data->ssn, tid_data->next_reclaimed);

		/* There are still packets for this RA / TID in the HW */
		if (tid_data->ssn != tid_data->next_reclaimed) {
			tid_data->state = IWL_EMPTYING_HW_QUEUE_DELBA;
			err = 0;
			break;
		}

		tid_data->ssn = 0xffff;
		FUNC4(mvm->trans, txq_id);
		/* fall through */
	case IWL_AGG_STARTING:
	case IWL_EMPTYING_HW_QUEUE_ADDBA:
		/*
		 * The agg session has been stopped before it was set up. This
		 * can happen when the AddBA timer times out for example.
		 */

		/* No barriers since we are under mutex */
		FUNC5(&mvm->mutex);
		mvm->queue_to_mac80211[txq_id] = IWL_INVALID_MAC80211_QUEUE;

		FUNC3(vif, sta->addr, tid);
		tid_data->state = IWL_AGG_OFF;
		err = 0;
		break;
	default:
		FUNC2(mvm,
			"Stopping AGG while state not ON or starting for %d on %d (%d)\n",
			mvmsta->sta_id, tid, tid_data->state);
		FUNC2(mvm,
			"\ttid_data->txq_id = %d\n", tid_data->txq_id);
		err = -EINVAL;
	}

	FUNC7(&mvmsta->lock);

	return err;
}