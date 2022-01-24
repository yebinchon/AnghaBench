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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct e1000_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ E1000_EECD_DI ; 
 scalar_t__ E1000_EECD_DO ; 
 int /*<<< orphan*/  EECD ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_hw*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC3(struct e1000_hw *hw, u16 count)
{
	u32 eecd;
	u32 i;
	u16 data;

	/* In order to read a register from the EEPROM, we need to shift 'count'
	 * bits in from the EEPROM. Bits are "shifted in" by raising the clock
	 * input to the EEPROM (setting the SK bit), and then reading the value of
	 * the "DO" bit.  During this "shifting in" process the "DI" bit should
	 * always be clear.
	 */

	eecd = FUNC2(EECD);

	eecd &= ~(E1000_EECD_DO | E1000_EECD_DI);
	data = 0;

	for (i = 0; i < count; i++) {
		data = data << 1;
		FUNC1(hw, &eecd);

		eecd = FUNC2(EECD);

		eecd &= ~(E1000_EECD_DI);
		if (eecd & E1000_EECD_DO)
			data |= 1;

		FUNC0(hw, &eecd);
	}

	return data;
}