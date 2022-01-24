#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct phy_driver {int /*<<< orphan*/  suspend; } ;
struct TYPE_3__ {struct device_driver* driver; } ;
struct phy_device {struct net_device* attached_dev; TYPE_1__ dev; } ;
struct TYPE_4__ {struct TYPE_4__* parent; } ;
struct net_device {TYPE_2__ dev; } ;
struct device_driver {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 struct phy_driver* FUNC1 (struct device_driver*) ; 

__attribute__((used)) static bool FUNC2(struct phy_device *phydev)
{
	struct device_driver *drv = phydev->dev.driver;
	struct phy_driver *phydrv = FUNC1(drv);
	struct net_device *netdev = phydev->attached_dev;

	if (!drv || !phydrv->suspend)
		return false;

	/* PHY not attached? May suspend. */
	if (!netdev)
		return true;

	/*
	 * Don't suspend PHY if the attched netdev parent may wakeup.
	 * The parent may point to a PCI device, as in tg3 driver.
	 */
	if (netdev->dev.parent && FUNC0(netdev->dev.parent))
		return false;

	/*
	 * Also don't suspend PHY if the netdev itself may wakeup. This
	 * is the case for devices w/o underlaying pwr. mgmt. aware bus,
	 * e.g. SoC devices.
	 */
	if (FUNC0(&netdev->dev))
		return false;

	return true;
}