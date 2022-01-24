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
struct ixgbe_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_EEC ; 
 scalar_t__ IXGBE_EEC_FLUDONE ; 
 scalar_t__ IXGBE_ERR_EEPROM ; 
 scalar_t__ IXGBE_FLUDONE_ATTEMPTS ; 
 scalar_t__ FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static s32 FUNC2(struct ixgbe_hw *hw)
{
	u32 i;
	u32 reg;
	s32 status = IXGBE_ERR_EEPROM;

	for (i = 0; i < IXGBE_FLUDONE_ATTEMPTS; i++) {
		reg = FUNC0(hw, IXGBE_EEC);
		if (reg & IXGBE_EEC_FLUDONE) {
			status = 0;
			break;
		}
		FUNC1(5);
	}
	return status;
}