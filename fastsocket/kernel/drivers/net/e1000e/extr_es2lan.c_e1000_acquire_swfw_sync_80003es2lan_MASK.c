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
struct e1000_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ E1000_ERR_SWFW_SYNC ; 
 int /*<<< orphan*/  SW_FW_SYNC ; 
 scalar_t__ FUNC0 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static s32 FUNC6(struct e1000_hw *hw, u16 mask)
{
	u32 swfw_sync;
	u32 swmask = mask;
	u32 fwmask = mask << 16;
	s32 i = 0;
	s32 timeout = 50;

	while (i < timeout) {
		if (FUNC0(hw))
			return -E1000_ERR_SWFW_SYNC;

		swfw_sync = FUNC3(SW_FW_SYNC);
		if (!(swfw_sync & (fwmask | swmask)))
			break;

		/* Firmware currently using resource (fwmask)
		 * or other software thread using resource (swmask)
		 */
		FUNC1(hw);
		FUNC5(5);
		i++;
	}

	if (i == timeout) {
		FUNC2("Driver can't access resource, SW_FW_SYNC timeout.\n");
		return -E1000_ERR_SWFW_SYNC;
	}

	swfw_sync |= swmask;
	FUNC4(SW_FW_SYNC, swfw_sync);

	FUNC1(hw);

	return 0;
}