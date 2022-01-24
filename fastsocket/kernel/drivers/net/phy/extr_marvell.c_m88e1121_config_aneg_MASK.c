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
struct phy_device {int dummy; } ;

/* Variables and functions */
 int BMCR_RESET ; 
 int /*<<< orphan*/  MII_88E1121_PHY_LED_CTRL ; 
 int MII_88E1121_PHY_LED_DEF ; 
 int MII_88E1121_PHY_LED_PAGE ; 
 int /*<<< orphan*/  MII_88E1121_PHY_PAGE ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  MII_M1011_PHY_SCR ; 
 int MII_M1011_PHY_SCR_AUTO_CROSS ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct phy_device *phydev)
{
	int err, temp;

	err = FUNC2(phydev, MII_BMCR, BMCR_RESET);
	if (err < 0)
		return err;

	err = FUNC2(phydev, MII_M1011_PHY_SCR,
			MII_M1011_PHY_SCR_AUTO_CROSS);
	if (err < 0)
		return err;

	temp = FUNC1(phydev, MII_88E1121_PHY_PAGE);

	FUNC2(phydev, MII_88E1121_PHY_PAGE, MII_88E1121_PHY_LED_PAGE);
	FUNC2(phydev, MII_88E1121_PHY_LED_CTRL, MII_88E1121_PHY_LED_DEF);
	FUNC2(phydev, MII_88E1121_PHY_PAGE, temp);

	err = FUNC0(phydev);

	return err;
}