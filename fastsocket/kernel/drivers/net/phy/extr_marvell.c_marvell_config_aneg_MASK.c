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
struct phy_device {scalar_t__ autoneg; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_ENABLE ; 
 int BMCR_RESET ; 
 int MII_BMCR ; 
 int MII_M1011_PHY_SCR ; 
 int MII_M1011_PHY_SCR_AUTO_CROSS ; 
 int MII_M1111_PHY_LED_CONTROL ; 
 int MII_M1111_PHY_LED_DIRECT ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*,int) ; 
 int FUNC2 (struct phy_device*,int,int) ; 

__attribute__((used)) static int FUNC3(struct phy_device *phydev)
{
	int err;

	/* The Marvell PHY has an errata which requires
	 * that certain registers get written in order
	 * to restart autonegotiation */
	err = FUNC2(phydev, MII_BMCR, BMCR_RESET);

	if (err < 0)
		return err;

	err = FUNC2(phydev, 0x1d, 0x1f);
	if (err < 0)
		return err;

	err = FUNC2(phydev, 0x1e, 0x200c);
	if (err < 0)
		return err;

	err = FUNC2(phydev, 0x1d, 0x5);
	if (err < 0)
		return err;

	err = FUNC2(phydev, 0x1e, 0);
	if (err < 0)
		return err;

	err = FUNC2(phydev, 0x1e, 0x100);
	if (err < 0)
		return err;

	err = FUNC2(phydev, MII_M1011_PHY_SCR,
			MII_M1011_PHY_SCR_AUTO_CROSS);
	if (err < 0)
		return err;

	err = FUNC2(phydev, MII_M1111_PHY_LED_CONTROL,
			MII_M1111_PHY_LED_DIRECT);
	if (err < 0)
		return err;

	err = FUNC0(phydev);
	if (err < 0)
		return err;

	if (phydev->autoneg != AUTONEG_ENABLE) {
		int bmcr;

		/*
		 * A write to speed/duplex bits (that is performed by
		 * genphy_config_aneg() call above) must be followed by
		 * a software reset. Otherwise, the write has no effect.
		 */
		bmcr = FUNC1(phydev, MII_BMCR);
		if (bmcr < 0)
			return bmcr;

		err = FUNC2(phydev, MII_BMCR, bmcr | BMCR_RESET);
		if (err < 0)
			return err;
	}

	return 0;
}