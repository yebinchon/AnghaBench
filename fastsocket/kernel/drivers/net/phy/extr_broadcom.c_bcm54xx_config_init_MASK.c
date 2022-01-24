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
struct phy_device {int dev_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM54XX_SHD_RGMII_MODE ; 
 scalar_t__ FUNC0 (struct phy_device*) ; 
 int /*<<< orphan*/  MII_BCM54XX_ECR ; 
 int MII_BCM54XX_ECR_IM ; 
 int /*<<< orphan*/  MII_BCM54XX_IMR ; 
 int MII_BCM54XX_INT_DUPLEX ; 
 int MII_BCM54XX_INT_LINK ; 
 int MII_BCM54XX_INT_SPEED ; 
 int PHY_BRCM_AUTO_PWRDWN_ENABLE ; 
 int PHY_BRCM_CLEAR_RGMII_MODE ; 
 int PHY_BRCM_DIS_TXCRXC_NOENRGY ; 
 int PHY_BRCM_RX_REFCLK_UNUSED ; 
 scalar_t__ PHY_ID_BCM50610 ; 
 scalar_t__ PHY_ID_BCM50610M ; 
 int /*<<< orphan*/  FUNC1 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct phy_device *phydev)
{
	int reg, err;

	reg = FUNC4(phydev, MII_BCM54XX_ECR);
	if (reg < 0)
		return reg;

	/* Mask interrupts globally.  */
	reg |= MII_BCM54XX_ECR_IM;
	err = FUNC5(phydev, MII_BCM54XX_ECR, reg);
	if (err < 0)
		return err;

	/* Unmask events we are interested in.  */
	reg = ~(MII_BCM54XX_INT_DUPLEX |
		MII_BCM54XX_INT_SPEED |
		MII_BCM54XX_INT_LINK);
	err = FUNC5(phydev, MII_BCM54XX_IMR, reg);
	if (err < 0)
		return err;

	if ((FUNC0(phydev) == PHY_ID_BCM50610 ||
	     FUNC0(phydev) == PHY_ID_BCM50610M) &&
	    (phydev->dev_flags & PHY_BRCM_CLEAR_RGMII_MODE))
		FUNC3(phydev, BCM54XX_SHD_RGMII_MODE, 0);

	if ((phydev->dev_flags & PHY_BRCM_RX_REFCLK_UNUSED) ||
	    (phydev->dev_flags & PHY_BRCM_DIS_TXCRXC_NOENRGY) ||
	    (phydev->dev_flags & PHY_BRCM_AUTO_PWRDWN_ENABLE))
		FUNC1(phydev);

	FUNC2(phydev);

	return 0;
}