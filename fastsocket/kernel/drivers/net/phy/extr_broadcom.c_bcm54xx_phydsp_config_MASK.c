#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct phy_device {TYPE_1__* drv; } ;
struct TYPE_2__ {scalar_t__ phy_id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct phy_device*) ; 
 int MII_BCM54XX_AUXCTL_ACTL_SMDSP_ENA ; 
 int MII_BCM54XX_AUXCTL_ACTL_TX_6DB ; 
 int /*<<< orphan*/  MII_BCM54XX_AUXCTL_SHDWSEL_AUXCTL ; 
 int /*<<< orphan*/  MII_BCM54XX_EXP_EXP08 ; 
 int MII_BCM54XX_EXP_EXP08_RJCT_2MHZ ; 
 int /*<<< orphan*/  MII_BCM54XX_EXP_EXP75 ; 
 int MII_BCM54XX_EXP_EXP75_CM_OSC ; 
 scalar_t__ PHY_ID_BCM50610 ; 
 scalar_t__ PHY_ID_BCM50610M ; 
 scalar_t__ PHY_ID_BCM57780 ; 
 int FUNC1 (struct phy_device*) ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct phy_device *phydev)
{
	int err, err2;

	/* Enable the SMDSP clock */
	err = FUNC2(phydev,
				   MII_BCM54XX_AUXCTL_SHDWSEL_AUXCTL,
				   MII_BCM54XX_AUXCTL_ACTL_SMDSP_ENA |
				   MII_BCM54XX_AUXCTL_ACTL_TX_6DB);
	if (err < 0)
		return err;

	if (FUNC0(phydev) == PHY_ID_BCM50610 ||
	    FUNC0(phydev) == PHY_ID_BCM50610M) {
		/* Clear bit 9 to fix a phy interop issue. */
		err = FUNC4(phydev, MII_BCM54XX_EXP_EXP08,
					MII_BCM54XX_EXP_EXP08_RJCT_2MHZ);
		if (err < 0)
			goto error;

		if (phydev->drv->phy_id == PHY_ID_BCM50610) {
			err = FUNC1(phydev);
			if (err < 0)
				goto error;
		}
	}

	if (FUNC0(phydev) == PHY_ID_BCM57780) {
		int val;

		val = FUNC3(phydev, MII_BCM54XX_EXP_EXP75);
		if (val < 0)
			goto error;

		val |= MII_BCM54XX_EXP_EXP75_CM_OSC;
		err = FUNC4(phydev, MII_BCM54XX_EXP_EXP75, val);
	}

error:
	/* Disable the SMDSP clock */
	err2 = FUNC2(phydev,
				    MII_BCM54XX_AUXCTL_SHDWSEL_AUXCTL,
				    MII_BCM54XX_AUXCTL_ACTL_TX_6DB);

	/* Return the first error reported. */
	return err ? err : err2;
}