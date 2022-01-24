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
typedef  scalar_t__ u16 ;
struct ixgbe_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 scalar_t__ IXGBE_EEPROM_MAX_RETRY_SPI ; 
 int /*<<< orphan*/  IXGBE_EEPROM_OPCODE_BITS ; 
 int /*<<< orphan*/  IXGBE_EEPROM_RDSR_OPCODE_SPI ; 
 int IXGBE_EEPROM_STATUS_RDY_SPI ; 
 int /*<<< orphan*/  IXGBE_ERR_EEPROM ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,char*) ; 
 scalar_t__ FUNC1 (struct ixgbe_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static s32 FUNC5(struct ixgbe_hw *hw)
{
	s32 status = 0;
	u16 i;
	u8 spi_stat_reg;

	/*
	 * Read "Status Register" repeatedly until the LSB is cleared.  The
	 * EEPROM will signal that the command has been completed by clearing
	 * bit 0 of the internal status register.  If it's not cleared within
	 * 5 milliseconds, then error out.
	 */
	for (i = 0; i < IXGBE_EEPROM_MAX_RETRY_SPI; i += 5) {
		FUNC2(hw, IXGBE_EEPROM_RDSR_OPCODE_SPI,
		                            IXGBE_EEPROM_OPCODE_BITS);
		spi_stat_reg = (u8)FUNC1(hw, 8);
		if (!(spi_stat_reg & IXGBE_EEPROM_STATUS_RDY_SPI))
			break;

		FUNC4(5);
		FUNC3(hw);
	}

	/*
	 * On some parts, SPI write time could vary from 0-20mSec on 3.3V
	 * devices (and only 0-5mSec on 5V devices)
	 */
	if (i >= IXGBE_EEPROM_MAX_RETRY_SPI) {
		FUNC0(hw, "SPI EEPROM Status error\n");
		status = IXGBE_ERR_EEPROM;
	}

	return status;
}