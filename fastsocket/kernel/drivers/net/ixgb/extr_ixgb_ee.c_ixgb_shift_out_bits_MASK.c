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
struct ixgb_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EECD ; 
 int IXGB_EECD_DI ; 
 int IXGB_EECD_DO ; 
 int FUNC0 (struct ixgb_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgb_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgb_hw*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgb_hw*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(struct ixgb_hw *hw,
					 u16 data,
					 u16 count)
{
	u32 eecd_reg;
	u32 mask;

	/* We need to shift "count" bits out to the EEPROM. So, value in the
	 * "data" parameter will be shifted out to the EEPROM one bit at a time.
	 * In order to do this, "data" must be broken down into bits.
	 */
	mask = 0x01 << (count - 1);
	eecd_reg = FUNC0(hw, EECD);
	eecd_reg &= ~(IXGB_EECD_DO | IXGB_EECD_DI);
	do {
		/* A "1" is shifted out to the EEPROM by setting bit "DI" to a "1",
		 * and then raising and then lowering the clock (the SK bit controls
		 * the clock input to the EEPROM).  A "0" is shifted out to the EEPROM
		 * by setting "DI" to "0" and then raising and then lowering the clock.
		 */
		eecd_reg &= ~IXGB_EECD_DI;

		if (data & mask)
			eecd_reg |= IXGB_EECD_DI;

		FUNC1(hw, EECD, eecd_reg);

		FUNC4(50);

		FUNC3(hw, &eecd_reg);
		FUNC2(hw, &eecd_reg);

		mask = mask >> 1;

	} while (mask);

	/* We leave the "DI" bit set to "0" when we leave this routine. */
	eecd_reg &= ~IXGB_EECD_DI;
	FUNC1(hw, EECD, eecd_reg);
	return;
}