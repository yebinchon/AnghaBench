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
typedef  int u32 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int BAR_CSTRORM_INTMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BNX2X_MSG_SP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,int,int) ; 
 int SDM_OP_GEN_AGG_VECT_IDX_VALID_SHIFT ; 
 int XSDM_REG_OPERATION_GEN ; 
 int /*<<< orphan*/  XSTORM_AGG_INT_FINAL_CLEANUP_COMP_TYPE ; 
 int /*<<< orphan*/  XSTORM_AGG_INT_FINAL_CLEANUP_INDEX ; 
 int FUNC8 (struct bnx2x*,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 

int FUNC10(struct bnx2x *bp, u8 clnup_func, u32 poll_cnt)
{
	u32 op_gen_command = 0;
	u32 comp_addr = BAR_CSTRORM_INTMEM +
			FUNC1(clnup_func);
	int ret = 0;

	if (FUNC6(bp, comp_addr)) {
		FUNC0("Cleanup complete was not 0 before sending\n");
		return 1;
	}

	op_gen_command |= FUNC4(XSTORM_AGG_INT_FINAL_CLEANUP_INDEX);
	op_gen_command |= FUNC5(XSTORM_AGG_INT_FINAL_CLEANUP_COMP_TYPE);
	op_gen_command |= FUNC3(clnup_func);
	op_gen_command |= 1 << SDM_OP_GEN_AGG_VECT_IDX_VALID_SHIFT;

	FUNC2(BNX2X_MSG_SP, "sending FW Final cleanup\n");
	FUNC7(bp, XSDM_REG_OPERATION_GEN, op_gen_command);

	if (FUNC8(bp, comp_addr, 1, poll_cnt) != 1) {
		FUNC0("FW final cleanup did not succeed\n");
		FUNC2(BNX2X_MSG_SP, "At timeout completion address contained %x\n",
		   (FUNC6(bp, comp_addr)));
		FUNC9();
		return 1;
	}
	/* Zero completion for next FLR */
	FUNC7(bp, comp_addr, 0);

	return ret;
}