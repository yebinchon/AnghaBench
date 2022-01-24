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
typedef  int u16 ;
struct link_params {int lane_config; struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MDIO_REG_BANK_XGXS_BLOCK2 ; 
 int /*<<< orphan*/  MDIO_XGXS_BLOCK2_TEST_MODE_LANE ; 
 int PORT_HW_CFG_LANE_SWAP_CFG_MASTER_MASK ; 
 int PORT_HW_CFG_LANE_SWAP_CFG_MASTER_SHIFT ; 

__attribute__((used)) static void FUNC2(struct link_params *params,
				struct bnx2x_phy *phy)
{
	struct bnx2x *bp = params->bp;
	u16 new_master_ln, ser_lane;
	ser_lane = ((params->lane_config &
		     PORT_HW_CFG_LANE_SWAP_CFG_MASTER_MASK) >>
		    PORT_HW_CFG_LANE_SWAP_CFG_MASTER_SHIFT);

	/* Set the master_ln for AN */
	FUNC0(bp, phy,
			  MDIO_REG_BANK_XGXS_BLOCK2,
			  MDIO_XGXS_BLOCK2_TEST_MODE_LANE,
			  &new_master_ln);

	FUNC1(bp, phy,
			  MDIO_REG_BANK_XGXS_BLOCK2 ,
			  MDIO_XGXS_BLOCK2_TEST_MODE_LANE,
			  (new_master_ln | ser_lane));
}