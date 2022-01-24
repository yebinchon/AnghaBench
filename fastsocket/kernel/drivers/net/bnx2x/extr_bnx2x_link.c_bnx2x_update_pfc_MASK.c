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
typedef  int u32 ;
struct link_vars {scalar_t__ mac_type; int flow_ctrl; int /*<<< orphan*/  link_up; int /*<<< orphan*/  link_status; } ;
struct link_params {scalar_t__ loopback_mode; int feature_config_flags; int port; struct bnx2x* bp; } ;
struct bnx2x_nig_brb_pfc_port_params {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int BNX2X_FLOW_CTRL_TX ; 
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FEATURE_CONFIG_PFC_ENABLED ; 
 int /*<<< orphan*/  LINK_STATUS_PFC_ENABLED ; 
 scalar_t__ LOOPBACK_BMAC ; 
 scalar_t__ MAC_TYPE_XMAC ; 
 int MISC_REGISTERS_RESET_REG_2_RST_BMAC0 ; 
 int /*<<< orphan*/  MISC_REG_RESET_REG_2 ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 scalar_t__ NIG_REG_BMAC0_PAUSE_OUT_EN ; 
 int FUNC3 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct link_params*,struct link_vars*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct link_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct link_params*,struct link_vars*) ; 
 int /*<<< orphan*/  FUNC8 (struct link_params*,struct link_vars*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct link_params*,struct link_vars*,struct bnx2x_nig_brb_pfc_port_params*) ; 
 int /*<<< orphan*/  FUNC10 (struct link_params*,struct link_vars*,int /*<<< orphan*/ ) ; 

int FUNC11(struct link_params *params,
		      struct link_vars *vars,
		      struct bnx2x_nig_brb_pfc_port_params *pfc_params)
{
	/* The PFC and pause are orthogonal to one another, meaning when
	 * PFC is enabled, the pause are disabled, and when PFC is
	 * disabled, pause are set according to the pause result.
	 */
	u32 val;
	struct bnx2x *bp = params->bp;
	int bnx2x_status = 0;
	u8 bmac_loopback = (params->loopback_mode == LOOPBACK_BMAC);

	if (params->feature_config_flags & FEATURE_CONFIG_PFC_ENABLED)
		vars->link_status |= LINK_STATUS_PFC_ENABLED;
	else
		vars->link_status &= ~LINK_STATUS_PFC_ENABLED;

	FUNC6(params, vars->link_status);

	/* Update NIG params */
	FUNC9(params, vars, pfc_params);

	if (!vars->link_up)
		return bnx2x_status;

	FUNC2(NETIF_MSG_LINK, "About to update PFC in BMAC\n");

	if (FUNC1(bp)) {
		if (vars->mac_type == MAC_TYPE_XMAC)
			FUNC10(params, vars, 0);
	} else {
		val = FUNC3(bp, MISC_REG_RESET_REG_2);
		if ((val &
		     (MISC_REGISTERS_RESET_REG_2_RST_BMAC0 << params->port))
		    == 0) {
			FUNC2(NETIF_MSG_LINK, "About to update PFC in EMAC\n");
			FUNC5(params, vars, 0);
			return bnx2x_status;
		}
		if (FUNC0(bp))
			FUNC8(params, vars, bmac_loopback);
		else
			FUNC7(params, vars);

		val = 0;
		if ((params->feature_config_flags &
		     FEATURE_CONFIG_PFC_ENABLED) ||
		    (vars->flow_ctrl & BNX2X_FLOW_CTRL_TX))
			val = 1;
		FUNC4(bp, NIG_REG_BMAC0_PAUSE_OUT_EN + params->port*4, val);
	}
	return bnx2x_status;
}