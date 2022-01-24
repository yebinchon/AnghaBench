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
 int /*<<< orphan*/  CTRL ; 
 int E1000_CTRL_FRCDPX ; 
 int E1000_CTRL_FRCSPD ; 
 int E1000_CTRL_SLU ; 
 int E1000_KMRNCTRLSTA_INB_CTRL_DIS_PADDING ; 
 int /*<<< orphan*/  E1000_KMRNCTRLSTA_OFFSET_INB_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (struct e1000_hw*) ; 
 scalar_t__ FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct e1000_hw*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static s32 FUNC7(struct e1000_hw *hw)
{
	u32 ctrl;
	s32 ret_val;
	u16 reg_data;

	ctrl = FUNC5(CTRL);
	ctrl |= E1000_CTRL_SLU;
	ctrl &= ~(E1000_CTRL_FRCSPD | E1000_CTRL_FRCDPX);
	FUNC6(CTRL, ctrl);

	/* Set the mac to wait the maximum time between each
	 * iteration and increase the max iterations when
	 * polling the phy; this fixes erroneous timeouts at 10Mbps.
	 */
	ret_val = FUNC3(hw, FUNC0(0x34, 4),
						   0xFFFF);
	if (ret_val)
		return ret_val;
	ret_val = FUNC2(hw, FUNC0(0x34, 9),
						  &reg_data);
	if (ret_val)
		return ret_val;
	reg_data |= 0x3F;
	ret_val = FUNC3(hw, FUNC0(0x34, 9),
						   reg_data);
	if (ret_val)
		return ret_val;
	ret_val =
	    FUNC2(hw,
					    E1000_KMRNCTRLSTA_OFFSET_INB_CTRL,
					    &reg_data);
	if (ret_val)
		return ret_val;
	reg_data |= E1000_KMRNCTRLSTA_INB_CTRL_DIS_PADDING;
	ret_val =
	    FUNC3(hw,
					     E1000_KMRNCTRLSTA_OFFSET_INB_CTRL,
					     reg_data);
	if (ret_val)
		return ret_val;

	ret_val = FUNC1(hw);
	if (ret_val)
		return ret_val;

	return FUNC4(hw);
}