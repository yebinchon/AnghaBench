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
 scalar_t__ IXGBE_ERR_EEPROM ; 
 scalar_t__ FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ IXGBE_SWFW_REGSMP ; 
 int /*<<< orphan*/  IXGBE_SWFW_SYNC ; 
 int /*<<< orphan*/  IXGBE_SWSM ; 
 scalar_t__ IXGBE_SWSM_SMBI ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static s32 FUNC3(struct ixgbe_hw *hw)
{
	s32 status = IXGBE_ERR_EEPROM;
	u32 timeout = 2000;
	u32 i;
	u32 swsm;

	/* Get SMBI software semaphore between device drivers first */
	for (i = 0; i < timeout; i++) {
		/*
		 * If the SMBI bit is 0 when we read it, then the bit will be
		 * set and we have the semaphore
		 */
		swsm = FUNC0(hw, IXGBE_SWSM);
		if (!(swsm & IXGBE_SWSM_SMBI)) {
			status = 0;
			break;
		}
		FUNC2(50);
	}

	/* Now get the semaphore between SW/FW through the REGSMP bit */
	if (status) {
		for (i = 0; i < timeout; i++) {
			swsm = FUNC0(hw, IXGBE_SWFW_SYNC);
			if (!(swsm & IXGBE_SWFW_REGSMP))
				break;

			FUNC2(50);
		}
	} else {
		FUNC1(hw, "Software semaphore SMBI between device drivers "
		           "not granted.\n");
	}

	return status;
}