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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct iwl_scale_tbl_info {int /*<<< orphan*/  lq_type; int /*<<< orphan*/  ant_type; } ;
struct iwl_mvm {int /*<<< orphan*/  fw; } ;
struct iwl_lq_cmd {int mimo_delim; int /*<<< orphan*/  agg_time_limit; scalar_t__ agg_disable_start_th; int /*<<< orphan*/  agg_frame_cnt_limit; void** rs_table; int /*<<< orphan*/  dual_stream_ant_msk; int /*<<< orphan*/  single_stream_ant_msk; } ;
struct iwl_lq_sta {int /*<<< orphan*/  band; struct iwl_lq_cmd lq; } ;

/* Variables and functions */
 int IWL_HT_NUMBER_TRY ; 
 int IWL_NUMBER_TRY ; 
 scalar_t__ LINK_QUAL_AGG_DISABLE_START_DEF ; 
 int /*<<< orphan*/  LINK_QUAL_AGG_FRAME_LIMIT_DEF ; 
 int /*<<< orphan*/  LINK_QUAL_AGG_TIME_LIMIT_DEF ; 
 int LINK_QUAL_MAX_RETRY_NUM ; 
 int NUM_TRY_BEFORE_ANT_TOGGLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int,scalar_t__) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_lq_sta*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_lq_sta*,struct iwl_scale_tbl_info*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_scale_tbl_info*,int*) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ *,struct iwl_scale_tbl_info*) ; 

__attribute__((used)) static void FUNC11(struct iwl_mvm *mvm,
			     struct iwl_lq_sta *lq_sta, u32 new_rate)
{
	struct iwl_scale_tbl_info tbl_type;
	int index = 0;
	int rate_idx;
	int repeat_rate = 0;
	u8 ant_toggle_cnt = 0;
	u8 use_ht_possible = 1;
	u8 valid_tx_ant = 0;
	struct iwl_lq_cmd *lq_cmd = &lq_sta->lq;

	/* Override starting rate (index 0) if needed for debug purposes */
	FUNC7(lq_sta, &new_rate, index);

	/* Interpret new_rate (rate_n_flags) */
	FUNC9(new_rate, lq_sta->band,
				 &tbl_type, &rate_idx);

	/* How many times should we repeat the initial rate? */
	if (FUNC2(tbl_type.lq_type)) {
		ant_toggle_cnt = 1;
		repeat_rate = IWL_NUMBER_TRY;
	} else {
		repeat_rate = FUNC5(IWL_HT_NUMBER_TRY,
				  LINK_QUAL_AGG_DISABLE_START_DEF - 1);
	}

	lq_cmd->mimo_delim = FUNC3(tbl_type.lq_type) ? 1 : 0;

	/* Fill 1st table entry (index 0) */
	lq_cmd->rs_table[index] = FUNC1(new_rate);

	if (FUNC6(tbl_type.ant_type) == 1)
		lq_cmd->single_stream_ant_msk = tbl_type.ant_type;
	else if (FUNC6(tbl_type.ant_type) == 2)
		lq_cmd->dual_stream_ant_msk = tbl_type.ant_type;
	/* otherwise we don't modify the existing value */

	index++;
	repeat_rate--;
	if (mvm)
		valid_tx_ant = FUNC4(mvm->fw);

	/* Fill rest of rate table */
	while (index < LINK_QUAL_MAX_RETRY_NUM) {
		/* Repeat initial/next rate.
		 * For legacy IWL_NUMBER_TRY == 1, this loop will not execute.
		 * For HT IWL_HT_NUMBER_TRY == 3, this executes twice. */
		while (repeat_rate > 0 && (index < LINK_QUAL_MAX_RETRY_NUM)) {
			if (FUNC2(tbl_type.lq_type)) {
				if (ant_toggle_cnt < NUM_TRY_BEFORE_ANT_TOGGLE)
					ant_toggle_cnt++;
				else if (mvm &&
					 FUNC10(valid_tx_ant,
							&new_rate, &tbl_type))
					ant_toggle_cnt = 1;
			}

			/* Override next rate if needed for debug purposes */
			FUNC7(lq_sta, &new_rate, index);

			/* Fill next table entry */
			lq_cmd->rs_table[index] =
					FUNC1(new_rate);
			repeat_rate--;
			index++;
		}

		FUNC9(new_rate, lq_sta->band, &tbl_type,
					 &rate_idx);


		/* Indicate to uCode which entries might be MIMO.
		 * If initial rate was MIMO, this will finally end up
		 * as (IWL_HT_NUMBER_TRY * 2), after 2nd pass, otherwise 0. */
		if (FUNC3(tbl_type.lq_type))
			lq_cmd->mimo_delim = index;

		/* Get next rate */
		new_rate = FUNC8(lq_sta, &tbl_type, rate_idx,
					     use_ht_possible);

		/* How many times should we repeat the next rate? */
		if (FUNC2(tbl_type.lq_type)) {
			if (ant_toggle_cnt < NUM_TRY_BEFORE_ANT_TOGGLE)
				ant_toggle_cnt++;
			else if (mvm &&
				 FUNC10(valid_tx_ant,
						   &new_rate, &tbl_type))
				ant_toggle_cnt = 1;

			repeat_rate = IWL_NUMBER_TRY;
		} else {
			repeat_rate = IWL_HT_NUMBER_TRY;
		}

		/* Don't allow HT rates after next pass.
		 * rs_get_lower_rate() will change type to LQ_A or LQ_G. */
		use_ht_possible = 0;

		/* Override next rate if needed for debug purposes */
		FUNC7(lq_sta, &new_rate, index);

		/* Fill next table entry */
		lq_cmd->rs_table[index] = FUNC1(new_rate);

		index++;
		repeat_rate--;
	}

	lq_cmd->agg_frame_cnt_limit = LINK_QUAL_AGG_FRAME_LIMIT_DEF;
	lq_cmd->agg_disable_start_th = LINK_QUAL_AGG_DISABLE_START_DEF;

	lq_cmd->agg_time_limit =
		FUNC0(LINK_QUAL_AGG_TIME_LIMIT_DEF);
}