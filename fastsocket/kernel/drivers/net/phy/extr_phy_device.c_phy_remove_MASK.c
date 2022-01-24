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
struct phy_device {TYPE_1__* drv; int /*<<< orphan*/  lock; int /*<<< orphan*/  state; } ;
struct device {int /*<<< orphan*/  driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* remove ) (struct phy_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  PHY_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct phy_device*) ; 
 struct phy_device* FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct phy_device *phydev;

	phydev = FUNC4(dev);

	FUNC0(&phydev->lock);
	phydev->state = PHY_DOWN;
	FUNC1(&phydev->lock);

	if (phydev->drv->remove)
		phydev->drv->remove(phydev);

	FUNC2(dev->driver);
	phydev->drv = NULL;

	return 0;
}