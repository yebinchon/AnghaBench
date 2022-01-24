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
 int /*<<< orphan*/  BMCR_RESET ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  MII_M1011_PHY_SCR ; 
 int /*<<< orphan*/  MII_M1011_PHY_SCR_AUTO_CROSS ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	int err;

	err = FUNC1(phydev, MII_BMCR, BMCR_RESET);
	if (err < 0)
		return err;

	err = FUNC1(phydev, MII_M1011_PHY_SCR,
			MII_M1011_PHY_SCR_AUTO_CROSS);
	if (err < 0)
		return err;

	err = FUNC0(phydev);
	return 0;
}