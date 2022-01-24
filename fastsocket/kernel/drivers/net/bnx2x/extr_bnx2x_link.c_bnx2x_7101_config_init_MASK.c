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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct link_vars {int dummy; } ;
struct link_params {int /*<<< orphan*/  port; struct bnx2x* bp; } ;
struct bnx2x_phy {int /*<<< orphan*/  ver_addr; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MDIO_AN_DEVAD ; 
 int /*<<< orphan*/  MDIO_AN_REG_CTRL ; 
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_PMA_LASI_CTRL ; 
 int /*<<< orphan*/  MDIO_PMA_REG_7101_VER1 ; 
 int /*<<< orphan*/  MDIO_PMA_REG_7101_VER2 ; 
 int /*<<< orphan*/  MDIO_PMA_REG_7107_LED_CNTL ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_2 ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_OUTPUT_HIGH ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct link_params*,struct bnx2x_phy*,struct link_vars*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,struct bnx2x_phy*,struct link_params*) ; 

__attribute__((used)) static int FUNC8(struct bnx2x_phy *phy,
				  struct link_params *params,
				  struct link_vars *vars)
{
	u16 fw_ver1, fw_ver2, val;
	struct bnx2x *bp = params->bp;
	FUNC0(NETIF_MSG_LINK, "Setting the SFX7101 LASI indication\n");

	/* Restore normal power mode*/
	FUNC6(bp, MISC_REGISTERS_GPIO_2,
		       MISC_REGISTERS_GPIO_OUTPUT_HIGH, params->port);
	/* HW reset */
	FUNC3(bp, params->port);
	FUNC7(bp, phy, params);

	FUNC2(bp, phy,
			 MDIO_PMA_DEVAD, MDIO_PMA_LASI_CTRL, 0x1);
	FUNC0(NETIF_MSG_LINK, "Setting the SFX7101 LED to blink on traffic\n");
	FUNC2(bp, phy,
			 MDIO_PMA_DEVAD, MDIO_PMA_REG_7107_LED_CNTL, (1<<3));

	FUNC4(params, phy, vars);
	/* Restart autoneg */
	FUNC1(bp, phy,
			MDIO_AN_DEVAD, MDIO_AN_REG_CTRL, &val);
	val |= 0x200;
	FUNC2(bp, phy,
			 MDIO_AN_DEVAD, MDIO_AN_REG_CTRL, val);

	/* Save spirom version */
	FUNC1(bp, phy,
			MDIO_PMA_DEVAD, MDIO_PMA_REG_7101_VER1, &fw_ver1);

	FUNC1(bp, phy,
			MDIO_PMA_DEVAD, MDIO_PMA_REG_7101_VER2, &fw_ver2);
	FUNC5(bp, params->port,
				  (u32)(fw_ver1<<16 | fw_ver2), phy->ver_addr);
	return 0;
}