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
typedef  scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ word_size; } ;
struct ixgbe_hw {TYPE_1__ eeprom; } ;

/* Variables and functions */
 scalar_t__ IXGBE_EEPROM_CHECKSUM ; 
 scalar_t__ IXGBE_EEPROM_SUM ; 
 scalar_t__ IXGBE_FW_PTR ; 
 scalar_t__ IXGBE_OPTION_ROM_PTR ; 
 scalar_t__ IXGBE_PCIE_ANALOG_PTR ; 
 scalar_t__ IXGBE_PHY_PTR ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,char*) ; 
 scalar_t__ FUNC1 (struct ixgbe_hw*,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static u16 FUNC2(struct ixgbe_hw *hw)
{
	u16 i;
	u16 j;
	u16 checksum = 0;
	u16 length = 0;
	u16 pointer = 0;
	u16 word = 0;

	/*
	 * Do not use hw->eeprom.ops.read because we do not want to take
	 * the synchronization semaphores here. Instead use
	 * ixgbe_read_eerd_generic
	 */

	/* Include 0x0-0x3F in the checksum */
	for (i = 0; i < IXGBE_EEPROM_CHECKSUM; i++) {
		if (FUNC1(hw, i, &word) != 0) {
			FUNC0(hw, "EEPROM read failed\n");
			break;
		}
		checksum += word;
	}

	/*
	 * Include all data from pointers 0x3, 0x6-0xE.  This excludes the
	 * FW, PHY module, and PCIe Expansion/Option ROM pointers.
	 */
	for (i = IXGBE_PCIE_ANALOG_PTR; i < IXGBE_FW_PTR; i++) {
		if (i == IXGBE_PHY_PTR || i == IXGBE_OPTION_ROM_PTR)
			continue;

		if (FUNC1(hw, i, &pointer) != 0) {
			FUNC0(hw, "EEPROM read failed\n");
			break;
		}

		/* Skip pointer section if the pointer is invalid. */
		if (pointer == 0xFFFF || pointer == 0 ||
		    pointer >= hw->eeprom.word_size)
			continue;

		if (FUNC1(hw, pointer, &length) != 0) {
			FUNC0(hw, "EEPROM read failed\n");
			break;
		}

		/* Skip pointer section if length is invalid. */
		if (length == 0xFFFF || length == 0 ||
		    (pointer + length) >= hw->eeprom.word_size)
			continue;

		for (j = pointer+1; j <= pointer+length; j++) {
			if (FUNC1(hw, j, &word) != 0) {
				FUNC0(hw, "EEPROM read failed\n");
				break;
			}
			checksum += word;
		}
	}

	checksum = (u16)IXGBE_EEPROM_SUM - checksum;

	return checksum;
}