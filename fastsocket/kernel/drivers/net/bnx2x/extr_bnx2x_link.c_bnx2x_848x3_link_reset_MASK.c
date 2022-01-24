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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct link_params {int /*<<< orphan*/  port; struct bnx2x* bp; } ;
struct bnx2x_phy {scalar_t__ type; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 int /*<<< orphan*/  MDIO_84833_SUPER_ISOLATE ; 
 int /*<<< orphan*/  MDIO_84833_TOP_CFG_XGPHY_STRAP1 ; 
 int /*<<< orphan*/  MDIO_CTL_DEVAD ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_3 ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_OUTPUT_LOW ; 
 scalar_t__ PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84823 ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct bnx2x_phy *phy,
				   struct link_params *params)
{
	struct bnx2x *bp = params->bp;
	u8 port;
	u16 val16;

	if (!(FUNC1(bp)))
		port = FUNC0(bp);
	else
		port = params->port;

	if (phy->type == PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84823) {
		FUNC4(bp, MISC_REGISTERS_GPIO_3,
			       MISC_REGISTERS_GPIO_OUTPUT_LOW,
			       port);
	} else {
		FUNC2(bp, phy,
				MDIO_CTL_DEVAD,
				MDIO_84833_TOP_CFG_XGPHY_STRAP1, &val16);
		val16 |= MDIO_84833_SUPER_ISOLATE;
		FUNC3(bp, phy,
				 MDIO_CTL_DEVAD,
				 MDIO_84833_TOP_CFG_XGPHY_STRAP1, val16);
	}
}