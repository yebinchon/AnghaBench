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
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_3__ {int /*<<< orphan*/  (* release ) (struct e1000_hw*) ;scalar_t__ (* acquire ) (struct e1000_hw*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct e1000_hw {TYPE_2__ phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int E1000_FEXTNVM6_REQ_PLL_CLK ; 
 int /*<<< orphan*/  E1000_KMRNCTRLSTA_K1_CONFIG ; 
 int E1000_KMRNCTRLSTA_K1_ENABLE ; 
 int E1000_STATUS_SPEED_1000 ; 
 int /*<<< orphan*/  FEXTNVM6 ; 
 int /*<<< orphan*/  STATUS ; 
 scalar_t__ FUNC0 (struct e1000_hw*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC1 (struct e1000_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static s32 FUNC7(struct e1000_hw *hw, bool link)
{
	u32 fextnvm6 = FUNC2(FEXTNVM6);
	s32 ret_val = 0;

	if (link && (FUNC2(STATUS) & E1000_STATUS_SPEED_1000)) {
		u16 kmrn_reg;

		ret_val = hw->phy.ops.acquire(hw);
		if (ret_val)
			return ret_val;

		ret_val =
		    FUNC0(hw, E1000_KMRNCTRLSTA_K1_CONFIG,
						&kmrn_reg);
		if (ret_val)
			goto release;

		ret_val =
		    FUNC1(hw,
						 E1000_KMRNCTRLSTA_K1_CONFIG,
						 kmrn_reg &
						 ~E1000_KMRNCTRLSTA_K1_ENABLE);
		if (ret_val)
			goto release;

		FUNC6(10, 20);

		FUNC3(FEXTNVM6, fextnvm6 | E1000_FEXTNVM6_REQ_PLL_CLK);

		ret_val =
		    FUNC1(hw,
						 E1000_KMRNCTRLSTA_K1_CONFIG,
						 kmrn_reg);
release:
		hw->phy.ops.release(hw);
	} else {
		/* clear FEXTNVM6 bit 8 on link down or 10/100 */
		FUNC3(FEXTNVM6, fextnvm6 & ~E1000_FEXTNVM6_REQ_PLL_CLK);
	}

	return ret_val;
}