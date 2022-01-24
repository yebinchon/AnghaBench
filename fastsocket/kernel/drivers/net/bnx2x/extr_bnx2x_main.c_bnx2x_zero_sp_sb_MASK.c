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
struct TYPE_2__ {int vf_valid; } ;
struct hc_sp_status_block_data {TYPE_1__ p_func; int /*<<< orphan*/  state; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 scalar_t__ BAR_CSTRORM_INTMEM ; 
 int FUNC0 (struct bnx2x*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  CSTORM_SP_STATUS_BLOCK_SIZE ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  CSTORM_SP_SYNC_BLOCK_SIZE ; 
 int /*<<< orphan*/  SB_DISABLED ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,struct hc_sp_status_block_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct hc_sp_status_block_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct bnx2x *bp)
{
	int func = FUNC0(bp);
	struct hc_sp_status_block_data sp_sb_data;
	FUNC5(&sp_sb_data, 0, sizeof(struct hc_sp_status_block_data));

	sp_sb_data.state = SB_DISABLED;
	sp_sb_data.p_func.vf_valid = false;

	FUNC4(bp, &sp_sb_data);

	FUNC3(bp, BAR_CSTRORM_INTMEM +
			FUNC1(func), 0,
			CSTORM_SP_STATUS_BLOCK_SIZE);
	FUNC3(bp, BAR_CSTRORM_INTMEM +
			FUNC2(func), 0,
			CSTORM_SP_SYNC_BLOCK_SIZE);
}