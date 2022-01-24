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
struct ixgb_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EECD ; 
 int IXGB_EECD_DO ; 
 int FUNC1 (struct ixgb_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgb_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static bool
FUNC4(struct ixgb_hw *hw)
{
	u32 eecd_reg;
	u32 i;

	/* Toggle the CS line.  This in effect tells to EEPROM to actually execute
	 * the command in question.
	 */
	FUNC2(hw);

	/* Now read DO repeatedly until is high (equal to '1').  The EEPROM will
	 * signal that the command has been completed by raising the DO signal.
	 * If DO does not go high in 10 milliseconds, then error out.
	 */
	for (i = 0; i < 200; i++) {
		eecd_reg = FUNC1(hw, EECD);

		if (eecd_reg & IXGB_EECD_DO)
			return (true);

		FUNC3(50);
	}
	FUNC0(0);
	return (false);
}