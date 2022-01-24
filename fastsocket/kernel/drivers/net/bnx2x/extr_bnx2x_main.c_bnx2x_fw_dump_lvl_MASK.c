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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int bc_ver; scalar_t__ shmem_base; } ;
struct bnx2x {TYPE_1__ common; int /*<<< orphan*/  dev; } ;
typedef  int __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 scalar_t__ FUNC3 (struct bnx2x*) ; 
 scalar_t__ MCP_A_REG_MCPR_SCRATCH ; 
 scalar_t__ MCP_REG_MCPR_CPU_PROGRAM_COUNTER ; 
 scalar_t__ MCP_REG_MCPR_SCRATCH ; 
 scalar_t__ MFW_TRACE_SIGNATURE ; 
 scalar_t__ FUNC4 (struct bnx2x*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  other_shmem_base_addr ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,...) ; 

void FUNC10(struct bnx2x *bp, const char *lvl)
{
	u32 addr, val;
	u32 mark, offset;
	__be32 data[9];
	int word;
	u32 trace_shmem_base;
	if (FUNC1(bp)) {
		FUNC0("NO MCP - can not dump\n");
		return;
	}
	FUNC9("%s", lvl);
	FUNC7("", bp->dev, "bc %d.%d.%d\n",
		(bp->common.bc_ver & 0xff0000) >> 16,
		(bp->common.bc_ver & 0xff00) >> 8,
		(bp->common.bc_ver & 0xff));

	val = FUNC4(bp, MCP_REG_MCPR_CPU_PROGRAM_COUNTER);
	if (val == FUNC4(bp, MCP_REG_MCPR_CPU_PROGRAM_COUNTER))
		FUNC0("%s" "MCP PC at 0x%x\n", lvl, val);

	if (FUNC2(bp) == 0)
		trace_shmem_base = bp->common.shmem_base;
	else
		trace_shmem_base = FUNC5(bp, other_shmem_base_addr);
	addr = trace_shmem_base - 0x800;

	/* validate TRCB signature */
	mark = FUNC4(bp, addr);
	if (mark != MFW_TRACE_SIGNATURE) {
		FUNC0("Trace buffer signature is missing.");
		return ;
	}

	/* read cyclic buffer pointer */
	addr += 4;
	mark = FUNC4(bp, addr);
	mark = (FUNC3(bp) ? MCP_REG_MCPR_SCRATCH : MCP_A_REG_MCPR_SCRATCH)
			+ ((mark + 0x3) & ~0x3) - 0x08000000;
	FUNC9("%s" "begin fw dump (mark 0x%x)\n", lvl, mark);

	FUNC9("%s", lvl);

	/* dump buffer after the mark */
	for (offset = mark; offset <= trace_shmem_base; offset += 0x8*4) {
		for (word = 0; word < 8; word++)
			data[word] = FUNC6(FUNC4(bp, offset + 4*word));
		data[8] = 0x0;
		FUNC8("%s", (char *)data);
	}

	/* dump buffer before the mark */
	for (offset = addr + 4; offset <= mark; offset += 0x8*4) {
		for (word = 0; word < 8; word++)
			data[word] = FUNC6(FUNC4(bp, offset + 4*word));
		data[8] = 0x0;
		FUNC8("%s", (char *)data);
	}
	FUNC9("%s" "end of fw dump\n", lvl);
}