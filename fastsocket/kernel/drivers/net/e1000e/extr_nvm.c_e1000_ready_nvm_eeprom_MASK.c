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
typedef  scalar_t__ u16 ;
struct e1000_nvm_info {scalar_t__ type; int /*<<< orphan*/  opcode_bits; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int E1000_EECD_CS ; 
 int E1000_EECD_SK ; 
 int /*<<< orphan*/  E1000_ERR_NVM ; 
 int /*<<< orphan*/  EECD ; 
 scalar_t__ NVM_MAX_RETRY_SPI ; 
 int /*<<< orphan*/  NVM_RDSR_OPCODE_SPI ; 
 int NVM_STATUS_RDY_SPI ; 
 scalar_t__ e1000_nvm_eeprom_spi ; 
 scalar_t__ FUNC0 (struct e1000_hw*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static s32 FUNC8(struct e1000_hw *hw)
{
	struct e1000_nvm_info *nvm = &hw->nvm;
	u32 eecd = FUNC5(EECD);
	u8 spi_stat_reg;

	if (nvm->type == e1000_nvm_eeprom_spi) {
		u16 timeout = NVM_MAX_RETRY_SPI;

		/* Clear SK and CS */
		eecd &= ~(E1000_EECD_CS | E1000_EECD_SK);
		FUNC6(EECD, eecd);
		FUNC3();
		FUNC7(1);

		/* Read "Status Register" repeatedly until the LSB is cleared.
		 * The EEPROM will signal that the command has been completed
		 * by clearing bit 0 of the internal status register.  If it's
		 * not cleared within 'timeout', then error out.
		 */
		while (timeout) {
			FUNC1(hw, NVM_RDSR_OPCODE_SPI,
						 hw->nvm.opcode_bits);
			spi_stat_reg = (u8)FUNC0(hw, 8);
			if (!(spi_stat_reg & NVM_STATUS_RDY_SPI))
				break;

			FUNC7(5);
			FUNC2(hw);
			timeout--;
		}

		if (!timeout) {
			FUNC4("SPI NVM Status error\n");
			return -E1000_ERR_NVM;
		}
	}

	return 0;
}