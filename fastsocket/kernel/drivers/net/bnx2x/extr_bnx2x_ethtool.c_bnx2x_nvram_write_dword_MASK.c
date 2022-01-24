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
 int BNX2X_MSG_ETHTOOL ; 
 int BNX2X_MSG_NVM ; 
 int BNX2X_NVRAM_TIMEOUT_COUNT ; 
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int EBUSY ; 
 int MCPR_NVM_ADDR_NVM_ADDR_VALUE ; 
 int MCPR_NVM_COMMAND_DOIT ; 
 int MCPR_NVM_COMMAND_DONE ; 
 int MCPR_NVM_COMMAND_WR ; 
 int /*<<< orphan*/  MCP_REG_MCPR_NVM_ADDR ; 
 int /*<<< orphan*/  MCP_REG_MCPR_NVM_COMMAND ; 
 int /*<<< orphan*/  MCP_REG_MCPR_NVM_WRITE ; 
 int FUNC2 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct bnx2x *bp, u32 offset, u32 val,
				   u32 cmd_flags)
{
	int count, i, rc;

	/* build the command word */
	cmd_flags |= MCPR_NVM_COMMAND_DOIT | MCPR_NVM_COMMAND_WR;

	/* need to clear DONE bit separately */
	FUNC3(bp, MCP_REG_MCPR_NVM_COMMAND, MCPR_NVM_COMMAND_DONE);

	/* write the data */
	FUNC3(bp, MCP_REG_MCPR_NVM_WRITE, val);

	/* address of the NVRAM to write to */
	FUNC3(bp, MCP_REG_MCPR_NVM_ADDR,
	       (offset & MCPR_NVM_ADDR_NVM_ADDR_VALUE));

	/* issue the write command */
	FUNC3(bp, MCP_REG_MCPR_NVM_COMMAND, cmd_flags);

	/* adjust timeout for emulation/FPGA */
	count = BNX2X_NVRAM_TIMEOUT_COUNT;
	if (FUNC0(bp))
		count *= 100;

	/* wait for completion */
	rc = -EBUSY;
	for (i = 0; i < count; i++) {
		FUNC4(5);
		val = FUNC2(bp, MCP_REG_MCPR_NVM_COMMAND);
		if (val & MCPR_NVM_COMMAND_DONE) {
			rc = 0;
			break;
		}
	}

	if (rc == -EBUSY)
		FUNC1(BNX2X_MSG_ETHTOOL | BNX2X_MSG_NVM,
		   "nvram write timeout expired\n");
	return rc;
}