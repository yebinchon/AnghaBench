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
struct phy_driver {int phy_id; int phy_id_mask; } ;
struct phy_device {int phy_id; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct phy_device* FUNC0 (struct device*) ; 
 struct phy_driver* FUNC1 (struct device_driver*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct device_driver *drv)
{
	struct phy_device *phydev = FUNC0(dev);
	struct phy_driver *phydrv = FUNC1(drv);

	return ((phydrv->phy_id & phydrv->phy_id_mask) ==
		(phydev->phy_id & phydrv->phy_id_mask));
}