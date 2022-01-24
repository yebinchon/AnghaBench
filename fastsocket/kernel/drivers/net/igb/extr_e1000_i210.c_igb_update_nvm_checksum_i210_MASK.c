#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ (* acquire ) (struct e1000_hw*) ;int /*<<< orphan*/  (* release ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ nvm; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ E1000_ERR_SWFW_SYNC ; 
 scalar_t__ E1000_SUCCESS ; 
 scalar_t__ NVM_CHECKSUM_REG ; 
 scalar_t__ NVM_SUM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct e1000_hw*,scalar_t__,int,scalar_t__*) ; 
 scalar_t__ FUNC2 (struct e1000_hw*) ; 
 scalar_t__ FUNC3 (struct e1000_hw*,scalar_t__,int,scalar_t__*) ; 
 scalar_t__ FUNC4 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct e1000_hw*) ; 

s32 FUNC8(struct e1000_hw *hw)
{
	s32 ret_val = E1000_SUCCESS;
	u16 checksum = 0;
	u16 i, nvm_data;

	/* Read the first word from the EEPROM. If this times out or fails, do
	 * not continue or we could be in for a very long wait while every
	 * EEPROM read fails
	 */
	ret_val = FUNC1(hw, 0, 1, &nvm_data);
	if (ret_val != E1000_SUCCESS) {
		FUNC0("EEPROM read failed\n");
		goto out;
	}

	if (hw->nvm.ops.acquire(hw) == E1000_SUCCESS) {
		/* Do not use hw->nvm.ops.write, hw->nvm.ops.read
		 * because we do not want to take the synchronization
		 * semaphores twice here.
		 */

		for (i = 0; i < NVM_CHECKSUM_REG; i++) {
			ret_val = FUNC1(hw, i, 1, &nvm_data);
			if (ret_val) {
				hw->nvm.ops.release(hw);
				FUNC0("NVM Read Error while updating checksum.\n");
				goto out;
			}
			checksum += nvm_data;
		}
		checksum = (u16) NVM_SUM - checksum;
		ret_val = FUNC3(hw, NVM_CHECKSUM_REG, 1,
						&checksum);
		if (ret_val != E1000_SUCCESS) {
			hw->nvm.ops.release(hw);
			FUNC0("NVM Write Error while updating checksum.\n");
			goto out;
		}

		hw->nvm.ops.release(hw);

		ret_val = FUNC2(hw);
	} else {
		ret_val = -E1000_ERR_SWFW_SYNC;
	}
out:
	return ret_val;
}