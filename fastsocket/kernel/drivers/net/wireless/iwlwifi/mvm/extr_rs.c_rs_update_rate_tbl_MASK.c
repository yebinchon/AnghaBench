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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct iwl_scale_tbl_info {int dummy; } ;
struct iwl_mvm {int dummy; } ;
struct iwl_lq_sta {int /*<<< orphan*/  lq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,struct iwl_scale_tbl_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,struct iwl_lq_sta*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct iwl_mvm *mvm,
			       struct iwl_lq_sta *lq_sta,
			       struct iwl_scale_tbl_info *tbl,
			       int index, u8 is_green)
{
	u32 rate;

	/* Update uCode's rate table. */
	rate = FUNC1(mvm, tbl, index, is_green);
	FUNC2(mvm, lq_sta, rate);
	FUNC0(mvm, &lq_sta->lq, CMD_ASYNC, false);
}