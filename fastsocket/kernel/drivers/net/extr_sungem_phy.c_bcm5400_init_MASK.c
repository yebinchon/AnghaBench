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
struct mii_phy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_BCM5201_MULTIPHY ; 
 int /*<<< orphan*/  MII_BCM5201_MULTIPHY_SERIALMODE ; 
 int /*<<< orphan*/  MII_BCM5400_AUXCONTROL ; 
 int /*<<< orphan*/  MII_BCM5400_AUXCONTROL_PWR10BASET ; 
 int /*<<< orphan*/  MII_BCM5400_GB_CONTROL ; 
 int /*<<< orphan*/  MII_BCM5400_GB_CONTROL_FULLDUPLEXCAP ; 
 int /*<<< orphan*/  FUNC0 (struct mii_phy*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_phy*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mii_phy*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct mii_phy* phy)
{
	u16 data;

	/* Configure for gigabit full duplex */
	data = FUNC2(phy, MII_BCM5400_AUXCONTROL);
	data |= MII_BCM5400_AUXCONTROL_PWR10BASET;
	FUNC3(phy, MII_BCM5400_AUXCONTROL, data);

	data = FUNC2(phy, MII_BCM5400_GB_CONTROL);
	data |= MII_BCM5400_GB_CONTROL_FULLDUPLEXCAP;
	FUNC3(phy, MII_BCM5400_GB_CONTROL, data);

	FUNC5(100);

	/* Reset and configure cascaded 10/100 PHY */
	(void)FUNC4(phy, 0x1f);

	data = FUNC0(phy, 0x1f, MII_BCM5201_MULTIPHY);
	data |= MII_BCM5201_MULTIPHY_SERIALMODE;
	FUNC1(phy, 0x1f, MII_BCM5201_MULTIPHY, data);

	data = FUNC2(phy, MII_BCM5400_AUXCONTROL);
	data &= ~MII_BCM5400_AUXCONTROL_PWR10BASET;
	FUNC3(phy, MII_BCM5400_AUXCONTROL, data);

	return 0;
}