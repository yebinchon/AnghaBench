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
 int BM_PORT_CTRL_PAGE ; 
 int /*<<< orphan*/  BM_WUC_ENABLE_REG ; 
 int IGP_PAGE_SHIFT ; 
 scalar_t__ FUNC0 (struct e1000_hw*,int) ; 
 scalar_t__ FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

s32 FUNC3(struct e1000_hw *hw, u16 *phy_reg)
{
	s32 ret_val;

	/* Select Port Control Registers page */
	ret_val = FUNC0(hw, (BM_PORT_CTRL_PAGE << IGP_PAGE_SHIFT));
	if (ret_val) {
		FUNC2("Could not set Port Control page\n");
		return ret_val;
	}

	/* Restore 769.17 to its original value */
	ret_val = FUNC1(hw, BM_WUC_ENABLE_REG, *phy_reg);
	if (ret_val)
		FUNC2("Could not restore PHY register %d.%d\n",
		      BM_PORT_CTRL_PAGE, BM_WUC_ENABLE_REG);

	return ret_val;
}