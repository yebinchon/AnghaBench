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
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_PMA_REG_PHY_IDENTIFIER ; 
 int /*<<< orphan*/  MDIO_PMA_REG_ROM_VER2 ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct bnx2x *bp,
					struct bnx2x_phy *phy,
					u16 edc_mode)
{
	u16 phy_identifier;
	u16 rom_ver2_val;
	FUNC0(bp, phy,
			MDIO_PMA_DEVAD,
			MDIO_PMA_REG_PHY_IDENTIFIER,
			&phy_identifier);

	FUNC1(bp, phy,
			 MDIO_PMA_DEVAD,
			 MDIO_PMA_REG_PHY_IDENTIFIER,
			 (phy_identifier & ~(1<<9)));

	FUNC0(bp, phy,
			MDIO_PMA_DEVAD,
			MDIO_PMA_REG_ROM_VER2,
			&rom_ver2_val);
	/* Keep the MSB 8-bits, and set the LSB 8-bits with the edc_mode */
	FUNC1(bp, phy,
			 MDIO_PMA_DEVAD,
			 MDIO_PMA_REG_ROM_VER2,
			 (rom_ver2_val & 0xff00) | (edc_mode & 0x00ff));

	FUNC1(bp, phy,
			 MDIO_PMA_DEVAD,
			 MDIO_PMA_REG_PHY_IDENTIFIER,
			 (phy_identifier | (1<<9)));

	return 0;
}