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
typedef  int u32 ;
struct phy_device {int advertising; int supported; } ;

/* Variables and functions */
 int ADVERTISE_1000FULL ; 
 int ADVERTISE_1000HALF ; 
 int ADVERTISE_100BASE4 ; 
 int ADVERTISE_ALL ; 
 int ADVERTISE_PAUSE_ASYM ; 
 int ADVERTISE_PAUSE_CAP ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_CTRL1000 ; 
 int SUPPORTED_1000baseT_Full ; 
 int SUPPORTED_1000baseT_Half ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct phy_device *phydev)
{
	u32 advertise;
	int oldadv, adv;
	int err, changed = 0;

	/* Only allow advertising what
	 * this PHY supports */
	phydev->advertising &= phydev->supported;
	advertise = phydev->advertising;

	/* Setup standard advertisement */
	oldadv = adv = FUNC2(phydev, MII_ADVERTISE);

	if (adv < 0)
		return adv;

	adv &= ~(ADVERTISE_ALL | ADVERTISE_100BASE4 | ADVERTISE_PAUSE_CAP |
		 ADVERTISE_PAUSE_ASYM);
	adv |= FUNC0(advertise);

	if (adv != oldadv) {
		err = FUNC3(phydev, MII_ADVERTISE, adv);

		if (err < 0)
			return err;
		changed = 1;
	}

	/* Configure gigabit if it's supported */
	if (phydev->supported & (SUPPORTED_1000baseT_Half |
				SUPPORTED_1000baseT_Full)) {
		oldadv = adv = FUNC2(phydev, MII_CTRL1000);

		if (adv < 0)
			return adv;

		adv &= ~(ADVERTISE_1000FULL | ADVERTISE_1000HALF);
		adv |= FUNC1(advertise);

		if (adv != oldadv) {
			err = FUNC3(phydev, MII_CTRL1000, adv);

			if (err < 0)
				return err;
			changed = 1;
		}
	}

	return changed;
}