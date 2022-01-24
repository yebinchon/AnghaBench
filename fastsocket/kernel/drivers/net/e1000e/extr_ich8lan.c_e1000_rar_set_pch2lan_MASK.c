#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct TYPE_2__ {int rar_entry_count; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int E1000_RAH_AV ; 
 int /*<<< orphan*/  FWSM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int,...) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(struct e1000_hw *hw, u8 *addr, u32 index)
{
	u32 rar_low, rar_high;

	/* HW expects these in little endian so we reverse the byte order
	 * from network order (big endian) to little endian
	 */
	rar_low = ((u32)addr[0] |
		   ((u32)addr[1] << 8) |
		   ((u32)addr[2] << 16) | ((u32)addr[3] << 24));

	rar_high = ((u32)addr[4] | ((u32)addr[5] << 8));

	/* If MAC address zero, no need to set the AV bit */
	if (rar_low || rar_high)
		rar_high |= E1000_RAH_AV;

	if (index == 0) {
		FUNC9(FUNC1(index), rar_low);
		FUNC6();
		FUNC9(FUNC0(index), rar_high);
		FUNC6();
		return;
	}

	if (index < hw->mac.rar_entry_count) {
		s32 ret_val;

		ret_val = FUNC4(hw);
		if (ret_val)
			goto out;

		FUNC9(FUNC3(index - 1), rar_low);
		FUNC6();
		FUNC9(FUNC2(index - 1), rar_high);
		FUNC6();

		FUNC5(hw);

		/* verify the register updates */
		if ((FUNC8(FUNC3(index - 1)) == rar_low) &&
		    (FUNC8(FUNC2(index - 1)) == rar_high))
			return;

		FUNC7("SHRA[%d] might be locked by ME - FWSM=0x%8.8x\n",
		      (index - 1), FUNC8(FWSM));
	}

out:
	FUNC7("Failed to write receive address at index %d\n", index);
}