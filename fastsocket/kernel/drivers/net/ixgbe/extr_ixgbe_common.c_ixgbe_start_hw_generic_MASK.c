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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int /*<<< orphan*/  (* clear_hw_cntrs ) (struct ixgbe_hw*) ;int /*<<< orphan*/  (* clear_vfta ) (struct ixgbe_hw*) ;int /*<<< orphan*/  (* get_media_type ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {TYPE_1__ ops; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* identify ) (struct ixgbe_hw*) ;} ;
struct TYPE_8__ {TYPE_3__ ops; int /*<<< orphan*/  media_type; } ;
struct ixgbe_hw {int adapter_stopped; TYPE_2__ mac; TYPE_4__ phy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_CTRL_EXT ; 
 int /*<<< orphan*/  IXGBE_CTRL_EXT_NS_DIS ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_hw*) ; 

s32 FUNC8(struct ixgbe_hw *hw)
{
	u32 ctrl_ext;

	/* Set the media type */
	hw->phy.media_type = hw->mac.ops.get_media_type(hw);

	/* Identify the PHY */
	hw->phy.ops.identify(hw);

	/* Clear the VLAN filter table */
	hw->mac.ops.clear_vfta(hw);

	/* Clear statistics registers */
	hw->mac.ops.clear_hw_cntrs(hw);

	/* Set No Snoop Disable */
	ctrl_ext = FUNC0(hw, IXGBE_CTRL_EXT);
	ctrl_ext |= IXGBE_CTRL_EXT_NS_DIS;
	FUNC2(hw, IXGBE_CTRL_EXT, ctrl_ext);
	FUNC1(hw);

	/* Setup flow control */
	FUNC3(hw);

	/* Clear adapter stopped flag */
	hw->adapter_stopped = false;

	return 0;
}