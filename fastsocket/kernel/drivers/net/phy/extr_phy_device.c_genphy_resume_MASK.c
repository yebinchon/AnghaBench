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
struct phy_device {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int BMCR_PDOWN ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct phy_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct phy_device *phydev)
{
	int value;

	FUNC0(&phydev->lock);

	value = FUNC2(phydev, MII_BMCR);
	FUNC3(phydev, MII_BMCR, (value & ~BMCR_PDOWN));

	FUNC1(&phydev->lock);

	return 0;
}