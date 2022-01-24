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
typedef  int u8 ;
typedef  int u32 ;
struct bnx2x_mac_vals {int bmac_addr; int umac_addr; int xmac_addr; int emac_addr; int* bmac_val; void* umac_val; void* xmac_val; void* emac_val; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int BIGMAC2_REGISTER_BMAC_CONTROL ; 
 int BIGMAC_REGISTER_BMAC_CONTROL ; 
 int BMAC_CONTROL_RX_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int GRCBASE_UMAC0 ; 
 int GRCBASE_UMAC1 ; 
 int GRCBASE_XMAC0 ; 
 int GRCBASE_XMAC1 ; 
 int MISC_REGISTERS_RESET_REG_2_RST_BMAC0 ; 
 int MISC_REGISTERS_RESET_REG_2_UMAC0 ; 
 int MISC_REGISTERS_RESET_REG_2_XMAC ; 
 int MISC_REG_RESET_REG_2 ; 
 int NIG_REG_BMAC0_REGS_OUT_EN ; 
 int NIG_REG_INGRESS_BMAC0_MEM ; 
 int NIG_REG_INGRESS_BMAC1_MEM ; 
 int NIG_REG_NIG_EMAC0_EN ; 
 void* FUNC4 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int,int) ; 
 int UMAC_REG_COMMAND_CONFIG ; 
 int XMAC_REG_CTRL ; 
 int XMAC_REG_PFC_CTRL_HI ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct bnx2x *bp,
					struct bnx2x_mac_vals *vals)
{
	u32 val, base_addr, offset, mask, reset_reg;
	bool mac_stopped = false;
	u8 port = FUNC1(bp);

	/* reset addresses as they also mark which values were changed */
	vals->bmac_addr = 0;
	vals->umac_addr = 0;
	vals->xmac_addr = 0;
	vals->emac_addr = 0;

	reset_reg = FUNC4(bp, MISC_REG_RESET_REG_2);

	if (!FUNC3(bp)) {
		val = FUNC4(bp, NIG_REG_BMAC0_REGS_OUT_EN + port * 4);
		mask = MISC_REGISTERS_RESET_REG_2_RST_BMAC0 << port;
		if ((mask & reset_reg) && val) {
			u32 wb_data[2];
			FUNC0("Disable bmac Rx\n");
			base_addr = FUNC1(bp) ? NIG_REG_INGRESS_BMAC1_MEM
						: NIG_REG_INGRESS_BMAC0_MEM;
			offset = FUNC2(bp) ? BIGMAC2_REGISTER_BMAC_CONTROL
						: BIGMAC_REGISTER_BMAC_CONTROL;

			/*
			 * use rd/wr since we cannot use dmae. This is safe
			 * since MCP won't access the bus due to the request
			 * to unload, and no function on the path can be
			 * loaded at this time.
			 */
			wb_data[0] = FUNC4(bp, base_addr + offset);
			wb_data[1] = FUNC4(bp, base_addr + offset + 0x4);
			vals->bmac_addr = base_addr + offset;
			vals->bmac_val[0] = wb_data[0];
			vals->bmac_val[1] = wb_data[1];
			wb_data[0] &= ~BMAC_CONTROL_RX_ENABLE;
			FUNC5(bp, vals->bmac_addr, wb_data[0]);
			FUNC5(bp, vals->bmac_addr + 0x4, wb_data[1]);
		}
		FUNC0("Disable emac Rx\n");
		vals->emac_addr = NIG_REG_NIG_EMAC0_EN + FUNC1(bp)*4;
		vals->emac_val = FUNC4(bp, vals->emac_addr);
		FUNC5(bp, vals->emac_addr, 0);
		mac_stopped = true;
	} else {
		if (reset_reg & MISC_REGISTERS_RESET_REG_2_XMAC) {
			FUNC0("Disable xmac Rx\n");
			base_addr = FUNC1(bp) ? GRCBASE_XMAC1 : GRCBASE_XMAC0;
			val = FUNC4(bp, base_addr + XMAC_REG_PFC_CTRL_HI);
			FUNC5(bp, base_addr + XMAC_REG_PFC_CTRL_HI,
			       val & ~(1 << 1));
			FUNC5(bp, base_addr + XMAC_REG_PFC_CTRL_HI,
			       val | (1 << 1));
			vals->xmac_addr = base_addr + XMAC_REG_CTRL;
			vals->xmac_val = FUNC4(bp, vals->xmac_addr);
			FUNC5(bp, vals->xmac_addr, 0);
			mac_stopped = true;
		}
		mask = MISC_REGISTERS_RESET_REG_2_UMAC0 << port;
		if (mask & reset_reg) {
			FUNC0("Disable umac Rx\n");
			base_addr = FUNC1(bp) ? GRCBASE_UMAC1 : GRCBASE_UMAC0;
			vals->umac_addr = base_addr + UMAC_REG_COMMAND_CONFIG;
			vals->umac_val = FUNC4(bp, vals->umac_addr);
			FUNC5(bp, vals->umac_addr, 0);
			mac_stopped = true;
		}
	}

	if (mac_stopped)
		FUNC6(20);
}