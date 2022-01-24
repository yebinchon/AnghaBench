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
struct TYPE_2__ {scalar_t__ int_block; } ;
struct bnx2x {int attn_state; TYPE_1__ common; } ;

/* Variables and functions */
 int ATTN_GENERAL_ATTN_1 ; 
 int ATTN_GENERAL_ATTN_2 ; 
 int ATTN_GENERAL_ATTN_3 ; 
 int ATTN_GENERAL_ATTN_4 ; 
 int ATTN_GENERAL_ATTN_5 ; 
 int ATTN_GENERAL_ATTN_6 ; 
 int ATTN_HARD_WIRED_MASK ; 
 int ATTN_NIG_FOR_FUNC ; 
 int ATTN_SW_TIMER_4_FUNC ; 
 int BAR_IGU_INTMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct bnx2x*) ; 
 int COMMAND_REG_ATTN_BITS_SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int GPIO_2_FUNC ; 
 int GPIO_3_FUNC ; 
 int GPIO_4_FUNC ; 
 int HC_REG_COMMAND_REG ; 
 scalar_t__ HW_LOCK_RESOURCE_PORT0_ATT_MASK ; 
 int IGU_CMD_ATTN_BIT_SET_UPPER ; 
 int IGU_REG_ATTENTION_ACK_BITS ; 
 scalar_t__ INT_BLOCK_HC ; 
 int MAX_IGU_ATTN_ACK_TO ; 
 int MISC_REG_AEU_GENERAL_ATTN_1 ; 
 int MISC_REG_AEU_GENERAL_ATTN_2 ; 
 int MISC_REG_AEU_GENERAL_ATTN_3 ; 
 int MISC_REG_AEU_GENERAL_ATTN_4 ; 
 int MISC_REG_AEU_GENERAL_ATTN_5 ; 
 int MISC_REG_AEU_GENERAL_ATTN_6 ; 
 int MISC_REG_AEU_MASK_ATTN_FUNC_0 ; 
 int MISC_REG_AEU_MASK_ATTN_FUNC_1 ; 
 int /*<<< orphan*/  NETIF_MSG_HW ; 
 int NIG_REG_MASK_INTERRUPT_PORT0 ; 
 int NIG_REG_MASK_INTERRUPT_PORT1 ; 
 int FUNC3 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC9 (struct bnx2x*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct bnx2x*) ; 

__attribute__((used)) static void FUNC11(struct bnx2x *bp, u32 asserted)
{
	int port = FUNC1(bp);
	u32 aeu_addr = port ? MISC_REG_AEU_MASK_ATTN_FUNC_1 :
			      MISC_REG_AEU_MASK_ATTN_FUNC_0;
	u32 nig_int_mask_addr = port ? NIG_REG_MASK_INTERRUPT_PORT1 :
				       NIG_REG_MASK_INTERRUPT_PORT0;
	u32 aeu_mask;
	u32 nig_mask = 0;
	u32 reg_addr;

	if (bp->attn_state & asserted)
		FUNC0("IGU ERROR\n");

	FUNC6(bp, HW_LOCK_RESOURCE_PORT0_ATT_MASK + port);
	aeu_mask = FUNC3(bp, aeu_addr);

	FUNC2(NETIF_MSG_HW, "aeu_mask %x  newly asserted %x\n",
	   aeu_mask, asserted);
	aeu_mask &= ~(asserted & 0x3ff);
	FUNC2(NETIF_MSG_HW, "new mask %x\n", aeu_mask);

	FUNC4(bp, aeu_addr, aeu_mask);
	FUNC9(bp, HW_LOCK_RESOURCE_PORT0_ATT_MASK + port);

	FUNC2(NETIF_MSG_HW, "attn_state %x\n", bp->attn_state);
	bp->attn_state |= asserted;
	FUNC2(NETIF_MSG_HW, "new state %x\n", bp->attn_state);

	if (asserted & ATTN_HARD_WIRED_MASK) {
		if (asserted & ATTN_NIG_FOR_FUNC) {

			FUNC7(bp);

			/* save nig interrupt mask */
			nig_mask = FUNC3(bp, nig_int_mask_addr);

			/* If nig_mask is not set, no need to call the update
			 * function.
			 */
			if (nig_mask) {
				FUNC4(bp, nig_int_mask_addr, 0);

				FUNC8(bp);
			}

			/* handle unicore attn? */
		}
		if (asserted & ATTN_SW_TIMER_4_FUNC)
			FUNC2(NETIF_MSG_HW, "ATTN_SW_TIMER_4_FUNC!\n");

		if (asserted & GPIO_2_FUNC)
			FUNC2(NETIF_MSG_HW, "GPIO_2_FUNC!\n");

		if (asserted & GPIO_3_FUNC)
			FUNC2(NETIF_MSG_HW, "GPIO_3_FUNC!\n");

		if (asserted & GPIO_4_FUNC)
			FUNC2(NETIF_MSG_HW, "GPIO_4_FUNC!\n");

		if (port == 0) {
			if (asserted & ATTN_GENERAL_ATTN_1) {
				FUNC2(NETIF_MSG_HW, "ATTN_GENERAL_ATTN_1!\n");
				FUNC4(bp, MISC_REG_AEU_GENERAL_ATTN_1, 0x0);
			}
			if (asserted & ATTN_GENERAL_ATTN_2) {
				FUNC2(NETIF_MSG_HW, "ATTN_GENERAL_ATTN_2!\n");
				FUNC4(bp, MISC_REG_AEU_GENERAL_ATTN_2, 0x0);
			}
			if (asserted & ATTN_GENERAL_ATTN_3) {
				FUNC2(NETIF_MSG_HW, "ATTN_GENERAL_ATTN_3!\n");
				FUNC4(bp, MISC_REG_AEU_GENERAL_ATTN_3, 0x0);
			}
		} else {
			if (asserted & ATTN_GENERAL_ATTN_4) {
				FUNC2(NETIF_MSG_HW, "ATTN_GENERAL_ATTN_4!\n");
				FUNC4(bp, MISC_REG_AEU_GENERAL_ATTN_4, 0x0);
			}
			if (asserted & ATTN_GENERAL_ATTN_5) {
				FUNC2(NETIF_MSG_HW, "ATTN_GENERAL_ATTN_5!\n");
				FUNC4(bp, MISC_REG_AEU_GENERAL_ATTN_5, 0x0);
			}
			if (asserted & ATTN_GENERAL_ATTN_6) {
				FUNC2(NETIF_MSG_HW, "ATTN_GENERAL_ATTN_6!\n");
				FUNC4(bp, MISC_REG_AEU_GENERAL_ATTN_6, 0x0);
			}
		}

	} /* if hardwired */

	if (bp->common.int_block == INT_BLOCK_HC)
		reg_addr = (HC_REG_COMMAND_REG + port*32 +
			    COMMAND_REG_ATTN_BITS_SET);
	else
		reg_addr = (BAR_IGU_INTMEM + IGU_CMD_ATTN_BIT_SET_UPPER*8);

	FUNC2(NETIF_MSG_HW, "about to mask 0x%08x at %s addr 0x%x\n", asserted,
	   (bp->common.int_block == INT_BLOCK_HC) ? "HC" : "IGU", reg_addr);
	FUNC4(bp, reg_addr, asserted);

	/* now set back the mask */
	if (asserted & ATTN_NIG_FOR_FUNC) {
		/* Verify that IGU ack through BAR was written before restoring
		 * NIG mask. This loop should exit after 2-3 iterations max.
		 */
		if (bp->common.int_block != INT_BLOCK_HC) {
			u32 cnt = 0, igu_acked;
			do {
				igu_acked = FUNC3(bp,
						   IGU_REG_ATTENTION_ACK_BITS);
			} while (((igu_acked & ATTN_NIG_FOR_FUNC) == 0) &&
				 (++cnt < MAX_IGU_ATTN_ACK_TO));
			if (!igu_acked)
				FUNC2(NETIF_MSG_HW,
				   "Failed to verify IGU ack on time\n");
			FUNC5();
		}
		FUNC4(bp, nig_int_mask_addr, nig_mask);
		FUNC10(bp);
	}
}