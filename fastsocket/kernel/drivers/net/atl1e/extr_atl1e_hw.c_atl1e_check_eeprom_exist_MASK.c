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
struct atl1e_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct atl1e_hw*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct atl1e_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct atl1e_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  REG_PCIE_CAP_LIST ; 
 int /*<<< orphan*/  REG_SPI_FLASH_CTRL ; 
 int SPI_FLASH_CTRL_EN_VPD ; 

int FUNC3(struct atl1e_hw *hw)
{
	u32 value;

	value = FUNC0(hw, REG_SPI_FLASH_CTRL);
	if (value & SPI_FLASH_CTRL_EN_VPD) {
		value &= ~SPI_FLASH_CTRL_EN_VPD;
		FUNC2(hw, REG_SPI_FLASH_CTRL, value);
	}
	value = FUNC1(hw, REG_PCIE_CAP_LIST);
	return ((value & 0xFF00) == 0x6C00) ? 0 : 1;
}