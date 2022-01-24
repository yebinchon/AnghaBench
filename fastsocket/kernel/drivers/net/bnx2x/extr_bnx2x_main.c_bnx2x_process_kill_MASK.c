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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 int EAGAIN ; 
 int /*<<< orphan*/  MISC_REG_UNPREPARED ; 
 int /*<<< orphan*/  PGLUE_B_REG_TAGS_63_32 ; 
 int /*<<< orphan*/  PXP2_REG_PGL_EXP_ROM2 ; 
 int /*<<< orphan*/  PXP2_REG_RD_BLK_CNT ; 
 int /*<<< orphan*/  PXP2_REG_RD_PORT_IS_IDLE_0 ; 
 int /*<<< orphan*/  PXP2_REG_RD_PORT_IS_IDLE_1 ; 
 int /*<<< orphan*/  PXP2_REG_RD_SR_CNT ; 
 int FUNC3 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x*) ; 
 scalar_t__ FUNC9 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct bnx2x*,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

__attribute__((used)) static int FUNC14(struct bnx2x *bp, bool global)
{
	int cnt = 1000;
	u32 val = 0;
	u32 sr_cnt, blk_cnt, port_is_idle_0, port_is_idle_1, pgl_exp_rom2;
	u32 tags_63_32 = 0;

	/* Empty the Tetris buffer, wait for 1s */
	do {
		sr_cnt  = FUNC3(bp, PXP2_REG_RD_SR_CNT);
		blk_cnt = FUNC3(bp, PXP2_REG_RD_BLK_CNT);
		port_is_idle_0 = FUNC3(bp, PXP2_REG_RD_PORT_IS_IDLE_0);
		port_is_idle_1 = FUNC3(bp, PXP2_REG_RD_PORT_IS_IDLE_1);
		pgl_exp_rom2 = FUNC3(bp, PXP2_REG_PGL_EXP_ROM2);
		if (FUNC2(bp))
			tags_63_32 = FUNC3(bp, PGLUE_B_REG_TAGS_63_32);

		if ((sr_cnt == 0x7e) && (blk_cnt == 0xa0) &&
		    ((port_is_idle_0 & 0x1) == 0x1) &&
		    ((port_is_idle_1 & 0x1) == 0x1) &&
		    (pgl_exp_rom2 == 0xffffffff) &&
		    (!FUNC2(bp) || (tags_63_32 == 0xffffffff)))
			break;
		FUNC13(1000, 2000);
	} while (cnt-- > 0);

	if (cnt <= 0) {
		FUNC0("Tetris buffer didn't get empty or there are still outstanding read requests after 1s!\n");
		FUNC0("sr_cnt=0x%08x, blk_cnt=0x%08x, port_is_idle_0=0x%08x, port_is_idle_1=0x%08x, pgl_exp_rom2=0x%08x\n",
			  sr_cnt, blk_cnt, port_is_idle_0, port_is_idle_1,
			  pgl_exp_rom2);
		return -EAGAIN;
	}

	FUNC5();

	/* Close gates #2, #3 and #4 */
	FUNC11(bp, true);

	/* Poll for IGU VQs for 57712 and newer chips */
	if (!FUNC1(bp) && FUNC6(bp))
		return -EAGAIN;

	/* TBD: Indicate that "process kill" is in progress to MCP */

	/* Clear "unprepared" bit */
	FUNC4(bp, MISC_REG_UNPREPARED, 0);
	FUNC5();

	/* Make sure all is written to the chip before the reset */
	FUNC12();

	/* Wait for 1ms to empty GLUE and PCI-E core queues,
	 * PSWHST, GRC and PSWRD Tetris buffer.
	 */
	FUNC13(1000, 2000);

	/* Prepare to chip reset: */
	/* MCP */
	if (global)
		FUNC10(bp, &val);

	/* PXP */
	FUNC8(bp);
	FUNC5();

	/* reset the chip */
	FUNC7(bp, global);
	FUNC5();

	/* Recover after reset: */
	/* MCP */
	if (global && FUNC9(bp, val))
		return -EAGAIN;

	/* TBD: Add resetting the NO_MCP mode DB here */

	/* Open the gates #2, #3 and #4 */
	FUNC11(bp, false);

	/* TBD: IGU/AEU preparation bring back the AEU/IGU to a
	 * reset state, re-enable attentions. */

	return 0;
}