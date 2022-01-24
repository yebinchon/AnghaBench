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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MISC_AEU_ENABLE_MCP_PRTY_BITS ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * mcp_attn_ctl_regs ; 

__attribute__((used)) static inline void FUNC3(struct bnx2x *bp, u8 enable)
{
	int i;
	u32 reg_val;

	for (i = 0; i < FUNC0(mcp_attn_ctl_regs); i++) {
		reg_val = FUNC1(bp, mcp_attn_ctl_regs[i]);

		if (enable)
			reg_val |= MISC_AEU_ENABLE_MCP_PRTY_BITS;
		else
			reg_val &= ~MISC_AEU_ENABLE_MCP_PRTY_BITS;

		FUNC2(bp, mcp_attn_ctl_regs[i], reg_val);
	}
}