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
struct phy_device {scalar_t__ interrupts; } ;

/* Variables and functions */
 int /*<<< orphan*/  MII_BRCM_FET_INTREG ; 
 int MII_BRCM_FET_IR_MASK ; 
 scalar_t__ PHY_INTERRUPT_ENABLED ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	int reg, err;

	reg = FUNC0(phydev, MII_BRCM_FET_INTREG);
	if (reg < 0)
		return reg;

	if (phydev->interrupts == PHY_INTERRUPT_ENABLED)
		reg &= ~MII_BRCM_FET_IR_MASK;
	else
		reg |= MII_BRCM_FET_IR_MASK;

	err = FUNC1(phydev, MII_BRCM_FET_INTREG, reg);
	return err;
}