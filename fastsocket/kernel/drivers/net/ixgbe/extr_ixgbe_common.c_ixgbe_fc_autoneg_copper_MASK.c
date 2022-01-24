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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_3__ {int /*<<< orphan*/  (* read_reg ) (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_TAF_ASM_PAUSE ; 
 int /*<<< orphan*/  IXGBE_TAF_SYM_PAUSE ; 
 int /*<<< orphan*/  MDIO_AN_ADVERTISE ; 
 int /*<<< orphan*/  MDIO_AN_LPA ; 
 int /*<<< orphan*/  MDIO_MMD_AN ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static s32 FUNC3(struct ixgbe_hw *hw)
{
	u16 technology_ability_reg = 0;
	u16 lp_technology_ability_reg = 0;

	hw->phy.ops.read_reg(hw, MDIO_AN_ADVERTISE,
			     MDIO_MMD_AN,
			     &technology_ability_reg);
	hw->phy.ops.read_reg(hw, MDIO_AN_LPA,
			     MDIO_MMD_AN,
			     &lp_technology_ability_reg);

	return FUNC0(hw, (u32)technology_ability_reg,
				  (u32)lp_technology_ability_reg,
				  IXGBE_TAF_SYM_PAUSE, IXGBE_TAF_ASM_PAUSE,
				  IXGBE_TAF_SYM_PAUSE, IXGBE_TAF_ASM_PAUSE);
}