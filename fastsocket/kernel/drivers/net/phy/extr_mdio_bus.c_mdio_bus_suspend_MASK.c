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
struct phy_driver {int (* suspend ) (struct phy_device*) ;} ;
struct phy_device {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct phy_device*) ; 
 int FUNC1 (struct phy_device*) ; 
 struct phy_device* FUNC2 (struct device*) ; 
 struct phy_driver* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device * dev, pm_message_t state)
{
	struct phy_driver *phydrv = FUNC3(dev->driver);
	struct phy_device *phydev = FUNC2(dev);

	if (!FUNC0(phydev))
		return 0;
	return phydrv->suspend(phydev);
}