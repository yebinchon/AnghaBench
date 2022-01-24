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
struct atl1_hw {int /*<<< orphan*/  phy_configured; scalar_t__ hw_addr; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ REG_RX_HASH_TABLE ; 
 int /*<<< orphan*/  FUNC0 (struct atl1_hw*) ; 
 scalar_t__ FUNC1 (struct atl1_hw*) ; 
 scalar_t__ FUNC2 (struct atl1_hw*) ; 
 scalar_t__ FUNC3 (struct atl1_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static s32 FUNC5(struct atl1_hw *hw)
{
	u32 ret_val = 0;

	/* Zero out the Multicast HASH table */
	FUNC4(0, hw->hw_addr + REG_RX_HASH_TABLE);
	/* clear the old settings from the multicast hash table */
	FUNC4(0, (hw->hw_addr + REG_RX_HASH_TABLE) + (1 << 2));

	FUNC0(hw);

	if (!hw->phy_configured) {
		/* enable GPHY LinkChange Interrrupt */
		ret_val = FUNC3(hw, 18, 0xC00);
		if (ret_val)
			return ret_val;
		/* make PHY out of power-saving state */
		ret_val = FUNC1(hw);
		if (ret_val)
			return ret_val;
		/* Call a subroutine to configure the link */
		ret_val = FUNC2(hw);
	}
	return ret_val;
}