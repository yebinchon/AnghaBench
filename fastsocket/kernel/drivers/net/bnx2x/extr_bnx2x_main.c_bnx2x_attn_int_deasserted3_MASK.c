#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {int periodic_flags; } ;
struct TYPE_5__ {scalar_t__ pmf; } ;
struct bnx2x {scalar_t__ dcbx_enabled; TYPE_2__ link_vars; TYPE_1__ port; int /*<<< orphan*/ * mf_config; } ;
struct TYPE_8__ {int /*<<< orphan*/  drv_status; } ;
struct TYPE_7__ {int /*<<< orphan*/  config; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_DCBX_STATE_NEG_RECEIVED ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int BNX2X_GRC_RSV ; 
 int BNX2X_GRC_TIMEOUT ; 
 int BNX2X_MCP_ASSERT ; 
 int BNX2X_MC_ASSERT_BITS ; 
 int BNX2X_PMF_LINK_ASSERT ; 
 size_t FUNC1 (struct bnx2x*) ; 
 int FUNC2 (struct bnx2x*) ; 
 size_t FUNC3 (struct bnx2x*) ; 
 size_t FUNC4 (struct bnx2x*) ; 
 scalar_t__ FUNC5 (struct bnx2x*) ; 
 int DRV_STATUS_AFEX_EVENT_MASK ; 
 int DRV_STATUS_DCBX_NEGOTIATION_RESULTS ; 
 int DRV_STATUS_DCC_EVENT_MASK ; 
 int DRV_STATUS_DRV_INFO_REQ ; 
 int DRV_STATUS_EEE_NEGOTIATION_RESULTS ; 
 int DRV_STATUS_PMF ; 
 int DRV_STATUS_SET_MF_BW ; 
 int DRV_STATUS_VF_DISABLED ; 
 int EVEREST_GEN_ATTN_IN_USE_MASK ; 
 int EVEREST_LATCHED_ATTN_IN_USE_MASK ; 
 scalar_t__ FUNC6 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 scalar_t__ MISC_REG_AEU_CLR_LATCH_SIGNAL ; 
 scalar_t__ MISC_REG_AEU_GENERAL_ATTN_10 ; 
 scalar_t__ MISC_REG_AEU_GENERAL_ATTN_11 ; 
 scalar_t__ MISC_REG_AEU_GENERAL_ATTN_12 ; 
 scalar_t__ MISC_REG_AEU_GENERAL_ATTN_7 ; 
 scalar_t__ MISC_REG_AEU_GENERAL_ATTN_8 ; 
 scalar_t__ MISC_REG_AEU_GENERAL_ATTN_9 ; 
 int /*<<< orphan*/  MISC_REG_GRC_RSV_ATTN ; 
 int /*<<< orphan*/  MISC_REG_GRC_TIMEOUT_ATTN ; 
 int PERIODIC_FLAGS_LINK_EVENT ; 
 int FUNC8 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2x*,scalar_t__,int) ; 
 int FUNC10 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC12 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC13 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC16 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC18 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC19 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC20 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC21 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC24 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC25 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC26 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC27 (struct bnx2x*) ; 
 TYPE_4__* func_mb ; 
 TYPE_3__* func_mf_config ; 

__attribute__((used)) static void FUNC28(struct bnx2x *bp, u32 attn)
{
	u32 val;

	if (attn & EVEREST_GEN_ATTN_IN_USE_MASK) {

		if (attn & BNX2X_PMF_LINK_ASSERT) {
			int func = FUNC2(bp);

			FUNC9(bp, MISC_REG_AEU_GENERAL_ATTN_12 + func*4, 0);
			FUNC24(bp);
			bp->mf_config[FUNC4(bp)] = FUNC7(bp,
					func_mf_config[FUNC1(bp)].config);
			val = FUNC10(bp,
				       func_mb[FUNC3(bp)].drv_status);
			if (val & DRV_STATUS_DCC_EVENT_MASK)
				FUNC14(bp,
					    (val & DRV_STATUS_DCC_EVENT_MASK));

			if (val & DRV_STATUS_SET_MF_BW)
				FUNC26(bp);

			if (val & DRV_STATUS_DRV_INFO_REQ)
				FUNC17(bp);

			if (val & DRV_STATUS_VF_DISABLED)
				FUNC27(bp);

			if ((bp->port.pmf == 0) && (val & DRV_STATUS_PMF))
				FUNC23(bp);

			if (bp->port.pmf &&
			    (val & DRV_STATUS_DCBX_NEGOTIATION_RESULTS) &&
				bp->dcbx_enabled > 0)
				/* start dcbx state machine */
				FUNC13(bp,
					BNX2X_DCBX_STATE_NEG_RECEIVED);
			if (val & DRV_STATUS_AFEX_EVENT_MASK)
				FUNC16(bp,
					val & DRV_STATUS_AFEX_EVENT_MASK);
			if (val & DRV_STATUS_EEE_NEGOTIATION_RESULTS)
				FUNC18(bp);
			if (bp->link_vars.periodic_flags &
			    PERIODIC_FLAGS_LINK_EVENT) {
				/*  sync with link */
				FUNC12(bp);
				bp->link_vars.periodic_flags &=
					~PERIODIC_FLAGS_LINK_EVENT;
				FUNC25(bp);
				if (FUNC6(bp))
					FUNC20(bp);
				FUNC19(bp);
			}
			/* Always call it here: bnx2x_link_report() will
			 * prevent the link indication duplication.
			 */
			FUNC11(bp);
		} else if (attn & BNX2X_MC_ASSERT_BITS) {

			FUNC0("MC assert!\n");
			FUNC21(bp);
			FUNC9(bp, MISC_REG_AEU_GENERAL_ATTN_10, 0);
			FUNC9(bp, MISC_REG_AEU_GENERAL_ATTN_9, 0);
			FUNC9(bp, MISC_REG_AEU_GENERAL_ATTN_8, 0);
			FUNC9(bp, MISC_REG_AEU_GENERAL_ATTN_7, 0);
			FUNC22();

		} else if (attn & BNX2X_MCP_ASSERT) {

			FUNC0("MCP assert!\n");
			FUNC9(bp, MISC_REG_AEU_GENERAL_ATTN_11, 0);
			FUNC15(bp);

		} else
			FUNC0("Unknown HW assert! (attn 0x%x)\n", attn);
	}

	if (attn & EVEREST_LATCHED_ATTN_IN_USE_MASK) {
		FUNC0("LATCHED attention 0x%08x (masked)\n", attn);
		if (attn & BNX2X_GRC_TIMEOUT) {
			val = FUNC5(bp) ? 0 :
					FUNC8(bp, MISC_REG_GRC_TIMEOUT_ATTN);
			FUNC0("GRC time-out 0x%08x\n", val);
		}
		if (attn & BNX2X_GRC_RSV) {
			val = FUNC5(bp) ? 0 :
					FUNC8(bp, MISC_REG_GRC_RSV_ATTN);
			FUNC0("GRC reserved 0x%08x\n", val);
		}
		FUNC9(bp, MISC_REG_AEU_CLR_LATCH_SIGNAL, 0x7ff);
	}
}