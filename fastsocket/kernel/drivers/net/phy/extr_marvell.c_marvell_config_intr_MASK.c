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
 int /*<<< orphan*/  MII_M1011_IMASK ; 
 int /*<<< orphan*/  MII_M1011_IMASK_CLEAR ; 
 int /*<<< orphan*/  MII_M1011_IMASK_INIT ; 
 scalar_t__ PHY_INTERRUPT_ENABLED ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct phy_device *phydev)
{
	int err;

	if (phydev->interrupts == PHY_INTERRUPT_ENABLED)
		err = FUNC0(phydev, MII_M1011_IMASK, MII_M1011_IMASK_INIT);
	else
		err = FUNC0(phydev, MII_M1011_IMASK, MII_M1011_IMASK_CLEAR);

	return err;
}