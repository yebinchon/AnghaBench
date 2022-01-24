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
struct link_vars {int dummy; } ;
struct link_params {int feature_config_flags; struct bnx2x* bp; } ;
struct bnx2x_phy {scalar_t__ req_line_speed; int speed_cap_mask; int* tx_preemphasis; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FEATURE_CONFIG_OVERRIDE_PREEMPHASIS_ENABLED ; 
 int /*<<< orphan*/  MDIO_AN_DEVAD ; 
 int /*<<< orphan*/  MDIO_AN_REG_ADV ; 
 int /*<<< orphan*/  MDIO_AN_REG_CL37_AN ; 
 int /*<<< orphan*/  MDIO_AN_REG_CL37_CL73 ; 
 int /*<<< orphan*/  MDIO_AN_REG_CL37_FC_LD ; 
 int /*<<< orphan*/  MDIO_AN_REG_CTRL ; 
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_PMA_LASI_CTRL ; 
 int /*<<< orphan*/  MDIO_PMA_LASI_RXCTRL ; 
 int /*<<< orphan*/  MDIO_PMA_REG_10G_CTRL2 ; 
 int /*<<< orphan*/  MDIO_PMA_REG_8726_TX_CTRL1 ; 
 int /*<<< orphan*/  MDIO_PMA_REG_8726_TX_CTRL2 ; 
 int /*<<< orphan*/  MDIO_PMA_REG_CTRL ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_10G ; 
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_1G ; 
 scalar_t__ SPEED_1000 ; 
 scalar_t__ SPEED_AUTO_NEG ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x_phy*,struct link_params*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct link_params*,struct bnx2x_phy*,struct link_vars*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x_phy*,struct link_params*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,struct bnx2x_phy*,struct link_params*) ; 

__attribute__((used)) static int FUNC6(struct bnx2x_phy *phy,
				  struct link_params *params,
				  struct link_vars *vars)
{
	struct bnx2x *bp = params->bp;
	FUNC0(NETIF_MSG_LINK, "Initializing BCM8726\n");

	FUNC2(bp, phy, MDIO_PMA_DEVAD, MDIO_PMA_REG_CTRL, 1<<15);
	FUNC5(bp, phy, params);

	FUNC1(phy, params);

	/* Need to call module detected on initialization since the module
	 * detection triggered by actual module insertion might occur before
	 * driver is loaded, and when driver is loaded, it reset all
	 * registers, including the transmitter
	 */
	FUNC4(phy, params);

	if (phy->req_line_speed == SPEED_1000) {
		FUNC0(NETIF_MSG_LINK, "Setting 1G force\n");
		FUNC2(bp, phy,
				 MDIO_PMA_DEVAD, MDIO_PMA_REG_CTRL, 0x40);
		FUNC2(bp, phy,
				 MDIO_PMA_DEVAD, MDIO_PMA_REG_10G_CTRL2, 0xD);
		FUNC2(bp, phy,
				 MDIO_PMA_DEVAD, MDIO_PMA_LASI_CTRL, 0x5);
		FUNC2(bp, phy,
				 MDIO_PMA_DEVAD, MDIO_PMA_LASI_RXCTRL,
				 0x400);
	} else if ((phy->req_line_speed == SPEED_AUTO_NEG) &&
		   (phy->speed_cap_mask &
		      PORT_HW_CFG_SPEED_CAPABILITY_D0_1G) &&
		   ((phy->speed_cap_mask &
		      PORT_HW_CFG_SPEED_CAPABILITY_D0_10G) !=
		    PORT_HW_CFG_SPEED_CAPABILITY_D0_10G)) {
		FUNC0(NETIF_MSG_LINK, "Setting 1G clause37\n");
		/* Set Flow control */
		FUNC3(params, phy, vars);
		FUNC2(bp, phy,
				 MDIO_AN_DEVAD, MDIO_AN_REG_ADV, 0x20);
		FUNC2(bp, phy,
				 MDIO_AN_DEVAD, MDIO_AN_REG_CL37_CL73, 0x040c);
		FUNC2(bp, phy,
				 MDIO_AN_DEVAD, MDIO_AN_REG_CL37_FC_LD, 0x0020);
		FUNC2(bp, phy,
				 MDIO_AN_DEVAD, MDIO_AN_REG_CL37_AN, 0x1000);
		FUNC2(bp, phy,
				MDIO_AN_DEVAD, MDIO_AN_REG_CTRL, 0x1200);
		/* Enable RX-ALARM control to receive interrupt for 1G speed
		 * change
		 */
		FUNC2(bp, phy,
				 MDIO_PMA_DEVAD, MDIO_PMA_LASI_CTRL, 0x4);
		FUNC2(bp, phy,
				 MDIO_PMA_DEVAD, MDIO_PMA_LASI_RXCTRL,
				 0x400);

	} else { /* Default 10G. Set only LASI control */
		FUNC2(bp, phy,
				 MDIO_PMA_DEVAD, MDIO_PMA_LASI_CTRL, 1);
	}

	/* Set TX PreEmphasis if needed */
	if ((params->feature_config_flags &
	     FEATURE_CONFIG_OVERRIDE_PREEMPHASIS_ENABLED)) {
		FUNC0(NETIF_MSG_LINK,
		   "Setting TX_CTRL1 0x%x, TX_CTRL2 0x%x\n",
			 phy->tx_preemphasis[0],
			 phy->tx_preemphasis[1]);
		FUNC2(bp, phy,
				 MDIO_PMA_DEVAD,
				 MDIO_PMA_REG_8726_TX_CTRL1,
				 phy->tx_preemphasis[0]);

		FUNC2(bp, phy,
				 MDIO_PMA_DEVAD,
				 MDIO_PMA_REG_8726_TX_CTRL2,
				 phy->tx_preemphasis[1]);
	}

	return 0;

}