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
struct pcie_port_service_driver {int (* probe ) (struct pcie_device*) ;int /*<<< orphan*/  name; } ;
struct pcie_device {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int FUNC2 (struct pcie_device*) ; 
 struct pcie_device* FUNC3 (struct device*) ; 
 struct pcie_port_service_driver* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev)
{
	struct pcie_device *pciedev;
	struct pcie_port_service_driver *driver;
	int status;

	if (!dev || !dev->driver)
		return -ENODEV;

	driver = FUNC4(dev->driver);
	if (!driver || !driver->probe)
		return -ENODEV;

	pciedev = FUNC3(dev);
	status = driver->probe(pciedev);
	if (!status) {
		FUNC0(KERN_DEBUG, dev, "service driver %s loaded\n",
			driver->name);
		FUNC1(dev);
	}
	return status;
}