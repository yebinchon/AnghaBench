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
struct e1000_nvm_info {scalar_t__ type; int /*<<< orphan*/  delay_usec; } ;
struct e1000_hw {struct e1000_nvm_info nvm; } ;

/* Variables and functions */
 int E1000_EECD_DI ; 
 int E1000_EECD_DO ; 
 int /*<<< orphan*/  EECD ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*,int*) ; 
 scalar_t__ e1000_nvm_eeprom_spi ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct e1000_hw *hw, u16 data, u16 count)
{
	struct e1000_nvm_info *nvm = &hw->nvm;
	u32 eecd = FUNC3(EECD);
	u32 mask;

	mask = 0x01 << (count - 1);
	if (nvm->type == e1000_nvm_eeprom_spi)
		eecd |= E1000_EECD_DO;

	do {
		eecd &= ~E1000_EECD_DI;

		if (data & mask)
			eecd |= E1000_EECD_DI;

		FUNC4(EECD, eecd);
		FUNC2();

		FUNC5(nvm->delay_usec);

		FUNC1(hw, &eecd);
		FUNC0(hw, &eecd);

		mask >>= 1;
	} while (mask);

	eecd &= ~E1000_EECD_DI;
	FUNC4(EECD, eecd);
}