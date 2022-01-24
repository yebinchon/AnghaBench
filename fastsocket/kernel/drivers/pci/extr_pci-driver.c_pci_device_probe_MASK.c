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
struct pci_driver {int dummy; } ;
struct pci_dev {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int FUNC0 (struct pci_driver*,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct pci_dev* FUNC3 (struct device*) ; 
 struct pci_driver* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device * dev)
{
	int error = 0;
	struct pci_driver *drv;
	struct pci_dev *pci_dev;

	drv = FUNC4(dev->driver);
	pci_dev = FUNC3(dev);
	FUNC1(pci_dev);
	error = FUNC0(drv, pci_dev);
	if (error)
		FUNC2(pci_dev);

	return error;
}