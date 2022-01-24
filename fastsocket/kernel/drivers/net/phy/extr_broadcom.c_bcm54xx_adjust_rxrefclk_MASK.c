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
struct phy_device {int dev_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM54XX_SHD_APD ; 
 int /*<<< orphan*/  BCM54XX_SHD_APD_EN ; 
 int /*<<< orphan*/  BCM54XX_SHD_SCR3 ; 
 int /*<<< orphan*/  BCM54XX_SHD_SCR3_DEF_CLK125 ; 
 int /*<<< orphan*/  BCM54XX_SHD_SCR3_DLLAPD_DIS ; 
 int /*<<< orphan*/  BCM54XX_SHD_SCR3_TRDDAPD ; 
 scalar_t__ FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*) ; 
 int PHY_BRCM_AUTO_PWRDWN_ENABLE ; 
 int PHY_BRCM_DIS_TXCRXC_NOENRGY ; 
 int PHY_BRCM_RX_REFCLK_UNUSED ; 
 scalar_t__ PHY_ID_BCM50610 ; 
 scalar_t__ PHY_ID_BCM50610M ; 
 scalar_t__ PHY_ID_BCM57780 ; 
 int /*<<< orphan*/  FUNC2 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct phy_device *phydev)
{
	u32 val, orig;
	bool clk125en = true;

	/* Abort if we are using an untested phy. */
	if (FUNC0(phydev) != PHY_ID_BCM57780 ||
	    FUNC0(phydev) != PHY_ID_BCM50610 ||
	    FUNC0(phydev) != PHY_ID_BCM50610M)
		return;

	val = FUNC2(phydev, BCM54XX_SHD_SCR3);
	if (val < 0)
		return;

	orig = val;

	if ((FUNC0(phydev) == PHY_ID_BCM50610 ||
	     FUNC0(phydev) == PHY_ID_BCM50610M) &&
	    FUNC1(phydev) >= 0x3) {
		/*
		 * Here, bit 0 _disables_ CLK125 when set.
		 * This bit is set by default.
		 */
		clk125en = false;
	} else {
		if (phydev->dev_flags & PHY_BRCM_RX_REFCLK_UNUSED) {
			/* Here, bit 0 _enables_ CLK125 when set */
			val &= ~BCM54XX_SHD_SCR3_DEF_CLK125;
			clk125en = false;
		}
	}

	if (clk125en == false ||
	    (phydev->dev_flags & PHY_BRCM_AUTO_PWRDWN_ENABLE))
		val &= ~BCM54XX_SHD_SCR3_DLLAPD_DIS;
	else
		val |= BCM54XX_SHD_SCR3_DLLAPD_DIS;

	if (phydev->dev_flags & PHY_BRCM_DIS_TXCRXC_NOENRGY)
		val |= BCM54XX_SHD_SCR3_TRDDAPD;

	if (orig != val)
		FUNC3(phydev, BCM54XX_SHD_SCR3, val);

	val = FUNC2(phydev, BCM54XX_SHD_APD);
	if (val < 0)
		return;

	orig = val;

	if (clk125en == false ||
	    (phydev->dev_flags & PHY_BRCM_AUTO_PWRDWN_ENABLE))
		val |= BCM54XX_SHD_APD_EN;
	else
		val &= ~BCM54XX_SHD_APD_EN;

	if (orig != val)
		FUNC3(phydev, BCM54XX_SHD_APD, val);
}