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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  MDIO_CL73_IEEEB0_CL73_AN_CONTROL ; 
 int MDIO_CL73_IEEEB0_CL73_AN_CONTROL_AN_EN ; 
 int MDIO_CL73_IEEEB0_CL73_AN_CONTROL_RESTART_AN ; 
 int /*<<< orphan*/  MDIO_COMBO_IEEE0_MII_CONTROL ; 
 int MDIO_COMBO_IEEO_MII_CONTROL_AN_EN ; 
 int MDIO_COMBO_IEEO_MII_CONTROL_RESTART_AN ; 
 int /*<<< orphan*/  MDIO_REG_BANK_CL73_IEEEB0 ; 
 int /*<<< orphan*/  MDIO_REG_BANK_COMBO_IEEE0 ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 

__attribute__((used)) static void FUNC3(struct bnx2x_phy *phy,
				  struct link_params *params,
				  u8 enable_cl73)
{
	struct bnx2x *bp = params->bp;
	u16 mii_control;

	FUNC2(NETIF_MSG_LINK, "bnx2x_restart_autoneg\n");
	/* Enable and restart BAM/CL37 aneg */

	if (enable_cl73) {
		FUNC0(bp, phy,
				  MDIO_REG_BANK_CL73_IEEEB0,
				  MDIO_CL73_IEEEB0_CL73_AN_CONTROL,
				  &mii_control);

		FUNC1(bp, phy,
				  MDIO_REG_BANK_CL73_IEEEB0,
				  MDIO_CL73_IEEEB0_CL73_AN_CONTROL,
				  (mii_control |
				  MDIO_CL73_IEEEB0_CL73_AN_CONTROL_AN_EN |
				  MDIO_CL73_IEEEB0_CL73_AN_CONTROL_RESTART_AN));
	} else {

		FUNC0(bp, phy,
				  MDIO_REG_BANK_COMBO_IEEE0,
				  MDIO_COMBO_IEEE0_MII_CONTROL,
				  &mii_control);
		FUNC2(NETIF_MSG_LINK,
			 "bnx2x_restart_autoneg mii_control before = 0x%x\n",
			 mii_control);
		FUNC1(bp, phy,
				  MDIO_REG_BANK_COMBO_IEEE0,
				  MDIO_COMBO_IEEE0_MII_CONTROL,
				  (mii_control |
				   MDIO_COMBO_IEEO_MII_CONTROL_AN_EN |
				   MDIO_COMBO_IEEO_MII_CONTROL_RESTART_AN));
	}
}