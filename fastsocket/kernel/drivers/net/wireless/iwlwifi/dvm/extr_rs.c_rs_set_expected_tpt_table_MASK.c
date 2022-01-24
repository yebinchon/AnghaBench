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
struct iwl_scale_tbl_info {int /*<<< orphan*/ * expected_tpt; scalar_t__ is_SGI; int /*<<< orphan*/  is_ht40; int /*<<< orphan*/  lq_type; } ;
struct iwl_lq_sta {scalar_t__ is_agg; scalar_t__ is_dup; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int IWL_RATE_COUNT ; 
 scalar_t__ FUNC0 (int) ; 
 void* expected_tpt_legacy ; 
 int /*<<< orphan*/ ** expected_tpt_mimo2_20MHz ; 
 int /*<<< orphan*/ ** expected_tpt_mimo2_40MHz ; 
 int /*<<< orphan*/ ** expected_tpt_mimo3_20MHz ; 
 int /*<<< orphan*/ ** expected_tpt_mimo3_40MHz ; 
 int /*<<< orphan*/ ** expected_tpt_siso20MHz ; 
 int /*<<< orphan*/ ** expected_tpt_siso40MHz ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct iwl_lq_sta *lq_sta,
				      struct iwl_scale_tbl_info *tbl)
{
	/* Used to choose among HT tables */
	s32 (*ht_tbl_pointer)[IWL_RATE_COUNT];

	/* Check for invalid LQ type */
	if (FUNC0(!FUNC2(tbl->lq_type) && !FUNC1(tbl->lq_type))) {
		tbl->expected_tpt = expected_tpt_legacy;
		return;
	}

	/* Legacy rates have only one table */
	if (FUNC2(tbl->lq_type)) {
		tbl->expected_tpt = expected_tpt_legacy;
		return;
	}

	/* Choose among many HT tables depending on number of streams
	 * (SISO/MIMO2/MIMO3), channel width (20/40), SGI, and aggregation
	 * status */
	if (FUNC5(tbl->lq_type) && (!tbl->is_ht40 || lq_sta->is_dup))
		ht_tbl_pointer = expected_tpt_siso20MHz;
	else if (FUNC5(tbl->lq_type))
		ht_tbl_pointer = expected_tpt_siso40MHz;
	else if (FUNC3(tbl->lq_type) && (!tbl->is_ht40 || lq_sta->is_dup))
		ht_tbl_pointer = expected_tpt_mimo2_20MHz;
	else if (FUNC3(tbl->lq_type))
		ht_tbl_pointer = expected_tpt_mimo2_40MHz;
	else if (FUNC4(tbl->lq_type) && (!tbl->is_ht40 || lq_sta->is_dup))
		ht_tbl_pointer = expected_tpt_mimo3_20MHz;
	else /* if (is_mimo3(tbl->lq_type)) <-- must be true */
		ht_tbl_pointer = expected_tpt_mimo3_40MHz;

	if (!tbl->is_SGI && !lq_sta->is_agg)		/* Normal */
		tbl->expected_tpt = ht_tbl_pointer[0];
	else if (tbl->is_SGI && !lq_sta->is_agg)	/* SGI */
		tbl->expected_tpt = ht_tbl_pointer[1];
	else if (!tbl->is_SGI && lq_sta->is_agg)	/* AGG */
		tbl->expected_tpt = ht_tbl_pointer[2];
	else						/* AGG+SGI */
		tbl->expected_tpt = ht_tbl_pointer[3];
}