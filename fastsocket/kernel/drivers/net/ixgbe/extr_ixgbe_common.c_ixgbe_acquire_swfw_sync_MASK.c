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
 int /*<<< orphan*/  IXGBE_GSSR ; 
 scalar_t__ FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

s32 FUNC6(struct ixgbe_hw *hw, u16 mask)
{
	u32 gssr = 0;
	u32 swmask = mask;
	u32 fwmask = mask << 5;
	u32 timeout = 200;
	u32 i;

	for (i = 0; i < timeout; i++) {
		/*
		 * SW NVM semaphore bit is used for access to all
		 * SW_FW_SYNC bits (not just NVM)
		 */
		if (FUNC2(hw))
			return IXGBE_ERR_SWFW_SYNC;

		gssr = FUNC0(hw, IXGBE_GSSR);
		if (!(gssr & (fwmask | swmask))) {
			gssr |= swmask;
			FUNC1(hw, IXGBE_GSSR, gssr);
			FUNC3(hw);
			return 0;
		} else {
			/* Resource is currently in use by FW or SW */
			FUNC3(hw);
			FUNC5(5000, 10000);
		}
	}

	/* If time expired clear the bits holding the lock and retry */
	if (gssr & (fwmask | swmask))
		FUNC4(hw, gssr & (fwmask | swmask));

	FUNC5(5000, 10000);
	return IXGBE_ERR_SWFW_SYNC;
}