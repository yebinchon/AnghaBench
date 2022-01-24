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
struct link_vars {int /*<<< orphan*/  link_status; int /*<<< orphan*/  duplex; int /*<<< orphan*/  line_speed; } ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int /*<<< orphan*/  LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE ; 
 int /*<<< orphan*/  MDIO_AN_DEVAD ; 
 int /*<<< orphan*/  MDIO_AN_REG_MASTER_STATUS ; 
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_PMA_LASI_STAT ; 
 int /*<<< orphan*/  MDIO_PMA_REG_STATUS ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int /*<<< orphan*/  SPEED_10000 ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_phy*,struct link_vars*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x_phy*,struct link_params*,struct link_vars*) ; 

__attribute__((used)) static u8 FUNC4(struct bnx2x_phy *phy,
				 struct link_params *params,
				 struct link_vars *vars)
{
	struct bnx2x *bp = params->bp;
	u8 link_up;
	u16 val1, val2;
	FUNC1(bp, phy,
			MDIO_PMA_DEVAD, MDIO_PMA_LASI_STAT, &val2);
	FUNC1(bp, phy,
			MDIO_PMA_DEVAD, MDIO_PMA_LASI_STAT, &val1);
	FUNC0(NETIF_MSG_LINK, "10G-base-T LASI status 0x%x->0x%x\n",
		   val2, val1);
	FUNC1(bp, phy,
			MDIO_PMA_DEVAD, MDIO_PMA_REG_STATUS, &val2);
	FUNC1(bp, phy,
			MDIO_PMA_DEVAD, MDIO_PMA_REG_STATUS, &val1);
	FUNC0(NETIF_MSG_LINK, "10G-base-T PMA status 0x%x->0x%x\n",
		   val2, val1);
	link_up = ((val1 & 4) == 4);
	/* If link is up print the AN outcome of the SFX7101 PHY */
	if (link_up) {
		FUNC1(bp, phy,
				MDIO_AN_DEVAD, MDIO_AN_REG_MASTER_STATUS,
				&val2);
		vars->line_speed = SPEED_10000;
		vars->duplex = DUPLEX_FULL;
		FUNC0(NETIF_MSG_LINK, "SFX7101 AN status 0x%x->Master=%x\n",
			   val2, (val2 & (1<<14)));
		FUNC2(bp, phy, vars);
		FUNC3(phy, params, vars);

		/* Read LP advertised speeds */
		if (val2 & (1<<11))
			vars->link_status |=
				LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE;
	}
	return link_up;
}