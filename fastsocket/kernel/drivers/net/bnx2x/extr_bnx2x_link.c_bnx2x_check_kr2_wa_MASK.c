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
struct link_vars {scalar_t__ check_kr2_recovery_cnt; int link_attr_sync; } ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int LINK_ATTR_SYNC_KR2_ENABLE ; 
 int /*<<< orphan*/  MDIO_AER_BLOCK_AER_REG ; 
 int /*<<< orphan*/  MDIO_AN_DEVAD ; 
 int /*<<< orphan*/  MDIO_AN_REG_LP_AUTO_NEG ; 
 int /*<<< orphan*/  MDIO_AN_REG_LP_AUTO_NEG2 ; 
 int /*<<< orphan*/  MDIO_REG_BANK_AER_BLOCK ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct link_params*,struct link_vars*,struct bnx2x_phy*) ; 
 int FUNC4 (struct bnx2x_phy*,struct link_params*) ; 
 int /*<<< orphan*/  FUNC5 (struct link_params*,struct link_vars*,struct bnx2x_phy*) ; 
 int /*<<< orphan*/  FUNC6 (struct link_params*,struct bnx2x_phy*) ; 
 int FUNC7 (struct bnx2x_phy*,struct link_params*) ; 
 int /*<<< orphan*/  FUNC8 (struct bnx2x_phy*,struct link_params*) ; 

__attribute__((used)) static void FUNC9(struct link_params *params,
			       struct link_vars *vars,
			       struct bnx2x_phy *phy)
{
	struct bnx2x *bp = params->bp;
	u16 base_page, next_page, not_kr2_device, lane;
	int sigdet;

	/* Once KR2 was disabled, wait 5 seconds before checking KR2 recovery
	 * Since some switches tend to reinit the AN process and clear the
	 * the advertised BP/NP after ~2 seconds causing the KR2 to be disabled
	 * and recovered many times
	 */
	if (vars->check_kr2_recovery_cnt > 0) {
		vars->check_kr2_recovery_cnt--;
		return;
	}

	sigdet = FUNC7(phy, params);
	if (!sigdet) {
		if (!(vars->link_attr_sync & LINK_ATTR_SYNC_KR2_ENABLE)) {
			FUNC5(params, vars, phy);
			FUNC1(NETIF_MSG_LINK, "No sigdet\n");
		}
		return;
	}

	lane = FUNC4(phy, params);
	FUNC0(bp, phy, MDIO_REG_BANK_AER_BLOCK,
			  MDIO_AER_BLOCK_AER_REG, lane);
	FUNC2(bp, phy, MDIO_AN_DEVAD,
			MDIO_AN_REG_LP_AUTO_NEG, &base_page);
	FUNC2(bp, phy, MDIO_AN_DEVAD,
			MDIO_AN_REG_LP_AUTO_NEG2, &next_page);
	FUNC6(params, phy);

	/* CL73 has not begun yet */
	if (base_page == 0) {
		if (!(vars->link_attr_sync & LINK_ATTR_SYNC_KR2_ENABLE)) {
			FUNC5(params, vars, phy);
			FUNC1(NETIF_MSG_LINK, "No BP\n");
		}
		return;
	}

	/* In case NP bit is not set in the BasePage, or it is set,
	 * but only KX is advertised, declare this link partner as non-KR2
	 * device.
	 */
	not_kr2_device = (((base_page & 0x8000) == 0) ||
			  (((base_page & 0x8000) &&
			    ((next_page & 0xe0) == 0x2))));

	/* In case KR2 is already disabled, check if we need to re-enable it */
	if (!(vars->link_attr_sync & LINK_ATTR_SYNC_KR2_ENABLE)) {
		if (!not_kr2_device) {
			FUNC1(NETIF_MSG_LINK, "BP=0x%x, NP=0x%x\n", base_page,
			   next_page);
			FUNC5(params, vars, phy);
		}
		return;
	}
	/* KR2 is enabled, but not KR2 device */
	if (not_kr2_device) {
		/* Disable KR2 on both lanes */
		FUNC1(NETIF_MSG_LINK, "BP=0x%x, NP=0x%x\n", base_page, next_page);
		FUNC3(params, vars, phy);
		/* Restart AN on leading lane */
		FUNC8(phy, params);
		return;
	}
}