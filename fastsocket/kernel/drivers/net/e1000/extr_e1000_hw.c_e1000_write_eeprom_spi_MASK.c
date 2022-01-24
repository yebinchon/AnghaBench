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
typedef  int u16 ;
struct e1000_eeprom_info {int opcode_bits; int address_bits; int page_size; } ;
struct e1000_hw {struct e1000_eeprom_info eeprom; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_ERR_EEPROM ; 
 int /*<<< orphan*/  E1000_SUCCESS ; 
 int EEPROM_A8_OPCODE_SPI ; 
 int EEPROM_WREN_OPCODE_SPI ; 
 int EEPROM_WRITE_OPCODE_SPI ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*,int,int) ; 
 scalar_t__ FUNC1 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static s32 FUNC4(struct e1000_hw *hw, u16 offset, u16 words,
				  u16 *data)
{
	struct e1000_eeprom_info *eeprom = &hw->eeprom;
	u16 widx = 0;

	FUNC3("e1000_write_eeprom_spi");

	while (widx < words) {
		u8 write_opcode = EEPROM_WRITE_OPCODE_SPI;

		if (FUNC1(hw))
			return -E1000_ERR_EEPROM;

		FUNC2(hw);

		/*  Send the WRITE ENABLE command (8 bit opcode )  */
		FUNC0(hw, EEPROM_WREN_OPCODE_SPI,
					eeprom->opcode_bits);

		FUNC2(hw);

		/* Some SPI eeproms use the 8th address bit embedded in the opcode */
		if ((eeprom->address_bits == 8) && (offset >= 128))
			write_opcode |= EEPROM_A8_OPCODE_SPI;

		/* Send the Write command (8-bit opcode + addr) */
		FUNC0(hw, write_opcode, eeprom->opcode_bits);

		FUNC0(hw, (u16) ((offset + widx) * 2),
					eeprom->address_bits);

		/* Send the data */

		/* Loop to allow for up to whole page write (32 bytes) of eeprom */
		while (widx < words) {
			u16 word_out = data[widx];
			word_out = (word_out >> 8) | (word_out << 8);
			FUNC0(hw, word_out, 16);
			widx++;

			/* Some larger eeprom sizes are capable of a 32-byte PAGE WRITE
			 * operation, while the smaller eeproms are capable of an 8-byte
			 * PAGE WRITE operation.  Break the inner loop to pass new address
			 */
			if ((((offset + widx) * 2) % eeprom->page_size) == 0) {
				FUNC2(hw);
				break;
			}
		}
	}

	return E1000_SUCCESS;
}