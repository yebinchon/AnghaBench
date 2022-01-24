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
struct link_vars {int phy_flags; scalar_t__ line_speed; int /*<<< orphan*/  ieee_fc; } ;
struct link_params {scalar_t__ loopback_mode; int feature_config_flags; struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FEATURE_CONFIG_OVERRIDE_PREEMPHASIS_ENABLED ; 
 scalar_t__ LOOPBACK_EXT ; 
 scalar_t__ LOOPBACK_XGXS ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int PHY_SGMII_FLAG ; 
 scalar_t__ FUNC1 (struct link_params*) ; 
 scalar_t__ SPEED_AUTO_NEG ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x_phy*,struct link_params*,struct link_vars*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x_phy*,struct link_params*,struct link_vars*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x_phy*,struct link_params*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x_phy*,struct link_params*,struct link_vars*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x_phy*,struct link_params*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x_phy*,struct link_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x_phy*,struct link_params*) ; 

__attribute__((used)) static void FUNC9(struct bnx2x_phy *phy,
				   struct link_params *params,
				   struct link_vars *vars)
{
	struct bnx2x *bp = params->bp;
	u8 enable_cl73 = (FUNC1(params) ||
			  (params->loopback_mode == LOOPBACK_XGXS));
	if (!(vars->phy_flags & PHY_SGMII_FLAG)) {
		if (FUNC1(params) &&
		    (params->feature_config_flags &
		     FEATURE_CONFIG_OVERRIDE_PREEMPHASIS_ENABLED))
			FUNC8(phy, params);

		/* Forced speed requested? */
		if (vars->line_speed != SPEED_AUTO_NEG ||
		    (FUNC1(params) &&
		     params->loopback_mode == LOOPBACK_EXT)) {
			FUNC0(NETIF_MSG_LINK, "not SGMII, no AN\n");

			/* Disable autoneg */
			FUNC5(phy, params, vars, 0);

			/* Program speed and duplex */
			FUNC3(phy, params, vars);

		} else { /* AN_mode */
			FUNC0(NETIF_MSG_LINK, "not SGMII, AN\n");

			/* AN enabled */
			FUNC6(phy, params);

			/* Program duplex & pause advertisement (for aneg) */
			FUNC7(phy, params,
							  vars->ieee_fc);

			/* Enable autoneg */
			FUNC5(phy, params, vars, enable_cl73);

			/* Enable and restart AN */
			FUNC4(phy, params, enable_cl73);
		}

	} else { /* SGMII mode */
		FUNC0(NETIF_MSG_LINK, "SGMII\n");

		FUNC2(phy, params, vars);
	}
}