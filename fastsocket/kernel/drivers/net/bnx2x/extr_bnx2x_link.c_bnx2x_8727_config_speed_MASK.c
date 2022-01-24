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
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {scalar_t__ req_line_speed; scalar_t__ media_type; int speed_cap_mask; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (struct link_params*) ; 
 scalar_t__ ETH_PHY_SFP_1G_FIBER ; 
 int /*<<< orphan*/  MDIO_AN_DEVAD ; 
 int /*<<< orphan*/  MDIO_AN_REG_8727_MISC_CTRL ; 
 int /*<<< orphan*/  MDIO_AN_REG_CL37_AN ; 
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_PMA_REG_10G_CTRL2 ; 
 int /*<<< orphan*/  MDIO_PMA_REG_8727_PCS_GP ; 
 int /*<<< orphan*/  MDIO_PMA_REG_CTRL ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_10G ; 
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_1G ; 
 scalar_t__ SPEED_1000 ; 
 scalar_t__ SPEED_AUTO_NEG ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct bnx2x_phy *phy,
				    struct link_params *params)
{
	struct bnx2x *bp = params->bp;
	u16 tmp1, val;
	/* Set option 1G speed */
	if ((phy->req_line_speed == SPEED_1000) ||
	    (phy->media_type == ETH_PHY_SFP_1G_FIBER)) {
		FUNC0(NETIF_MSG_LINK, "Setting 1G force\n");
		FUNC3(bp, phy,
				 MDIO_PMA_DEVAD, MDIO_PMA_REG_CTRL, 0x40);
		FUNC3(bp, phy,
				 MDIO_PMA_DEVAD, MDIO_PMA_REG_10G_CTRL2, 0xD);
		FUNC2(bp, phy,
				MDIO_PMA_DEVAD, MDIO_PMA_REG_10G_CTRL2, &tmp1);
		FUNC0(NETIF_MSG_LINK, "1.7 = 0x%x\n", tmp1);
		/* Power down the XAUI until link is up in case of dual-media
		 * and 1G
		 */
		if (FUNC1(params)) {
			FUNC2(bp, phy,
					MDIO_PMA_DEVAD,
					MDIO_PMA_REG_8727_PCS_GP, &val);
			val |= (3<<10);
			FUNC3(bp, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8727_PCS_GP, val);
		}
	} else if ((phy->req_line_speed == SPEED_AUTO_NEG) &&
		   ((phy->speed_cap_mask &
		     PORT_HW_CFG_SPEED_CAPABILITY_D0_1G)) &&
		   ((phy->speed_cap_mask &
		      PORT_HW_CFG_SPEED_CAPABILITY_D0_10G) !=
		   PORT_HW_CFG_SPEED_CAPABILITY_D0_10G)) {

		FUNC0(NETIF_MSG_LINK, "Setting 1G clause37\n");
		FUNC3(bp, phy,
				 MDIO_AN_DEVAD, MDIO_AN_REG_8727_MISC_CTRL, 0);
		FUNC3(bp, phy,
				 MDIO_AN_DEVAD, MDIO_AN_REG_CL37_AN, 0x1300);
	} else {
		/* Since the 8727 has only single reset pin, need to set the 10G
		 * registers although it is default
		 */
		FUNC3(bp, phy,
				 MDIO_AN_DEVAD, MDIO_AN_REG_8727_MISC_CTRL,
				 0x0020);
		FUNC3(bp, phy,
				 MDIO_AN_DEVAD, MDIO_AN_REG_CL37_AN, 0x0100);
		FUNC3(bp, phy,
				 MDIO_PMA_DEVAD, MDIO_PMA_REG_CTRL, 0x2040);
		FUNC3(bp, phy,
				 MDIO_PMA_DEVAD, MDIO_PMA_REG_10G_CTRL2,
				 0x0008);
	}
}