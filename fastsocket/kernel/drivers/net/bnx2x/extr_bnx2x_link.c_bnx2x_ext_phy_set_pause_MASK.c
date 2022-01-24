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
typedef  int /*<<< orphan*/  u16 ;
struct link_vars {int ieee_fc; } ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MDIO_AN_DEVAD ; 
 int /*<<< orphan*/  MDIO_AN_REG_ADV_PAUSE ; 
 int /*<<< orphan*/  MDIO_AN_REG_ADV_PAUSE_ASYMMETRIC ; 
 int /*<<< orphan*/  MDIO_AN_REG_ADV_PAUSE_BOTH ; 
 int /*<<< orphan*/  MDIO_AN_REG_ADV_PAUSE_PAUSE ; 
 int MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_ASYMMETRIC ; 
 int MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x_phy*,struct link_params*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct link_params *params,
				    struct bnx2x_phy *phy,
				    struct link_vars *vars)
{
	u16 val;
	struct bnx2x *bp = params->bp;
	/* Read modify write pause advertizing */
	FUNC2(bp, phy, MDIO_AN_DEVAD, MDIO_AN_REG_ADV_PAUSE, &val);

	val &= ~MDIO_AN_REG_ADV_PAUSE_BOTH;

	/* Please refer to Table 28B-3 of 802.3ab-1999 spec. */
	FUNC1(phy, params, &vars->ieee_fc);
	if ((vars->ieee_fc &
	    MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_ASYMMETRIC) ==
	    MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_ASYMMETRIC) {
		val |= MDIO_AN_REG_ADV_PAUSE_ASYMMETRIC;
	}
	if ((vars->ieee_fc &
	    MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH) ==
	    MDIO_COMBO_IEEE0_AUTO_NEG_ADV_PAUSE_BOTH) {
		val |= MDIO_AN_REG_ADV_PAUSE_PAUSE;
	}
	FUNC0(NETIF_MSG_LINK, "Ext phy AN advertize 0x%x\n", val);
	FUNC3(bp, phy, MDIO_AN_DEVAD, MDIO_AN_REG_ADV_PAUSE, val);
}