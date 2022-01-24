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
typedef  int u32 ;
struct TYPE_3__ {int vf_valid; } ;
struct TYPE_4__ {TYPE_1__ p_func; void* state; } ;
struct hc_status_block_data_e2 {TYPE_2__ common; } ;
struct hc_status_block_data_e1x {TYPE_2__ common; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 scalar_t__ BAR_CSTRORM_INTMEM ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  CSTORM_STATUS_BLOCK_SIZE ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  CSTORM_SYNC_BLOCK_SIZE ; 
 void* SB_DISABLED ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hc_status_block_data_e2*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct bnx2x *bp, int fw_sb_id)
{
	u32 *sb_data_p;
	u32 data_size = 0;
	struct hc_status_block_data_e2 sb_data_e2;
	struct hc_status_block_data_e1x sb_data_e1x;

	/* disable the function first */
	if (!FUNC0(bp)) {
		FUNC5(&sb_data_e2, 0, sizeof(struct hc_status_block_data_e2));
		sb_data_e2.common.state = SB_DISABLED;
		sb_data_e2.common.p_func.vf_valid = false;
		sb_data_p = (u32 *)&sb_data_e2;
		data_size = sizeof(struct hc_status_block_data_e2)/sizeof(u32);
	} else {
		FUNC5(&sb_data_e1x, 0,
		       sizeof(struct hc_status_block_data_e1x));
		sb_data_e1x.common.state = SB_DISABLED;
		sb_data_e1x.common.p_func.vf_valid = false;
		sb_data_p = (u32 *)&sb_data_e1x;
		data_size = sizeof(struct hc_status_block_data_e1x)/sizeof(u32);
	}
	FUNC4(bp, fw_sb_id, sb_data_p, data_size);

	FUNC3(bp, BAR_CSTRORM_INTMEM +
			FUNC1(fw_sb_id), 0,
			CSTORM_STATUS_BLOCK_SIZE);
	FUNC3(bp, BAR_CSTRORM_INTMEM +
			FUNC2(fw_sb_id), 0,
			CSTORM_SYNC_BLOCK_SIZE);
}