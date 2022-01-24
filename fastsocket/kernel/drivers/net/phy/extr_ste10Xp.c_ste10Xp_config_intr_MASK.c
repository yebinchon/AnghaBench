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
 int /*<<< orphan*/  MII_XCIIS ; 
 int /*<<< orphan*/  MII_XIE ; 
 int /*<<< orphan*/  MII_XIE_DEFAULT_MASK ; 
 scalar_t__ PHY_INTERRUPT_ENABLED ; 
 int FUNC0 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct phy_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct phy_device *phydev)
{
	int err, value;

	if (phydev->interrupts == PHY_INTERRUPT_ENABLED) {
		/* Enable all STe101P interrupts (PR12) */
		err = FUNC1(phydev, MII_XIE, MII_XIE_DEFAULT_MASK);
		/* clear any pending interrupts */
		if (err == 0) {
			value = FUNC0(phydev, MII_XCIIS);
			if (value < 0)
				err = value;
		}
	} else
		err = FUNC1(phydev, MII_XIE, 0);

	return err;
}