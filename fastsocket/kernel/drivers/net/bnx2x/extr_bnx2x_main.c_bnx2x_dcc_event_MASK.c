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
typedef  int u32 ;
struct bnx2x {int* mf_config; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_MSG_MCP ; 
 size_t FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  DRV_MSG_CODE_DCC_FAILURE ; 
 int /*<<< orphan*/  DRV_MSG_CODE_DCC_OK ; 
 int DRV_STATUS_DCC_BANDWIDTH_ALLOCATION ; 
 int DRV_STATUS_DCC_DISABLE_ENABLE_PF ; 
 int FUNC_MF_CFG_FUNC_DISABLED ; 
 int /*<<< orphan*/  MF_FUNC_DIS ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct bnx2x *bp, u32 dcc_event)
{
	FUNC1(BNX2X_MSG_MCP, "dcc_event 0x%x\n", dcc_event);

	if (dcc_event & DRV_STATUS_DCC_DISABLE_ENABLE_PF) {

		/*
		 * This is the only place besides the function initialization
		 * where the bp->flags can change so it is done without any
		 * locks
		 */
		if (bp->mf_config[FUNC0(bp)] & FUNC_MF_CFG_FUNC_DISABLED) {
			FUNC1(BNX2X_MSG_MCP, "mf_cfg function disabled\n");
			bp->flags |= MF_FUNC_DIS;

			FUNC3(bp);
		} else {
			FUNC1(BNX2X_MSG_MCP, "mf_cfg function enabled\n");
			bp->flags &= ~MF_FUNC_DIS;

			FUNC4(bp);
		}
		dcc_event &= ~DRV_STATUS_DCC_DISABLE_ENABLE_PF;
	}
	if (dcc_event & DRV_STATUS_DCC_BANDWIDTH_ALLOCATION) {
		FUNC2(bp);
		dcc_event &= ~DRV_STATUS_DCC_BANDWIDTH_ALLOCATION;
	}

	/* Report results to MCP */
	if (dcc_event)
		FUNC5(bp, DRV_MSG_CODE_DCC_FAILURE, 0);
	else
		FUNC5(bp, DRV_MSG_CODE_DCC_OK, 0);
}