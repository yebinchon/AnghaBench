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
typedef  scalar_t__ u16 ;
struct e1000_eeprom_info {scalar_t__ opcode_bits; int address_bits; } ;
struct e1000_hw {struct e1000_eeprom_info eeprom; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int E1000_EECD_DO ; 
 int /*<<< orphan*/  E1000_ERR_EEPROM ; 
 int /*<<< orphan*/  E1000_SUCCESS ; 
 int /*<<< orphan*/  EECD ; 
 scalar_t__ EEPROM_EWDS_OPCODE_MICROWIRE ; 
 scalar_t__ EEPROM_EWEN_OPCODE_MICROWIRE ; 
 scalar_t__ EEPROM_WRITE_OPCODE_MICROWIRE ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static s32 FUNC5(struct e1000_hw *hw, u16 offset,
					u16 words, u16 *data)
{
	struct e1000_eeprom_info *eeprom = &hw->eeprom;
	u32 eecd;
	u16 words_written = 0;
	u16 i = 0;

	FUNC2("e1000_write_eeprom_microwire");

	/* Send the write enable command to the EEPROM (3-bit opcode plus
	 * 6/8-bit dummy address beginning with 11).  It's less work to include
	 * the 11 of the dummy address as part of the opcode than it is to shift
	 * it over the correct number of bits for the address.  This puts the
	 * EEPROM into write/erase mode.
	 */
	FUNC0(hw, EEPROM_EWEN_OPCODE_MICROWIRE,
				(u16) (eeprom->opcode_bits + 2));

	FUNC0(hw, 0, (u16) (eeprom->address_bits - 2));

	/* Prepare the EEPROM */
	FUNC1(hw);

	while (words_written < words) {
		/* Send the Write command (3-bit opcode + addr) */
		FUNC0(hw, EEPROM_WRITE_OPCODE_MICROWIRE,
					eeprom->opcode_bits);

		FUNC0(hw, (u16) (offset + words_written),
					eeprom->address_bits);

		/* Send the data */
		FUNC0(hw, data[words_written], 16);

		/* Toggle the CS line.  This in effect tells the EEPROM to execute
		 * the previous command.
		 */
		FUNC1(hw);

		/* Read DO repeatedly until it is high (equal to '1').  The EEPROM will
		 * signal that the command has been completed by raising the DO signal.
		 * If DO does not go high in 10 milliseconds, then error out.
		 */
		for (i = 0; i < 200; i++) {
			eecd = FUNC3(EECD);
			if (eecd & E1000_EECD_DO)
				break;
			FUNC4(50);
		}
		if (i == 200) {
			FUNC2("EEPROM Write did not complete\n");
			return -E1000_ERR_EEPROM;
		}

		/* Recover from write */
		FUNC1(hw);

		words_written++;
	}

	/* Send the write disable command to the EEPROM (3-bit opcode plus
	 * 6/8-bit dummy address beginning with 10).  It's less work to include
	 * the 10 of the dummy address as part of the opcode than it is to shift
	 * it over the correct number of bits for the address.  This takes the
	 * EEPROM out of write/erase mode.
	 */
	FUNC0(hw, EEPROM_EWDS_OPCODE_MICROWIRE,
				(u16) (eeprom->opcode_bits + 2));

	FUNC0(hw, 0, (u16) (eeprom->address_bits - 2));

	return E1000_SUCCESS;
}