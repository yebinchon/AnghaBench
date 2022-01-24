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
typedef  int /*<<< orphan*/  u16 ;
struct e1000_hw {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  BMCR_RESET ; 
 int /*<<< orphan*/  MII_BMCR ; 
 scalar_t__ FUNC0 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

s32 FUNC3(struct e1000_hw *hw)
{
	s32 ret_val;
	u16 phy_ctrl;

	ret_val = FUNC0(hw, MII_BMCR, &phy_ctrl);
	if (ret_val)
		return ret_val;

	phy_ctrl |= BMCR_RESET;
	ret_val = FUNC1(hw, MII_BMCR, phy_ctrl);
	if (ret_val)
		return ret_val;

	FUNC2(1);

	return ret_val;
}