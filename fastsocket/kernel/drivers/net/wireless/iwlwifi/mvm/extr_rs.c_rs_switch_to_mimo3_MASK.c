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
typedef  int u16 ;
struct iwl_scale_tbl_info {int is_ht40; int current_rate; int /*<<< orphan*/  max_search; scalar_t__ action; int /*<<< orphan*/  lq_type; } ;
struct iwl_mvm {int /*<<< orphan*/  fw; } ;
struct iwl_lq_sta {int is_green; int active_mimo3_rate; } ;
struct TYPE_2__ {int /*<<< orphan*/  ht_supported; } ;
struct ieee80211_sta {scalar_t__ smps_mode; TYPE_1__ ht_cap; } ;
typedef  int s8 ;
typedef  int s32 ;

/* Variables and functions */
 scalar_t__ IEEE80211_SMPS_STATIC ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,...) ; 
 int /*<<< orphan*/  IWL_MAX_11N_MIMO3_SEARCH ; 
 int IWL_RATE_INVALID ; 
 int /*<<< orphan*/  LQ_MIMO3 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ieee80211_sta*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iwl_mvm*,struct iwl_scale_tbl_info*,int,int) ; 
 int FUNC5 (struct iwl_mvm*,struct iwl_lq_sta*,struct iwl_scale_tbl_info*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_lq_sta*,struct iwl_scale_tbl_info*) ; 

__attribute__((used)) static int FUNC7(struct iwl_mvm *mvm,
			     struct iwl_lq_sta *lq_sta,
			     struct ieee80211_sta *sta,
			     struct iwl_scale_tbl_info *tbl, int index)
{
	u16 rate_mask;
	s32 rate;
	s8 is_green = lq_sta->is_green;

	if (!sta->ht_cap.ht_supported)
		return -1;

	if (sta->smps_mode == IEEE80211_SMPS_STATIC)
		return -1;

	/* Need both Tx chains/antennas to support MIMO */
	if (FUNC3(FUNC1(mvm->fw)) < 3)
		return -1;

	FUNC0(mvm, "LQ: try to switch to MIMO3\n");

	tbl->lq_type = LQ_MIMO3;
	tbl->action = 0;
	tbl->max_search = IWL_MAX_11N_MIMO3_SEARCH;
	rate_mask = lq_sta->active_mimo3_rate;

	if (FUNC2(sta))
		tbl->is_ht40 = 1;
	else
		tbl->is_ht40 = 0;

	FUNC6(lq_sta, tbl);

	rate = FUNC5(mvm, lq_sta, tbl, rate_mask, index);

	FUNC0(mvm, "LQ: MIMO3 best rate %d mask %X\n",
		       rate, rate_mask);
	if ((rate == IWL_RATE_INVALID) || !((1 << rate) & rate_mask)) {
		FUNC0(mvm, "Can't switch with index %d rate mask %x\n",
			       rate, rate_mask);
		return -1;
	}
	tbl->current_rate = FUNC4(mvm, tbl, rate, is_green);

	FUNC0(mvm, "LQ: Switch to new mcs %X index is green %X\n",
		       tbl->current_rate, is_green);
	return 0;
}