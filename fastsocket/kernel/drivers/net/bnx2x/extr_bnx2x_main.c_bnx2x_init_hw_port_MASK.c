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
typedef  int u32 ;
struct bnx2x {int flags; int mf_mode; scalar_t__ path_has_ovlan; TYPE_1__* dev; int /*<<< orphan*/  qm_cid_count; } ;
struct TYPE_2__ {int mtu; } ;

/* Variables and functions */
 int AEU_INPUTS_ATTN_BITS_SPIO5 ; 
 int /*<<< orphan*/  BLOCK_ATC ; 
 int /*<<< orphan*/  BLOCK_BRB1 ; 
 int /*<<< orphan*/  BLOCK_CCM ; 
 int /*<<< orphan*/  BLOCK_CDU ; 
 int /*<<< orphan*/  BLOCK_CFC ; 
 int /*<<< orphan*/  BLOCK_CSDM ; 
 int /*<<< orphan*/  BLOCK_CSEM ; 
 int /*<<< orphan*/  BLOCK_DMAE ; 
 int /*<<< orphan*/  BLOCK_DORQ ; 
 int /*<<< orphan*/  BLOCK_HC ; 
 int /*<<< orphan*/  BLOCK_IGU ; 
 int /*<<< orphan*/  BLOCK_MISC ; 
 int /*<<< orphan*/  BLOCK_MISC_AEU ; 
 int /*<<< orphan*/  BLOCK_NIG ; 
 int /*<<< orphan*/  BLOCK_PBF ; 
 int /*<<< orphan*/  BLOCK_PGLUE_B ; 
 int /*<<< orphan*/  BLOCK_PRS ; 
 int /*<<< orphan*/  BLOCK_PXP ; 
 int /*<<< orphan*/  BLOCK_PXP2 ; 
 int /*<<< orphan*/  BLOCK_QM ; 
 int /*<<< orphan*/  BLOCK_SRC ; 
 int /*<<< orphan*/  BLOCK_TCM ; 
 int /*<<< orphan*/  BLOCK_TM ; 
 int /*<<< orphan*/  BLOCK_TSDM ; 
 int /*<<< orphan*/  BLOCK_TSEM ; 
 int /*<<< orphan*/  BLOCK_UCM ; 
 int /*<<< orphan*/  BLOCK_UPB ; 
 int /*<<< orphan*/  BLOCK_USDM ; 
 int /*<<< orphan*/  BLOCK_USEM ; 
 int /*<<< orphan*/  BLOCK_XCM ; 
 int /*<<< orphan*/  BLOCK_XPB ; 
 int /*<<< orphan*/  BLOCK_XSDM ; 
 int /*<<< orphan*/  BLOCK_XSEM ; 
 int FUNC0 (struct bnx2x*) ; 
 int BRB1_REG_MAC_GUARANTIED_0 ; 
 int BRB1_REG_MAC_GUARANTIED_1 ; 
 int BRB1_REG_PAUSE_HIGH_THRESHOLD_0 ; 
 int BRB1_REG_PAUSE_LOW_THRESHOLD_0 ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 scalar_t__ FUNC3 (struct bnx2x*) ; 
 scalar_t__ FUNC4 (struct bnx2x*) ; 
 scalar_t__ FUNC5 (struct bnx2x*) ; 
 scalar_t__ FUNC6 (struct bnx2x*) ; 
 scalar_t__ FUNC7 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int HC_REG_LEADING_EDGE_0 ; 
 int HC_REG_TRAILING_EDGE_0 ; 
 int /*<<< orphan*/  INITOP_SET ; 
 int FUNC9 (struct bnx2x*) ; 
 scalar_t__ FUNC10 (struct bnx2x*) ; 
 scalar_t__ FUNC11 (struct bnx2x*) ; 
 int MISC_REG_AEU_ENABLE1_FUNC_0_OUT_0 ; 
 int MISC_REG_AEU_ENABLE1_FUNC_1_OUT_0 ; 
 int MISC_REG_AEU_MASK_ATTN_FUNC_0 ; 
 int MISC_REG_SPIO_EVENT_EN ; 
 int MISC_SPIO_SPIO5 ; 
#define  MULTI_FUNCTION_AFEX 130 
#define  MULTI_FUNCTION_SD 129 
#define  MULTI_FUNCTION_SI 128 
 int /*<<< orphan*/  NETIF_MSG_HW ; 
 int NIG_REG_LLFC_ENABLE_0 ; 
 int NIG_REG_LLFC_OUT_EN_0 ; 
 int NIG_REG_LLH0_BRB1_DRV_MASK_MF ; 
 int NIG_REG_LLH0_CLS_TYPE ; 
 int NIG_REG_LLH1_CLS_TYPE ; 
 int NIG_REG_LLH1_MF_MODE ; 
 int NIG_REG_LLH_MF_MODE ; 
 int NIG_REG_MASK_INTERRUPT_PORT0 ; 
 int NIG_REG_P0_HDRS_AFTER_BASIC ; 
 int NIG_REG_P1_HDRS_AFTER_BASIC ; 
 int NIG_REG_PAUSE_ENABLE_0 ; 
 int NIG_REG_XGXS_SERDES0_MODE_SEL ; 
 int ONE_PORT_FLAG ; 
 int PBF_REG_INIT_P0 ; 
 int PBF_REG_P0_ARB_THRSH ; 
 int PBF_REG_P0_INIT_CRD ; 
 int PBF_REG_P0_PAUSE_ENABLE ; 
 int PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER ; 
 int PHASE_PORT0 ; 
 int PHASE_PORT1 ; 
 int PRS_REG_HDRS_AFTER_BASIC_PORT_0 ; 
 int PRS_REG_HDRS_AFTER_BASIC_PORT_1 ; 
 int PRS_REG_HDRS_AFTER_TAG_0_PORT_0 ; 
 int PRS_REG_HDRS_AFTER_TAG_0_PORT_1 ; 
 int PRS_REG_MUST_HAVE_HDRS_PORT_0 ; 
 int PRS_REG_MUST_HAVE_HDRS_PORT_1 ; 
 int FUNC12 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct bnx2x*,int,int) ; 
 int TM_REG_LIN0_MAX_ACTIVE_CID ; 
 int TM_REG_LIN0_SCAN_TIME ; 
 int /*<<< orphan*/  FUNC14 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

__attribute__((used)) static int FUNC17(struct bnx2x *bp)
{
	int port = FUNC0(bp);
	int init_phase = port ? PHASE_PORT1 : PHASE_PORT0;
	u32 low, high;
	u32 val;

	FUNC8(NETIF_MSG_HW, "starting port init  port %d\n", port);

	FUNC13(bp, NIG_REG_MASK_INTERRUPT_PORT0 + port*4, 0);

	FUNC14(bp, BLOCK_MISC, init_phase);
	FUNC14(bp, BLOCK_PXP, init_phase);
	FUNC14(bp, BLOCK_PXP2, init_phase);

	/* Timers bug workaround: disables the pf_master bit in pglue at
	 * common phase, we need to enable it here before any dmae access are
	 * attempted. Therefore we manually added the enable-master to the
	 * port phase (it also happens in the function phase)
	 */
	if (!FUNC3(bp))
		FUNC13(bp, PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, 1);

	FUNC14(bp, BLOCK_ATC, init_phase);
	FUNC14(bp, BLOCK_DMAE, init_phase);
	FUNC14(bp, BLOCK_PGLUE_B, init_phase);
	FUNC14(bp, BLOCK_QM, init_phase);

	FUNC14(bp, BLOCK_TCM, init_phase);
	FUNC14(bp, BLOCK_UCM, init_phase);
	FUNC14(bp, BLOCK_CCM, init_phase);
	FUNC14(bp, BLOCK_XCM, init_phase);

	/* QM cid (connection) count */
	FUNC15(bp, bp->qm_cid_count, INITOP_SET);

	if (FUNC7(bp)) {
		FUNC14(bp, BLOCK_TM, init_phase);
		FUNC13(bp, TM_REG_LIN0_SCAN_TIME + port*4, 20);
		FUNC13(bp, TM_REG_LIN0_MAX_ACTIVE_CID + port*4, 31);
	}

	FUNC14(bp, BLOCK_DORQ, init_phase);

	FUNC14(bp, BLOCK_BRB1, init_phase);

	if (FUNC1(bp) || FUNC2(bp)) {

		if (FUNC9(bp))
			low = ((bp->flags & ONE_PORT_FLAG) ? 160 : 246);
		else if (bp->dev->mtu > 4096) {
			if (bp->flags & ONE_PORT_FLAG)
				low = 160;
			else {
				val = bp->dev->mtu;
				/* (24*1024 + val*4)/256 */
				low = 96 + (val/64) +
						((val % 64) ? 1 : 0);
			}
		} else
			low = ((bp->flags & ONE_PORT_FLAG) ? 80 : 160);
		high = low + 56;	/* 14*1024/256 */
		FUNC13(bp, BRB1_REG_PAUSE_LOW_THRESHOLD_0 + port*4, low);
		FUNC13(bp, BRB1_REG_PAUSE_HIGH_THRESHOLD_0 + port*4, high);
	}

	if (FUNC6(bp))
		FUNC13(bp, (FUNC0(bp) ?
			    BRB1_REG_MAC_GUARANTIED_1 :
			    BRB1_REG_MAC_GUARANTIED_0), 40);

	FUNC14(bp, BLOCK_PRS, init_phase);
	if (FUNC5(bp)) {
		if (FUNC10(bp)) {
			/* configure headers for AFEX mode */
			FUNC13(bp, FUNC0(bp) ?
			       PRS_REG_HDRS_AFTER_BASIC_PORT_1 :
			       PRS_REG_HDRS_AFTER_BASIC_PORT_0, 0xE);
			FUNC13(bp, FUNC0(bp) ?
			       PRS_REG_HDRS_AFTER_TAG_0_PORT_1 :
			       PRS_REG_HDRS_AFTER_TAG_0_PORT_0, 0x6);
			FUNC13(bp, FUNC0(bp) ?
			       PRS_REG_MUST_HAVE_HDRS_PORT_1 :
			       PRS_REG_MUST_HAVE_HDRS_PORT_0, 0xA);
		} else {
			/* Ovlan exists only if we are in multi-function +
			 * switch-dependent mode, in switch-independent there
			 * is no ovlan headers
			 */
			FUNC13(bp, FUNC0(bp) ?
			       PRS_REG_HDRS_AFTER_BASIC_PORT_1 :
			       PRS_REG_HDRS_AFTER_BASIC_PORT_0,
			       (bp->path_has_ovlan ? 7 : 6));
		}
	}

	FUNC14(bp, BLOCK_TSDM, init_phase);
	FUNC14(bp, BLOCK_CSDM, init_phase);
	FUNC14(bp, BLOCK_USDM, init_phase);
	FUNC14(bp, BLOCK_XSDM, init_phase);

	FUNC14(bp, BLOCK_TSEM, init_phase);
	FUNC14(bp, BLOCK_USEM, init_phase);
	FUNC14(bp, BLOCK_CSEM, init_phase);
	FUNC14(bp, BLOCK_XSEM, init_phase);

	FUNC14(bp, BLOCK_UPB, init_phase);
	FUNC14(bp, BLOCK_XPB, init_phase);

	FUNC14(bp, BLOCK_PBF, init_phase);

	if (FUNC3(bp)) {
		/* configure PBF to work without PAUSE mtu 9000 */
		FUNC13(bp, PBF_REG_P0_PAUSE_ENABLE + port*4, 0);

		/* update threshold */
		FUNC13(bp, PBF_REG_P0_ARB_THRSH + port*4, (9040/16));
		/* update init credit */
		FUNC13(bp, PBF_REG_P0_INIT_CRD + port*4, (9040/16) + 553 - 22);

		/* probe changes */
		FUNC13(bp, PBF_REG_INIT_P0 + port*4, 1);
		FUNC16(50);
		FUNC13(bp, PBF_REG_INIT_P0 + port*4, 0);
	}

	if (FUNC7(bp))
		FUNC14(bp, BLOCK_SRC, init_phase);

	FUNC14(bp, BLOCK_CDU, init_phase);
	FUNC14(bp, BLOCK_CFC, init_phase);

	if (FUNC1(bp)) {
		FUNC13(bp, HC_REG_LEADING_EDGE_0 + port*8, 0);
		FUNC13(bp, HC_REG_TRAILING_EDGE_0 + port*8, 0);
	}
	FUNC14(bp, BLOCK_HC, init_phase);

	FUNC14(bp, BLOCK_IGU, init_phase);

	FUNC14(bp, BLOCK_MISC_AEU, init_phase);
	/* init aeu_mask_attn_func_0/1:
	 *  - SF mode: bits 3-7 are masked. Only bits 0-2 are in use
	 *  - MF mode: bit 3 is masked. Bits 0-2 are in use as in SF
	 *             bits 4-7 are used for "per vn group attention" */
	val = FUNC9(bp) ? 0xF7 : 0x7;
	/* Enable DCBX attention for all but E1 */
	val |= FUNC1(bp) ? 0 : 0x10;
	FUNC13(bp, MISC_REG_AEU_MASK_ATTN_FUNC_0 + port*4, val);

	FUNC14(bp, BLOCK_NIG, init_phase);

	if (!FUNC3(bp)) {
		/* Bit-map indicating which L2 hdrs may appear after the
		 * basic Ethernet header
		 */
		if (FUNC10(bp))
			FUNC13(bp, FUNC0(bp) ?
			       NIG_REG_P1_HDRS_AFTER_BASIC :
			       NIG_REG_P0_HDRS_AFTER_BASIC, 0xE);
		else
			FUNC13(bp, FUNC0(bp) ?
			       NIG_REG_P1_HDRS_AFTER_BASIC :
			       NIG_REG_P0_HDRS_AFTER_BASIC,
			       FUNC11(bp) ? 7 : 6);

		if (FUNC4(bp))
			FUNC13(bp, FUNC0(bp) ?
				   NIG_REG_LLH1_MF_MODE :
				   NIG_REG_LLH_MF_MODE, FUNC9(bp));
	}
	if (!FUNC4(bp))
		FUNC13(bp, NIG_REG_XGXS_SERDES0_MODE_SEL + port*4, 1);

	if (!FUNC1(bp)) {
		/* 0x2 disable mf_ov, 0x1 enable */
		FUNC13(bp, NIG_REG_LLH0_BRB1_DRV_MASK_MF + port*4,
		       (FUNC11(bp) ? 0x1 : 0x2));

		if (!FUNC3(bp)) {
			val = 0;
			switch (bp->mf_mode) {
			case MULTI_FUNCTION_SD:
				val = 1;
				break;
			case MULTI_FUNCTION_SI:
			case MULTI_FUNCTION_AFEX:
				val = 2;
				break;
			}

			FUNC13(bp, (FUNC0(bp) ? NIG_REG_LLH1_CLS_TYPE :
						  NIG_REG_LLH0_CLS_TYPE), val);
		}
		{
			FUNC13(bp, NIG_REG_LLFC_ENABLE_0 + port*4, 0);
			FUNC13(bp, NIG_REG_LLFC_OUT_EN_0 + port*4, 0);
			FUNC13(bp, NIG_REG_PAUSE_ENABLE_0 + port*4, 1);
		}
	}

	/* If SPIO5 is set to generate interrupts, enable it for this port */
	val = FUNC12(bp, MISC_REG_SPIO_EVENT_EN);
	if (val & MISC_SPIO_SPIO5) {
		u32 reg_addr = (port ? MISC_REG_AEU_ENABLE1_FUNC_1_OUT_0 :
				       MISC_REG_AEU_ENABLE1_FUNC_0_OUT_0);
		val = FUNC12(bp, reg_addr);
		val |= AEU_INPUTS_ATTN_BITS_SPIO5;
		FUNC13(bp, reg_addr, val);
	}

	return 0;
}