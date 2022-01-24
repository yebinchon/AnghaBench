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
struct bnx2x_phy {int req_line_speed; scalar_t__ req_duplex; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ DUPLEX_FULL ; 
 int /*<<< orphan*/  MDIO_WC_DEVAD ; 
 int /*<<< orphan*/  MDIO_WC_REG_COMBO_IEEE0_MIICTRL ; 
 int /*<<< orphan*/  MDIO_WC_REG_RX66_CONTROL ; 
 int /*<<< orphan*/  MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X1 ; 
 int /*<<< orphan*/  MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X2 ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
#define  SPEED_10 130 
#define  SPEED_100 129 
#define  SPEED_1000 128 
 int SPEED_AUTO_NEG ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x_phy*,struct link_params*) ; 

__attribute__((used)) static void FUNC6(struct bnx2x_phy *phy,
					   struct link_params *params,
					   u8 fiber_mode,
					   u8 always_autoneg)
{
	struct bnx2x *bp = params->bp;
	u16 val16, digctrl_kx1, digctrl_kx2;

	/* Clear XFI clock comp in non-10G single lane mode. */
	FUNC2(bp, phy, MDIO_WC_DEVAD,
				  MDIO_WC_REG_RX66_CONTROL, ~(3<<13));

	FUNC5(phy, params);

	if (always_autoneg || phy->req_line_speed == SPEED_AUTO_NEG) {
		/* SGMII Autoneg */
		FUNC3(bp, phy, MDIO_WC_DEVAD,
					 MDIO_WC_REG_COMBO_IEEE0_MIICTRL,
					 0x1000);
		FUNC0(NETIF_MSG_LINK, "set SGMII AUTONEG\n");
	} else {
		FUNC1(bp, phy, MDIO_WC_DEVAD,
				MDIO_WC_REG_COMBO_IEEE0_MIICTRL, &val16);
		val16 &= 0xcebf;
		switch (phy->req_line_speed) {
		case SPEED_10:
			break;
		case SPEED_100:
			val16 |= 0x2000;
			break;
		case SPEED_1000:
			val16 |= 0x0040;
			break;
		default:
			FUNC0(NETIF_MSG_LINK,
			   "Speed not supported: 0x%x\n", phy->req_line_speed);
			return;
		}

		if (phy->req_duplex == DUPLEX_FULL)
			val16 |= 0x0100;

		FUNC4(bp, phy, MDIO_WC_DEVAD,
				MDIO_WC_REG_COMBO_IEEE0_MIICTRL, val16);

		FUNC0(NETIF_MSG_LINK, "set SGMII force speed %d\n",
			       phy->req_line_speed);
		FUNC1(bp, phy, MDIO_WC_DEVAD,
				MDIO_WC_REG_COMBO_IEEE0_MIICTRL, &val16);
		FUNC0(NETIF_MSG_LINK, "  (readback) %x\n", val16);
	}

	/* SGMII Slave mode and disable signal detect */
	FUNC1(bp, phy, MDIO_WC_DEVAD,
			MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X1, &digctrl_kx1);
	if (fiber_mode)
		digctrl_kx1 = 1;
	else
		digctrl_kx1 &= 0xff4a;

	FUNC4(bp, phy, MDIO_WC_DEVAD,
			MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X1,
			digctrl_kx1);

	/* Turn off parallel detect */
	FUNC1(bp, phy, MDIO_WC_DEVAD,
			MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X2, &digctrl_kx2);
	FUNC4(bp, phy, MDIO_WC_DEVAD,
			MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X2,
			(digctrl_kx2 & ~(1<<2)));

	/* Re-enable parallel detect */
	FUNC4(bp, phy, MDIO_WC_DEVAD,
			MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X2,
			(digctrl_kx2 | (1<<2)));

	/* Enable autodet */
	FUNC4(bp, phy, MDIO_WC_DEVAD,
			MDIO_WC_REG_SERDESDIGITAL_CONTROL1000X1,
			(digctrl_kx1 | 0x10));
}