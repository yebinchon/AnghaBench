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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_3__ {scalar_t__ state; } ;
struct iwl_tid_data {TYPE_1__ agg; } ;
struct iwl_station_priv {struct iwl_rxon_context* ctx; } ;
struct iwl_scale_tbl_info {int* expected_tpt; scalar_t__ max_search; int /*<<< orphan*/  current_rate; void* lq_type; struct iwl_rate_scale_data* win; } ;
struct iwl_rxon_context {int dummy; } ;
struct iwl_rate_scale_data {scalar_t__ counter; int average_tpt; int success_ratio; int /*<<< orphan*/  success_counter; } ;
struct iwl_priv {scalar_t__ bt_traffic_load; struct iwl_tid_data** tid_data; struct ieee80211_hw* hw; } ;
struct TYPE_4__ {size_t sta_id; } ;
struct iwl_lq_sta {int supp_rates; size_t band; int tx_agg_tid_en; int is_agg; int active_tbl; int is_green; int last_txrate_idx; int max_rate_idx; int last_tpt; int enable_counter; scalar_t__ last_bt_traffic; scalar_t__ action_counter; TYPE_2__ lq; struct iwl_scale_tbl_info* lq_info; int /*<<< orphan*/  stay_in_tbl; scalar_t__ search_better_tbl; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_sta {int* supp_rates; scalar_t__ drv_priv; } ;
struct ieee80211_conf {int dummy; } ;
struct ieee80211_hw {struct ieee80211_conf conf; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
typedef  int s8 ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ASYNC ; 
 size_t IEEE80211_BAND_5GHZ ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_NO_ACK ; 
 scalar_t__ IWL_AGG_OFF ; 
 int IWL_AGG_TPT_THREHOLD ; 
 scalar_t__ IWL_ANT_OK_MULTI ; 
 scalar_t__ IWL_BT_COEX_TRAFFIC_LOAD_HIGH ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*,char*) ; 
 int IWL_FIRST_OFDM_RATE ; 
 int IWL_INVALID_VALUE ; 
 int IWL_MAX_TID_COUNT ; 
 int IWL_RATE_COUNT ; 
 int IWL_RATE_DECREASE_TH ; 
 int IWL_RATE_HIGH_TH ; 
 int IWL_RATE_INCREASE_TH ; 
 int IWL_RATE_INVALID ; 
 scalar_t__ IWL_RATE_MIN_FAILURE_TH ; 
 int /*<<< orphan*/  IWL_RATE_MIN_SUCCESS_TH ; 
 void* LQ_NONE ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_conf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (void*) ; 
 scalar_t__ FUNC6 (void*) ; 
 scalar_t__ FUNC7 (void*) ; 
 scalar_t__ FUNC8 (void*) ; 
 scalar_t__ FUNC9 (struct iwl_priv*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct iwl_priv*,struct iwl_rxon_context*,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC13 (struct iwl_priv*,struct iwl_scale_tbl_info*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct iwl_priv*,struct iwl_lq_sta*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct iwl_priv*,int,int,void*) ; 
 int FUNC16 (struct iwl_lq_sta*,struct ieee80211_hdr*,void*) ; 
 int /*<<< orphan*/  FUNC17 (struct iwl_priv*,struct iwl_lq_sta*,struct ieee80211_conf*,struct ieee80211_sta*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct iwl_priv*,struct iwl_lq_sta*,struct ieee80211_conf*,struct ieee80211_sta*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct iwl_priv*,struct iwl_lq_sta*,struct ieee80211_conf*,struct ieee80211_sta*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct iwl_priv*,struct iwl_lq_sta*,struct ieee80211_conf*,struct ieee80211_sta*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct iwl_rate_scale_data*) ; 
 int /*<<< orphan*/  FUNC22 (struct iwl_priv*,int,struct iwl_lq_sta*) ; 
 int /*<<< orphan*/  FUNC23 (struct iwl_lq_sta*,int) ; 
 int FUNC24 (struct iwl_lq_sta*,struct ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC25 (struct iwl_priv*,int,struct iwl_lq_sta*,struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC26 (struct iwl_priv*,struct iwl_rxon_context*,struct iwl_lq_sta*,struct iwl_scale_tbl_info*,int,int) ; 
 int FUNC27 (struct ieee80211_sta*) ; 

__attribute__((used)) static void FUNC28(struct iwl_priv *priv,
				  struct sk_buff *skb,
				  struct ieee80211_sta *sta,
				  struct iwl_lq_sta *lq_sta)
{
	struct ieee80211_hw *hw = priv->hw;
	struct ieee80211_conf *conf = &hw->conf;
	struct ieee80211_tx_info *info = FUNC0(skb);
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
	int low = IWL_RATE_INVALID;
	int high = IWL_RATE_INVALID;
	int index;
	int i;
	struct iwl_rate_scale_data *window = NULL;
	int current_tpt = IWL_INVALID_VALUE;
	int low_tpt = IWL_INVALID_VALUE;
	int high_tpt = IWL_INVALID_VALUE;
	u32 fail_count;
	s8 scale_action = 0;
	u16 rate_mask;
	u8 update_lq = 0;
	struct iwl_scale_tbl_info *tbl, *tbl1;
	u16 rate_scale_index_msk = 0;
	u8 is_green = 0;
	u8 active_tbl = 0;
	u8 done_search = 0;
	u16 high_low;
	s32 sr;
	u8 tid = IWL_MAX_TID_COUNT;
	struct iwl_tid_data *tid_data;
	struct iwl_station_priv *sta_priv = (void *)sta->drv_priv;
	struct iwl_rxon_context *ctx = sta_priv->ctx;

	FUNC1(priv, "rate scale calculate new rate for skb\n");

	/* Send management frames and NO_ACK data using lowest rate. */
	/* TODO: this could probably be improved.. */
	if (!FUNC4(hdr->frame_control) ||
	    info->flags & IEEE80211_TX_CTL_NO_ACK)
		return;

	lq_sta->supp_rates = sta->supp_rates[lq_sta->band];

	tid = FUNC24(lq_sta, hdr);
	if ((tid != IWL_MAX_TID_COUNT) &&
	    (lq_sta->tx_agg_tid_en & (1 << tid))) {
		tid_data = &priv->tid_data[lq_sta->lq.sta_id][tid];
		if (tid_data->agg.state == IWL_AGG_OFF)
			lq_sta->is_agg = 0;
		else
			lq_sta->is_agg = 1;
	} else
		lq_sta->is_agg = 0;

	/*
	 * Select rate-scale / modulation-mode table to work with in
	 * the rest of this function:  "search" if searching for better
	 * modulation mode, or "active" if doing rate scaling within a mode.
	 */
	if (!lq_sta->search_better_tbl)
		active_tbl = lq_sta->active_tbl;
	else
		active_tbl = 1 - lq_sta->active_tbl;

	tbl = &(lq_sta->lq_info[active_tbl]);
	if (FUNC5(tbl->lq_type))
		lq_sta->is_green = 0;
	else
		lq_sta->is_green = FUNC27(sta);
	is_green = lq_sta->is_green;

	/* current tx rate */
	index = lq_sta->last_txrate_idx;

	FUNC1(priv, "Rate scale index %d for type %d\n", index,
		       tbl->lq_type);

	/* rates available for this association, and for modulation mode */
	rate_mask = FUNC16(lq_sta, hdr, tbl->lq_type);

	FUNC1(priv, "mask 0x%04X\n", rate_mask);

	/* mask with station rate restriction */
	if (FUNC5(tbl->lq_type)) {
		if (lq_sta->band == IEEE80211_BAND_5GHZ)
			/* supp_rates has no CCK bits in A mode */
			rate_scale_index_msk = (u16) (rate_mask &
				(lq_sta->supp_rates << IWL_FIRST_OFDM_RATE));
		else
			rate_scale_index_msk = (u16) (rate_mask &
						      lq_sta->supp_rates);

	} else
		rate_scale_index_msk = rate_mask;

	if (!rate_scale_index_msk)
		rate_scale_index_msk = rate_mask;

	if (!((1 << index) & rate_scale_index_msk)) {
		FUNC2(priv, "Current Rate is not valid\n");
		if (lq_sta->search_better_tbl) {
			/* revert to active table if search table is not valid*/
			tbl->lq_type = LQ_NONE;
			lq_sta->search_better_tbl = 0;
			tbl = &(lq_sta->lq_info[lq_sta->active_tbl]);
			/* get "active" rate info */
			index = FUNC10(tbl->current_rate);
			FUNC26(priv, ctx, lq_sta, tbl,
					   index, is_green);
		}
		return;
	}

	/* Get expected throughput table and history window for current rate */
	if (!tbl->expected_tpt) {
		FUNC2(priv, "tbl->expected_tpt is NULL\n");
		return;
	}

	/* force user max rate if set by user */
	if ((lq_sta->max_rate_idx != -1) &&
	    (lq_sta->max_rate_idx < index)) {
		index = lq_sta->max_rate_idx;
		update_lq = 1;
		window = &(tbl->win[index]);
		goto lq_update;
	}

	window = &(tbl->win[index]);

	/*
	 * If there is not enough history to calculate actual average
	 * throughput, keep analyzing results of more tx frames, without
	 * changing rate or mode (bypass most of the rest of this function).
	 * Set up new rate table in uCode only if old rate is not supported
	 * in current association (use new rate found above).
	 */
	fail_count = window->counter - window->success_counter;
	if ((fail_count < IWL_RATE_MIN_FAILURE_TH) &&
			(window->success_counter < IWL_RATE_MIN_SUCCESS_TH)) {
		FUNC1(priv, "LQ: still below TH. succ=%d total=%d "
			       "for index %d\n",
			       window->success_counter, window->counter, index);

		/* Can't calculate this yet; not enough history */
		window->average_tpt = IWL_INVALID_VALUE;

		/* Should we stay with this modulation mode,
		 * or search for a new one? */
		FUNC23(lq_sta, false);

		goto out;
	}
	/* Else we have enough samples; calculate estimate of
	 * actual average throughput */
	if (window->average_tpt != ((window->success_ratio *
			tbl->expected_tpt[index] + 64) / 128)) {
		FUNC2(priv, "expected_tpt should have been calculated by now\n");
		window->average_tpt = ((window->success_ratio *
					tbl->expected_tpt[index] + 64) / 128);
	}

	/* If we are searching for better modulation mode, check success. */
	if (lq_sta->search_better_tbl &&
	    (FUNC12(priv) == IWL_ANT_OK_MULTI)) {
		/* If good success, continue using the "search" mode;
		 * no need to send new link quality command, since we're
		 * continuing to use the setup that we've been trying. */
		if (window->average_tpt > lq_sta->last_tpt) {

			FUNC1(priv, "LQ: SWITCHING TO NEW TABLE "
					"suc=%d cur-tpt=%d old-tpt=%d\n",
					window->success_ratio,
					window->average_tpt,
					lq_sta->last_tpt);

			if (!FUNC5(tbl->lq_type))
				lq_sta->enable_counter = 1;

			/* Swap tables; "search" becomes "active" */
			lq_sta->active_tbl = active_tbl;
			current_tpt = window->average_tpt;

		/* Else poor success; go back to mode in "active" table */
		} else {

			FUNC1(priv, "LQ: GOING BACK TO THE OLD TABLE "
					"suc=%d cur-tpt=%d old-tpt=%d\n",
					window->success_ratio,
					window->average_tpt,
					lq_sta->last_tpt);

			/* Nullify "search" table */
			tbl->lq_type = LQ_NONE;

			/* Revert to "active" table */
			active_tbl = lq_sta->active_tbl;
			tbl = &(lq_sta->lq_info[active_tbl]);

			/* Revert to "active" rate and throughput info */
			index = FUNC10(tbl->current_rate);
			current_tpt = lq_sta->last_tpt;

			/* Need to set up a new rate table in uCode */
			update_lq = 1;
		}

		/* Either way, we've made a decision; modulation mode
		 * search is done, allow rate adjustment next time. */
		lq_sta->search_better_tbl = 0;
		done_search = 1;	/* Don't switch modes below! */
		goto lq_update;
	}

	/* (Else) not in search of better modulation mode, try for better
	 * starting rate, while staying in this mode. */
	high_low = FUNC15(priv, index, rate_scale_index_msk,
					tbl->lq_type);
	low = high_low & 0xff;
	high = (high_low >> 8) & 0xff;

	/* If user set max rate, dont allow higher than user constrain */
	if ((lq_sta->max_rate_idx != -1) &&
	    (lq_sta->max_rate_idx < high))
		high = IWL_RATE_INVALID;

	sr = window->success_ratio;

	/* Collect measured throughputs for current and adjacent rates */
	current_tpt = window->average_tpt;
	if (low != IWL_RATE_INVALID)
		low_tpt = tbl->win[low].average_tpt;
	if (high != IWL_RATE_INVALID)
		high_tpt = tbl->win[high].average_tpt;

	scale_action = 0;

	/* Too many failures, decrease rate */
	if ((sr <= IWL_RATE_DECREASE_TH) || (current_tpt == 0)) {
		FUNC1(priv, "decrease rate because of low success_ratio\n");
		scale_action = -1;

	/* No throughput measured yet for adjacent rates; try increase. */
	} else if ((low_tpt == IWL_INVALID_VALUE) &&
		   (high_tpt == IWL_INVALID_VALUE)) {

		if (high != IWL_RATE_INVALID && sr >= IWL_RATE_INCREASE_TH)
			scale_action = 1;
		else if (low != IWL_RATE_INVALID)
			scale_action = 0;
	}

	/* Both adjacent throughputs are measured, but neither one has better
	 * throughput; we're using the best rate, don't change it! */
	else if ((low_tpt != IWL_INVALID_VALUE) &&
		 (high_tpt != IWL_INVALID_VALUE) &&
		 (low_tpt < current_tpt) &&
		 (high_tpt < current_tpt))
		scale_action = 0;

	/* At least one adjacent rate's throughput is measured,
	 * and may have better performance. */
	else {
		/* Higher adjacent rate's throughput is measured */
		if (high_tpt != IWL_INVALID_VALUE) {
			/* Higher rate has better throughput */
			if (high_tpt > current_tpt &&
					sr >= IWL_RATE_INCREASE_TH) {
				scale_action = 1;
			} else {
				scale_action = 0;
			}

		/* Lower adjacent rate's throughput is measured */
		} else if (low_tpt != IWL_INVALID_VALUE) {
			/* Lower rate has better throughput */
			if (low_tpt > current_tpt) {
				FUNC1(priv,
				    "decrease rate because of low tpt\n");
				scale_action = -1;
			} else if (sr >= IWL_RATE_INCREASE_TH) {
				scale_action = 1;
			}
		}
	}

	/* Sanity check; asked for decrease, but success rate or throughput
	 * has been good at old rate.  Don't change it. */
	if ((scale_action == -1) && (low != IWL_RATE_INVALID) &&
		    ((sr > IWL_RATE_HIGH_TH) ||
		     (current_tpt > (100 * tbl->expected_tpt[low]))))
		scale_action = 0;
	if (!FUNC9(priv) && !FUNC5(tbl->lq_type))
		scale_action = -1;
	if (FUNC12(priv) != IWL_ANT_OK_MULTI &&
		(FUNC6(tbl->lq_type) || FUNC7(tbl->lq_type)))
		scale_action = -1;

	if ((priv->bt_traffic_load >= IWL_BT_COEX_TRAFFIC_LOAD_HIGH) &&
	     (FUNC6(tbl->lq_type) || FUNC7(tbl->lq_type))) {
		if (lq_sta->last_bt_traffic > priv->bt_traffic_load) {
			/*
			 * don't set scale_action, don't want to scale up if
			 * the rate scale doesn't otherwise think that is a
			 * good idea.
			 */
		} else if (lq_sta->last_bt_traffic <= priv->bt_traffic_load) {
			scale_action = -1;
		}
	}
	lq_sta->last_bt_traffic = priv->bt_traffic_load;

	if ((priv->bt_traffic_load >= IWL_BT_COEX_TRAFFIC_LOAD_HIGH) &&
	     (FUNC6(tbl->lq_type) || FUNC7(tbl->lq_type))) {
		/* search for a new modulation */
		FUNC23(lq_sta, true);
		goto lq_update;
	}

	switch (scale_action) {
	case -1:
		/* Decrease starting rate, update uCode's rate table */
		if (low != IWL_RATE_INVALID) {
			update_lq = 1;
			index = low;
		}

		break;
	case 1:
		/* Increase starting rate, update uCode's rate table */
		if (high != IWL_RATE_INVALID) {
			update_lq = 1;
			index = high;
		}

		break;
	case 0:
		/* No change */
	default:
		break;
	}

	FUNC1(priv, "choose rate scale index %d action %d low %d "
		    "high %d type %d\n",
		     index, scale_action, low, high, tbl->lq_type);

lq_update:
	/* Replace uCode's rate table for the destination station. */
	if (update_lq)
		FUNC26(priv, ctx, lq_sta, tbl, index, is_green);

	if (FUNC12(priv) == IWL_ANT_OK_MULTI) {
		/* Should we stay with this modulation mode,
		 * or search for a new one? */
	  FUNC23(lq_sta, false);
	}
	/*
	 * Search for new modulation mode if we're:
	 * 1)  Not changing rates right now
	 * 2)  Not just finishing up a search
	 * 3)  Allowing a new search
	 */
	if (!update_lq && !done_search && !lq_sta->stay_in_tbl && window->counter) {
		/* Save current throughput to compare with "search" throughput*/
		lq_sta->last_tpt = current_tpt;

		/* Select a new "search" modulation mode to try.
		 * If one is found, set up the new "search" table. */
		if (FUNC5(tbl->lq_type))
			FUNC17(priv, lq_sta, conf, sta, index);
		else if (FUNC8(tbl->lq_type))
			FUNC20(priv, lq_sta, conf, sta, index);
		else if (FUNC6(tbl->lq_type))
			FUNC18(priv, lq_sta, conf, sta, index);
		else
			FUNC19(priv, lq_sta, conf, sta, index);

		/* If new "search" mode was selected, set up in uCode table */
		if (lq_sta->search_better_tbl) {
			/* Access the "search" table, clear its history. */
			tbl = &(lq_sta->lq_info[(1 - lq_sta->active_tbl)]);
			for (i = 0; i < IWL_RATE_COUNT; i++)
				FUNC21(&(tbl->win[i]));

			/* Use new "search" start rate */
			index = FUNC10(tbl->current_rate);

			FUNC1(priv, "Switch current  mcs: %X index: %d\n",
				     tbl->current_rate, index);
			FUNC14(priv, lq_sta, tbl->current_rate);
			FUNC11(priv, ctx, &lq_sta->lq, CMD_ASYNC, false);
		} else
			done_search = 1;
	}

	if (done_search && !lq_sta->stay_in_tbl) {
		/* If the "active" (non-search) mode was legacy,
		 * and we've tried switching antennas,
		 * but we haven't been able to try HT modes (not available),
		 * stay with best antenna legacy modulation for a while
		 * before next round of mode comparisons. */
		tbl1 = &(lq_sta->lq_info[lq_sta->active_tbl]);
		if (FUNC5(tbl1->lq_type) && !FUNC3(conf) &&
		    lq_sta->action_counter > tbl1->max_search) {
			FUNC1(priv, "LQ: STAY in legacy table\n");
			FUNC22(priv, 1, lq_sta);
		}

		/* If we're in an HT mode, and all 3 mode switch actions
		 * have been tried and compared, stay in this best modulation
		 * mode for a while before next round of mode comparisons. */
		if (lq_sta->enable_counter &&
		    (lq_sta->action_counter >= tbl1->max_search) &&
		    FUNC9(priv)) {
			if ((lq_sta->last_tpt > IWL_AGG_TPT_THREHOLD) &&
			    (lq_sta->tx_agg_tid_en & (1 << tid)) &&
			    (tid != IWL_MAX_TID_COUNT)) {
				u8 sta_id = lq_sta->lq.sta_id;
				tid_data = &priv->tid_data[sta_id][tid];
				if (tid_data->agg.state == IWL_AGG_OFF) {
					FUNC1(priv,
						       "try to aggregate tid %d\n",
						       tid);
					FUNC25(priv, tid,
							  lq_sta, sta);
				}
			}
			FUNC22(priv, 0, lq_sta);
		}
	}

out:
	tbl->current_rate = FUNC13(priv, tbl, index, is_green);
	lq_sta->last_txrate_idx = index;
}