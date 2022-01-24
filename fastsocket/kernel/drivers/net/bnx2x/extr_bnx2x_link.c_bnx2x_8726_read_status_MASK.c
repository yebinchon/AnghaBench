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
struct link_vars {scalar_t__ line_speed; } ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_PMA_REG_PHY_IDENTIFIER ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 scalar_t__ FUNC1 (struct bnx2x_phy*,struct link_params*,struct link_vars*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static u8 FUNC3(struct bnx2x_phy *phy,
				 struct link_params *params,
				 struct link_vars *vars)
{
	struct bnx2x *bp = params->bp;
	u16 val1;
	u8 link_up = FUNC1(phy, params, vars);
	if (link_up) {
		FUNC2(bp, phy,
				MDIO_PMA_DEVAD, MDIO_PMA_REG_PHY_IDENTIFIER,
				&val1);
		if (val1 & (1<<15)) {
			FUNC0(NETIF_MSG_LINK, "Tx is disabled\n");
			link_up = 0;
			vars->line_speed = 0;
		}
	}
	return link_up;
}