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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct bnx2 {struct net_device* dev; } ;

/* Variables and functions */
 int BNX2_BC_RESET_TYPE ; 
 int BNX2_BC_STATE_CONDITION ; 
 int BNX2_BC_STATE_RESET_TYPE ; 
 scalar_t__ FUNC0 (struct bnx2*) ; 
 scalar_t__ BNX2_CHIP_5709 ; 
 int BNX2_DEV_INFO_SIGNATURE ; 
 int BNX2_DRV_MB ; 
 int BNX2_DRV_PULSE_MB ; 
 int BNX2_FW_MB ; 
 int BNX2_LINK_STATUS ; 
 int /*<<< orphan*/  BNX2_MCP_CPU_EVENT_MASK ; 
 int /*<<< orphan*/  BNX2_MCP_CPU_INSTRUCTION ; 
 int /*<<< orphan*/  BNX2_MCP_CPU_MODE ; 
 int /*<<< orphan*/  BNX2_MCP_CPU_PROGRAM_COUNTER ; 
 int /*<<< orphan*/  BNX2_MCP_CPU_STATE ; 
 int /*<<< orphan*/  BNX2_MCP_STATE_P0 ; 
 int /*<<< orphan*/  BNX2_MCP_STATE_P0_5708 ; 
 int /*<<< orphan*/  BNX2_MCP_STATE_P1 ; 
 int /*<<< orphan*/  BNX2_MCP_STATE_P1_5708 ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct bnx2 *bp)
{
	struct net_device *dev = bp->dev;
	u32 mcp_p0, mcp_p1;

	FUNC4(dev, "<--- start MCP states dump --->\n");
	if (FUNC0(bp) == BNX2_CHIP_5709) {
		mcp_p0 = BNX2_MCP_STATE_P0;
		mcp_p1 = BNX2_MCP_STATE_P1;
	} else {
		mcp_p0 = BNX2_MCP_STATE_P0_5708;
		mcp_p1 = BNX2_MCP_STATE_P1_5708;
	}
	FUNC4(dev, "DEBUG: MCP_STATE_P0[%08x] MCP_STATE_P1[%08x]\n",
		   FUNC2(bp, mcp_p0), FUNC2(bp, mcp_p1));
	FUNC4(dev, "DEBUG: MCP mode[%08x] state[%08x] evt_mask[%08x]\n",
		   FUNC2(bp, BNX2_MCP_CPU_MODE),
		   FUNC2(bp, BNX2_MCP_CPU_STATE),
		   FUNC2(bp, BNX2_MCP_CPU_EVENT_MASK));
	FUNC4(dev, "DEBUG: pc[%08x] pc[%08x] instr[%08x]\n",
		   FUNC2(bp, BNX2_MCP_CPU_PROGRAM_COUNTER),
		   FUNC2(bp, BNX2_MCP_CPU_PROGRAM_COUNTER),
		   FUNC2(bp, BNX2_MCP_CPU_INSTRUCTION));
	FUNC4(dev, "DEBUG: shmem states:\n");
	FUNC4(dev, "DEBUG: drv_mb[%08x] fw_mb[%08x] link_status[%08x]",
		   FUNC3(bp, BNX2_DRV_MB),
		   FUNC3(bp, BNX2_FW_MB),
		   FUNC3(bp, BNX2_LINK_STATUS));
	FUNC5(" drv_pulse_mb[%08x]\n", FUNC3(bp, BNX2_DRV_PULSE_MB));
	FUNC4(dev, "DEBUG: dev_info_signature[%08x] reset_type[%08x]",
		   FUNC3(bp, BNX2_DEV_INFO_SIGNATURE),
		   FUNC3(bp, BNX2_BC_STATE_RESET_TYPE));
	FUNC5(" condition[%08x]\n",
		FUNC3(bp, BNX2_BC_STATE_CONDITION));
	FUNC1(bp, BNX2_BC_RESET_TYPE);
	FUNC1(bp, 0x3cc);
	FUNC1(bp, 0x3dc);
	FUNC1(bp, 0x3ec);
	FUNC4(dev, "DEBUG: 0x3fc[%08x]\n", FUNC3(bp, 0x3fc));
	FUNC4(dev, "<--- end MCP states dump --->\n");
}