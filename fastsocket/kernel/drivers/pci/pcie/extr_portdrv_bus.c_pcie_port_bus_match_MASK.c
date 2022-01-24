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
struct pcie_port_service_driver {scalar_t__ service; scalar_t__ port_type; } ;
struct pcie_device {scalar_t__ service; int /*<<< orphan*/  port; } ;
struct device_driver {int /*<<< orphan*/ * bus; } ;
struct device {int /*<<< orphan*/ * bus; } ;

/* Variables and functions */
 scalar_t__ PCIE_ANY_PORT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pcie_port_bus_type ; 
 struct pcie_device* FUNC1 (struct device*) ; 
 struct pcie_port_service_driver* FUNC2 (struct device_driver*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct device_driver *drv)
{
	struct pcie_device *pciedev;
	struct pcie_port_service_driver *driver;

	if (drv->bus != &pcie_port_bus_type || dev->bus != &pcie_port_bus_type)
		return 0;

	pciedev = FUNC1(dev);
	driver = FUNC2(drv);

	if (driver->service != pciedev->service)
		return 0;

	if ((driver->port_type != PCIE_ANY_PORT) &&
	    (driver->port_type != FUNC0(pciedev->port)))
		return 0;

	return 1;
}