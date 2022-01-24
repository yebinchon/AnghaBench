#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  (* config_collision_dist ) (struct e1000_hw*) ;} ;
struct TYPE_6__ {TYPE_1__ ops; scalar_t__ autoneg; } ;
struct TYPE_7__ {scalar_t__ (* force_speed_duplex ) (struct e1000_hw*) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct e1000_hw {TYPE_2__ mac; TYPE_4__ phy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  COPPER_LINK_UP_LIMIT ; 
 scalar_t__ FUNC0 (struct e1000_hw*) ; 
 scalar_t__ FUNC1 (struct e1000_hw*) ; 
 scalar_t__ FUNC2 (struct e1000_hw*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_hw*) ; 

s32 FUNC6(struct e1000_hw *hw)
{
	s32 ret_val;
	bool link;

	if (hw->mac.autoneg) {
		/* Setup autoneg and flow control advertisement and perform
		 * autonegotiation.
		 */
		ret_val = FUNC0(hw);
		if (ret_val)
			return ret_val;
	} else {
		/* PHY will be set to 10H, 10F, 100H or 100F
		 * depending on user settings.
		 */
		FUNC3("Forcing Speed and Duplex\n");
		ret_val = hw->phy.ops.force_speed_duplex(hw);
		if (ret_val) {
			FUNC3("Error Forcing Speed and Duplex\n");
			return ret_val;
		}
	}

	/* Check link status. Wait up to 100 microseconds for link to become
	 * valid.
	 */
	ret_val = FUNC2(hw, COPPER_LINK_UP_LIMIT, 10,
					      &link);
	if (ret_val)
		return ret_val;

	if (link) {
		FUNC3("Valid link established!!!\n");
		hw->mac.ops.config_collision_dist(hw);
		ret_val = FUNC1(hw);
	} else {
		FUNC3("Unable to establish link!!!\n");
	}

	return ret_val;
}