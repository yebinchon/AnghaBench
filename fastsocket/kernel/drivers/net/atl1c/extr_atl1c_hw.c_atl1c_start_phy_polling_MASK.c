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
typedef  int u16 ;
struct atl1c_hw {int ctrl_flags; } ;

/* Variables and functions */
 int ATL1C_FPGA_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct atl1c_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int MDIO_CTRL_AP_EN ; 
 int /*<<< orphan*/  MDIO_CTRL_CLK_SEL ; 
 int MDIO_CTRL_OP_READ ; 
 int /*<<< orphan*/  MDIO_CTRL_REG ; 
 int MDIO_CTRL_SPRES_PRMBL ; 
 int MDIO_CTRL_START ; 
 int /*<<< orphan*/  REG_MDIO_CTRL ; 
 int /*<<< orphan*/  FUNC2 (struct atl1c_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(struct atl1c_hw *hw, u16 clk_sel)
{
	u32 val;

	if (!(hw->ctrl_flags & ATL1C_FPGA_VERSION))
		return;

	val = MDIO_CTRL_SPRES_PRMBL |
		FUNC1(MDIO_CTRL_CLK_SEL, clk_sel) |
		FUNC1(MDIO_CTRL_REG, 1) |
		MDIO_CTRL_START |
		MDIO_CTRL_OP_READ;
	FUNC0(hw, REG_MDIO_CTRL, val);
	FUNC2(hw);
	val |= MDIO_CTRL_AP_EN;
	val &= ~MDIO_CTRL_START;
	FUNC0(hw, REG_MDIO_CTRL, val);
	FUNC3(30);
}