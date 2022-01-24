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
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_BRB1 ; 
 int /*<<< orphan*/  BLOCK_PRS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ CFC_REG_DEBUG0 ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ GRCBASE_MISC ; 
 scalar_t__ MISC_REGISTERS_RESET_REG_1_CLEAR ; 
 scalar_t__ MISC_REGISTERS_RESET_REG_1_SET ; 
 int /*<<< orphan*/  NETIF_MSG_HW ; 
 int /*<<< orphan*/  NIG_REG_INGRESS_EOP_LB_EMPTY ; 
 int /*<<< orphan*/  NIG_REG_INGRESS_EOP_LB_FIFO ; 
 scalar_t__ NIG_REG_PRS_REQ_IN_EN ; 
 int /*<<< orphan*/  NIG_REG_STAT2_BRB_OCTET ; 
 int /*<<< orphan*/  PHASE_COMMON ; 
 scalar_t__ PRS_REG_CFC_SEARCH_INITIAL_CREDIT ; 
 scalar_t__ PRS_REG_NIC_MODE ; 
 int /*<<< orphan*/  PRS_REG_NUM_OF_PACKETS ; 
 int FUNC5 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,scalar_t__,int) ; 
 scalar_t__ TCM_REG_PRS_IFEN ; 
 scalar_t__ TSDM_REG_ENABLE_IN1 ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int* FUNC10 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 int /*<<< orphan*/ * wb_data ; 

__attribute__((used)) static int FUNC13(struct bnx2x *bp)
{
	int factor;
	int count, i;
	u32 val = 0;

	if (FUNC2(bp))
		factor = 120;
	else if (FUNC1(bp))
		factor = 200;
	else
		factor = 1;

	/* Disable inputs of parser neighbor blocks */
	FUNC6(bp, TSDM_REG_ENABLE_IN1, 0x0);
	FUNC6(bp, TCM_REG_PRS_IFEN, 0x0);
	FUNC6(bp, CFC_REG_DEBUG0, 0x1);
	FUNC6(bp, NIG_REG_PRS_REQ_IN_EN, 0x0);

	/*  Write 0 to parser credits for CFC search request */
	FUNC6(bp, PRS_REG_CFC_SEARCH_INITIAL_CREDIT, 0x0);

	/* send Ethernet packet */
	FUNC8(bp);

	/* TODO do i reset NIG statistic? */
	/* Wait until NIG register shows 1 packet of size 0x10 */
	count = 1000 * factor;
	while (count) {

		FUNC9(bp, NIG_REG_STAT2_BRB_OCTET, 2);
		val = *FUNC10(bp, wb_data[0]);
		if (val == 0x10)
			break;

		FUNC12(10000, 20000);
		count--;
	}
	if (val != 0x10) {
		FUNC0("NIG timeout  val = 0x%x\n", val);
		return -1;
	}

	/* Wait until PRS register shows 1 packet */
	count = 1000 * factor;
	while (count) {
		val = FUNC5(bp, PRS_REG_NUM_OF_PACKETS);
		if (val == 1)
			break;

		FUNC12(10000, 20000);
		count--;
	}
	if (val != 0x1) {
		FUNC0("PRS timeout val = 0x%x\n", val);
		return -2;
	}

	/* Reset and init BRB, PRS */
	FUNC6(bp, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_1_CLEAR, 0x03);
	FUNC11(50);
	FUNC6(bp, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_1_SET, 0x03);
	FUNC11(50);
	FUNC7(bp, BLOCK_BRB1, PHASE_COMMON);
	FUNC7(bp, BLOCK_PRS, PHASE_COMMON);

	FUNC4(NETIF_MSG_HW, "part2\n");

	/* Disable inputs of parser neighbor blocks */
	FUNC6(bp, TSDM_REG_ENABLE_IN1, 0x0);
	FUNC6(bp, TCM_REG_PRS_IFEN, 0x0);
	FUNC6(bp, CFC_REG_DEBUG0, 0x1);
	FUNC6(bp, NIG_REG_PRS_REQ_IN_EN, 0x0);

	/* Write 0 to parser credits for CFC search request */
	FUNC6(bp, PRS_REG_CFC_SEARCH_INITIAL_CREDIT, 0x0);

	/* send 10 Ethernet packets */
	for (i = 0; i < 10; i++)
		FUNC8(bp);

	/* Wait until NIG register shows 10 + 1
	   packets of size 11*0x10 = 0xb0 */
	count = 1000 * factor;
	while (count) {

		FUNC9(bp, NIG_REG_STAT2_BRB_OCTET, 2);
		val = *FUNC10(bp, wb_data[0]);
		if (val == 0xb0)
			break;

		FUNC12(10000, 20000);
		count--;
	}
	if (val != 0xb0) {
		FUNC0("NIG timeout  val = 0x%x\n", val);
		return -3;
	}

	/* Wait until PRS register shows 2 packets */
	val = FUNC5(bp, PRS_REG_NUM_OF_PACKETS);
	if (val != 2)
		FUNC0("PRS timeout  val = 0x%x\n", val);

	/* Write 1 to parser credits for CFC search request */
	FUNC6(bp, PRS_REG_CFC_SEARCH_INITIAL_CREDIT, 0x1);

	/* Wait until PRS register shows 3 packets */
	FUNC11(10 * factor);
	/* Wait until NIG register shows 1 packet of size 0x10 */
	val = FUNC5(bp, PRS_REG_NUM_OF_PACKETS);
	if (val != 3)
		FUNC0("PRS timeout  val = 0x%x\n", val);

	/* clear NIG EOP FIFO */
	for (i = 0; i < 11; i++)
		FUNC5(bp, NIG_REG_INGRESS_EOP_LB_FIFO);
	val = FUNC5(bp, NIG_REG_INGRESS_EOP_LB_EMPTY);
	if (val != 1) {
		FUNC0("clear of NIG failed\n");
		return -4;
	}

	/* Reset and init BRB, PRS, NIG */
	FUNC6(bp, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_1_CLEAR, 0x03);
	FUNC11(50);
	FUNC6(bp, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_1_SET, 0x03);
	FUNC11(50);
	FUNC7(bp, BLOCK_BRB1, PHASE_COMMON);
	FUNC7(bp, BLOCK_PRS, PHASE_COMMON);
	if (!FUNC3(bp))
		/* set NIC mode */
		FUNC6(bp, PRS_REG_NIC_MODE, 1);

	/* Enable inputs of parser neighbor blocks */
	FUNC6(bp, TSDM_REG_ENABLE_IN1, 0x7fffffff);
	FUNC6(bp, TCM_REG_PRS_IFEN, 0x1);
	FUNC6(bp, CFC_REG_DEBUG0, 0x0);
	FUNC6(bp, NIG_REG_PRS_REQ_IN_EN, 0x1);

	FUNC4(NETIF_MSG_HW, "done\n");

	return 0; /* OK */
}