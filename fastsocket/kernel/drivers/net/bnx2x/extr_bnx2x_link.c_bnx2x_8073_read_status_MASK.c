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
typedef  int u8 ;
typedef  int u16 ;
struct link_vars {scalar_t__ line_speed; int link_status; int /*<<< orphan*/  duplex; } ;
struct link_params {int lane_config; int /*<<< orphan*/  port; struct bnx2x* bp; } ;
struct bnx2x_phy {scalar_t__ req_line_speed; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int LINK_STATUS_AUTO_NEGOTIATE_COMPLETE ; 
 int LINK_STATUS_LINK_PARTNER_1000TFD_CAPABLE ; 
 int LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE ; 
 int /*<<< orphan*/  MDIO_AN_DEVAD ; 
 int /*<<< orphan*/  MDIO_AN_REG_LINK_STATUS ; 
 int /*<<< orphan*/  MDIO_AN_REG_LP_AUTO_NEG2 ; 
 int /*<<< orphan*/  MDIO_PCS_DEVAD ; 
 int /*<<< orphan*/  MDIO_PCS_REG_STATUS ; 
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_PMA_LASI_RXSTAT ; 
 int /*<<< orphan*/  MDIO_PMA_LASI_STAT ; 
 int /*<<< orphan*/  MDIO_PMA_REG_8073_SPEED_LINK_STATUS ; 
 int /*<<< orphan*/  MDIO_PMA_REG_CDR_BANDWIDTH ; 
 int /*<<< orphan*/  MDIO_PMA_REG_M8051_MSGOUT_REG ; 
 int /*<<< orphan*/  MDIO_PMA_REG_PLL_BANDWIDTH ; 
 int /*<<< orphan*/  MDIO_PMA_REG_STATUS ; 
 int /*<<< orphan*/  MDIO_XS_DEVAD ; 
 int /*<<< orphan*/  MDIO_XS_REG_8073_RX_CTRL_PCIE ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int PORT_HW_CFG_SWAP_PHY_POLARITY_ENABLED ; 
 scalar_t__ SPEED_1000 ; 
 scalar_t__ SPEED_10000 ; 
 scalar_t__ SPEED_2500 ; 
 scalar_t__ FUNC1 (struct bnx2x*,struct bnx2x_phy*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x_phy*,struct link_params*,struct link_vars*) ; 
 scalar_t__ FUNC3 (struct bnx2x*,struct bnx2x_phy*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,struct bnx2x_phy*,struct link_vars*) ; 

__attribute__((used)) static u8 FUNC7(struct bnx2x_phy *phy,
				 struct link_params *params,
				 struct link_vars *vars)
{
	struct bnx2x *bp = params->bp;
	u8 link_up = 0;
	u16 val1, val2;
	u16 link_status = 0;
	u16 an1000_status = 0;

	FUNC4(bp, phy,
			MDIO_PMA_DEVAD, MDIO_PMA_LASI_STAT, &val1);

	FUNC0(NETIF_MSG_LINK, "8703 LASI status 0x%x\n", val1);

	/* Clear the interrupt LASI status register */
	FUNC4(bp, phy,
			MDIO_PCS_DEVAD, MDIO_PCS_REG_STATUS, &val2);
	FUNC4(bp, phy,
			MDIO_PCS_DEVAD, MDIO_PCS_REG_STATUS, &val1);
	FUNC0(NETIF_MSG_LINK, "807x PCS status 0x%x->0x%x\n", val2, val1);
	/* Clear MSG-OUT */
	FUNC4(bp, phy,
			MDIO_PMA_DEVAD, MDIO_PMA_REG_M8051_MSGOUT_REG, &val1);

	/* Check the LASI */
	FUNC4(bp, phy,
			MDIO_PMA_DEVAD, MDIO_PMA_LASI_RXSTAT, &val2);

	FUNC0(NETIF_MSG_LINK, "KR 0x9003 0x%x\n", val2);

	/* Check the link status */
	FUNC4(bp, phy,
			MDIO_PCS_DEVAD, MDIO_PCS_REG_STATUS, &val2);
	FUNC0(NETIF_MSG_LINK, "KR PCS status 0x%x\n", val2);

	FUNC4(bp, phy,
			MDIO_PMA_DEVAD, MDIO_PMA_REG_STATUS, &val2);
	FUNC4(bp, phy,
			MDIO_PMA_DEVAD, MDIO_PMA_REG_STATUS, &val1);
	link_up = ((val1 & 4) == 4);
	FUNC0(NETIF_MSG_LINK, "PMA_REG_STATUS=0x%x\n", val1);

	if (link_up &&
	     ((phy->req_line_speed != SPEED_10000))) {
		if (FUNC3(bp, phy) != 0)
			return 0;
	}
	FUNC4(bp, phy,
			MDIO_AN_DEVAD, MDIO_AN_REG_LINK_STATUS, &an1000_status);
	FUNC4(bp, phy,
			MDIO_AN_DEVAD, MDIO_AN_REG_LINK_STATUS, &an1000_status);

	/* Check the link status on 1.1.2 */
	FUNC4(bp, phy,
			MDIO_PMA_DEVAD, MDIO_PMA_REG_STATUS, &val2);
	FUNC4(bp, phy,
			MDIO_PMA_DEVAD, MDIO_PMA_REG_STATUS, &val1);
	FUNC0(NETIF_MSG_LINK, "KR PMA status 0x%x->0x%x,"
		   "an_link_status=0x%x\n", val2, val1, an1000_status);

	link_up = (((val1 & 4) == 4) || (an1000_status & (1<<1)));
	if (link_up && FUNC1(bp, phy)) {
		/* The SNR will improve about 2dbby changing the BW and FEE main
		 * tap. The 1st write to change FFE main tap is set before
		 * restart AN. Change PLL Bandwidth in EDC register
		 */
		FUNC5(bp, phy,
				 MDIO_PMA_DEVAD, MDIO_PMA_REG_PLL_BANDWIDTH,
				 0x26BC);

		/* Change CDR Bandwidth in EDC register */
		FUNC5(bp, phy,
				 MDIO_PMA_DEVAD, MDIO_PMA_REG_CDR_BANDWIDTH,
				 0x0333);
	}
	FUNC4(bp, phy,
			MDIO_PMA_DEVAD, MDIO_PMA_REG_8073_SPEED_LINK_STATUS,
			&link_status);

	/* Bits 0..2 --> speed detected, bits 13..15--> link is down */
	if ((link_status & (1<<2)) && (!(link_status & (1<<15)))) {
		link_up = 1;
		vars->line_speed = SPEED_10000;
		FUNC0(NETIF_MSG_LINK, "port %x: External link up in 10G\n",
			   params->port);
	} else if ((link_status & (1<<1)) && (!(link_status & (1<<14)))) {
		link_up = 1;
		vars->line_speed = SPEED_2500;
		FUNC0(NETIF_MSG_LINK, "port %x: External link up in 2.5G\n",
			   params->port);
	} else if ((link_status & (1<<0)) && (!(link_status & (1<<13)))) {
		link_up = 1;
		vars->line_speed = SPEED_1000;
		FUNC0(NETIF_MSG_LINK, "port %x: External link up in 1G\n",
			   params->port);
	} else {
		link_up = 0;
		FUNC0(NETIF_MSG_LINK, "port %x: External link is down\n",
			   params->port);
	}

	if (link_up) {
		/* Swap polarity if required */
		if (params->lane_config &
		    PORT_HW_CFG_SWAP_PHY_POLARITY_ENABLED) {
			/* Configure the 8073 to swap P and N of the KR lines */
			FUNC4(bp, phy,
					MDIO_XS_DEVAD,
					MDIO_XS_REG_8073_RX_CTRL_PCIE, &val1);
			/* Set bit 3 to invert Rx in 1G mode and clear this bit
			 * when it`s in 10G mode.
			 */
			if (vars->line_speed == SPEED_1000) {
				FUNC0(NETIF_MSG_LINK, "Swapping 1G polarity for"
					      "the 8073\n");
				val1 |= (1<<3);
			} else
				val1 &= ~(1<<3);

			FUNC5(bp, phy,
					 MDIO_XS_DEVAD,
					 MDIO_XS_REG_8073_RX_CTRL_PCIE,
					 val1);
		}
		FUNC6(bp, phy, vars);
		FUNC2(phy, params, vars);
		vars->duplex = DUPLEX_FULL;
	}

	if (vars->link_status & LINK_STATUS_AUTO_NEGOTIATE_COMPLETE) {
		FUNC4(bp, phy, MDIO_AN_DEVAD,
				MDIO_AN_REG_LP_AUTO_NEG2, &val1);

		if (val1 & (1<<5))
			vars->link_status |=
				LINK_STATUS_LINK_PARTNER_1000TFD_CAPABLE;
		if (val1 & (1<<7))
			vars->link_status |=
				LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE;
	}

	return link_up;
}