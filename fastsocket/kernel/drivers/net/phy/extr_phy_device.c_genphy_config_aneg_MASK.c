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
 int BMCR_ANENABLE ; 
 int BMCR_ISOLATE ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*) ; 
 int FUNC2 (struct phy_device*) ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ ) ; 

int FUNC4(struct phy_device *phydev)
{
	int result;

	if (AUTONEG_ENABLE != phydev->autoneg)
		return FUNC2(phydev);

	result = FUNC0(phydev);

	if (result < 0) /* error */
		return result;

	if (result == 0) {
		/* Advertisment hasn't changed, but maybe aneg was never on to
		 * begin with?  Or maybe phy was isolated? */
		int ctl = FUNC3(phydev, MII_BMCR);

		if (ctl < 0)
			return ctl;

		if (!(ctl & BMCR_ANENABLE) || (ctl & BMCR_ISOLATE))
			result = 1; /* do restart aneg */
	}

	/* Only restart aneg if we are advertising something different
	 * than we were before.	 */
	if (result > 0)
		result = FUNC1(phydev);

	return result;
}