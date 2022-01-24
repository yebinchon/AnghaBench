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
typedef  size_t u16 ;
struct TYPE_2__ {scalar_t__ state; size_t ssn; int txq_id; } ;
struct iwl_tid_data {size_t next_reclaimed; TYPE_1__ agg; int /*<<< orphan*/  seq_number; } ;
struct iwl_rxon_context {int /*<<< orphan*/ * ac_to_queue; } ;
struct iwl_priv {int /*<<< orphan*/  sta_lock; struct iwl_tid_data** tid_data; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {size_t addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IWL_AGG_OFF ; 
 scalar_t__ IWL_AGG_STARTING ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*,char*,size_t,...) ; 
 scalar_t__ IWL_EMPTYING_HW_QUEUE_ADDBA ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_priv*,char*) ; 
 int IWL_INVALID_STATION ; 
 size_t IWL_MAX_TID_COUNT ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_vif*,size_t,size_t) ; 
 struct iwl_rxon_context* FUNC5 (struct ieee80211_vif*) ; 
 int FUNC6 (struct ieee80211_sta*) ; 
 int FUNC7 (struct iwl_priv*,int,size_t) ; 
 int FUNC8 (struct iwl_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 size_t* tid_to_ac ; 
 scalar_t__ FUNC11 (int) ; 

int FUNC12(struct iwl_priv *priv, struct ieee80211_vif *vif,
			struct ieee80211_sta *sta, u16 tid, u16 *ssn)
{
	struct iwl_rxon_context *ctx = FUNC5(vif);
	struct iwl_tid_data *tid_data;
	int sta_id, txq_id, ret;

	FUNC1(priv, "TX AGG request on ra = %pM tid = %d\n",
		     sta->addr, tid);

	sta_id = FUNC6(sta);
	if (sta_id == IWL_INVALID_STATION) {
		FUNC3(priv, "Start AGG on invalid station\n");
		return -ENXIO;
	}
	if (FUNC11(tid >= IWL_MAX_TID_COUNT))
		return -EINVAL;

	if (priv->tid_data[sta_id][tid].agg.state != IWL_AGG_OFF) {
		FUNC3(priv, "Start AGG when state is not IWL_AGG_OFF !\n");
		return -ENXIO;
	}

	txq_id = FUNC8(priv, ctx->ac_to_queue[tid_to_ac[tid]]);
	if (txq_id < 0) {
		FUNC2(priv,
			"No free aggregation queue for %pM/%d\n",
			sta->addr, tid);
		return txq_id;
	}

	ret = FUNC7(priv, sta_id, tid);
	if (ret)
		return ret;

	FUNC9(&priv->sta_lock);
	tid_data = &priv->tid_data[sta_id][tid];
	tid_data->agg.ssn = FUNC0(tid_data->seq_number);
	tid_data->agg.txq_id = txq_id;

	*ssn = tid_data->agg.ssn;

	if (*ssn == tid_data->next_reclaimed) {
		FUNC2(priv, "Can proceed: ssn = next_recl = %d\n",
				    tid_data->agg.ssn);
		tid_data->agg.state = IWL_AGG_STARTING;
		FUNC4(vif, sta->addr, tid);
	} else {
		FUNC2(priv, "Can't proceed: ssn %d, "
				    "next_reclaimed = %d\n",
				    tid_data->agg.ssn,
				    tid_data->next_reclaimed);
		tid_data->agg.state = IWL_EMPTYING_HW_QUEUE_ADDBA;
	}
	FUNC10(&priv->sta_lock);

	return ret;
}