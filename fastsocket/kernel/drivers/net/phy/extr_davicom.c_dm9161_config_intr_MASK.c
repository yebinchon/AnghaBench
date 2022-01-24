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
 int /*<<< orphan*/  MII_DM9161_INTR ; 
 int MII_DM9161_INTR_STOP ; 
 scalar_t__ PHY_INTERRUPT_ENABLED ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	int temp;

	temp = FUNC0(phydev, MII_DM9161_INTR);

	if (temp < 0)
		return temp;

	if(PHY_INTERRUPT_ENABLED == phydev->interrupts )
		temp &= ~(MII_DM9161_INTR_STOP);
	else
		temp |= MII_DM9161_INTR_STOP;

	temp = FUNC1(phydev, MII_DM9161_INTR, temp);

	return temp;
}