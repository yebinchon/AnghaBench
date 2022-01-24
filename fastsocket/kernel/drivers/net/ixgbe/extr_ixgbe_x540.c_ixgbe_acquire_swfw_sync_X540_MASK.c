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
typedef  int u16 ;
struct ixgbe_hw {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_ERR_SWFW_SYNC ; 
 scalar_t__ IXGBE_GSSR_EEP_SM ; 
 scalar_t__ IXGBE_GSSR_FLASH_SM ; 
 scalar_t__ FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_SWFW_SYNC ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static s32 FUNC5(struct ixgbe_hw *hw, u16 mask)
{
	u32 swfw_sync;
	u32 swmask = mask;
	u32 fwmask = mask << 5;
	u32 hwmask = 0;
	u32 timeout = 200;
	u32 i;

	if (swmask == IXGBE_GSSR_EEP_SM)
		hwmask = IXGBE_GSSR_FLASH_SM;

	for (i = 0; i < timeout; i++) {
		/*
		 * SW NVM semaphore bit is used for access to all
		 * SW_FW_SYNC bits (not just NVM)
		 */
		if (FUNC2(hw))
			return IXGBE_ERR_SWFW_SYNC;

		swfw_sync = FUNC0(hw, IXGBE_SWFW_SYNC);
		if (!(swfw_sync & (fwmask | swmask | hwmask))) {
			swfw_sync |= swmask;
			FUNC1(hw, IXGBE_SWFW_SYNC, swfw_sync);
			FUNC3(hw);
			break;
		} else {
			/*
			 * Firmware currently using resource (fwmask),
			 * hardware currently using resource (hwmask),
			 * or other software thread currently using
			 * resource (swmask)
			 */
			FUNC3(hw);
			FUNC4(5000, 10000);
		}
	}

	/*
	 * If the resource is not released by the FW/HW the SW can assume that
	 * the FW/HW malfunctions. In that case the SW should sets the
	 * SW bit(s) of the requested resource(s) while ignoring the
	 * corresponding FW/HW bits in the SW_FW_SYNC register.
	 */
	if (i >= timeout) {
		swfw_sync = FUNC0(hw, IXGBE_SWFW_SYNC);
		if (swfw_sync & (fwmask | hwmask)) {
			if (FUNC2(hw))
				return IXGBE_ERR_SWFW_SYNC;

			swfw_sync |= swmask;
			FUNC1(hw, IXGBE_SWFW_SYNC, swfw_sync);
			FUNC3(hw);
		}
	}

	FUNC4(5000, 10000);
	return 0;
}