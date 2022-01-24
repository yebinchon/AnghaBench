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
struct ixgbe_hw {scalar_t__ revision_id; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_EEC ; 
 int IXGBE_EEC_FLUP ; 
 int IXGBE_EEC_SEC1VAL ; 
 scalar_t__ IXGBE_ERR_EEPROM ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,char*) ; 
 scalar_t__ FUNC3 (struct ixgbe_hw*) ; 

__attribute__((used)) static s32 FUNC4(struct ixgbe_hw *hw)
{
	u32 flup;
	s32 status = IXGBE_ERR_EEPROM;

	status = FUNC3(hw);
	if (status == IXGBE_ERR_EEPROM) {
		FUNC2(hw, "Flash update time out\n");
		goto out;
	}

	flup = FUNC0(hw, IXGBE_EEC) | IXGBE_EEC_FLUP;
	FUNC1(hw, IXGBE_EEC, flup);

	status = FUNC3(hw);
	if (status == 0)
		FUNC2(hw, "Flash update complete\n");
	else
		FUNC2(hw, "Flash update time out\n");

	if (hw->revision_id == 0) {
		flup = FUNC0(hw, IXGBE_EEC);

		if (flup & IXGBE_EEC_SEC1VAL) {
			flup |= IXGBE_EEC_FLUP;
			FUNC1(hw, IXGBE_EEC, flup);
		}

		status = FUNC3(hw);
		if (status == 0)
			FUNC2(hw, "Flash update complete\n");
		else
			FUNC2(hw, "Flash update time out\n");
	}
out:
	return status;
}