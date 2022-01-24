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
typedef  scalar_t__ u32 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bnx2x*) ; 
 scalar_t__ BRB1_REG_PORT_NUM_OCC_BLOCKS_0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ MISC_REG_AEU_MASK_ATTN_FUNC_0 ; 
 int /*<<< orphan*/  NETIF_MSG_IFDOWN ; 
 scalar_t__ NIG_REG_LLH0_BRB1_DRV_MASK ; 
 scalar_t__ NIG_REG_LLH0_BRB1_NOT_MCP ; 
 scalar_t__ NIG_REG_LLH1_BRB1_NOT_MCP ; 
 scalar_t__ NIG_REG_MASK_INTERRUPT_PORT0 ; 
 scalar_t__ FUNC2 (struct bnx2x*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct bnx2x *bp)
{
	int port = FUNC0(bp);
	u32 val;

	/* Reset physical Link */
	FUNC4(bp);

	FUNC3(bp, NIG_REG_MASK_INTERRUPT_PORT0 + port*4, 0);

	/* Do not rcv packets to BRB */
	FUNC3(bp, NIG_REG_LLH0_BRB1_DRV_MASK + port*4, 0x0);
	/* Do not direct rcv packets that are not for MCP to the BRB */
	FUNC3(bp, (port ? NIG_REG_LLH1_BRB1_NOT_MCP :
			   NIG_REG_LLH0_BRB1_NOT_MCP), 0x0);

	/* Configure AEU */
	FUNC3(bp, MISC_REG_AEU_MASK_ATTN_FUNC_0 + port*4, 0);

	FUNC5(100);
	/* Check for BRB port occupancy */
	val = FUNC2(bp, BRB1_REG_PORT_NUM_OCC_BLOCKS_0 + port*4);
	if (val)
		FUNC1(NETIF_MSG_IFDOWN,
		   "BRB1 is not empty  %d blocks are occupied\n", val);

	/* TODO: Close Doorbell port? */
}