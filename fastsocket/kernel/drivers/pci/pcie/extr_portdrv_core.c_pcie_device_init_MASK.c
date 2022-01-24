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
struct device {int /*<<< orphan*/ * parent; int /*<<< orphan*/  release; int /*<<< orphan*/ * bus; } ;
struct pcie_device {int irq; int service; struct device device; struct pci_dev* port; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pcie_device*) ; 
 struct pcie_device* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  pcie_port_bus_type ; 
 int /*<<< orphan*/  release_pcie_device ; 

__attribute__((used)) static int FUNC8(struct pci_dev *pdev, int service, int irq)
{
	int retval;
	struct pcie_device *pcie;
	struct device *device;

	pcie = FUNC5(sizeof(*pcie), GFP_KERNEL);
	if (!pcie)
		return -ENOMEM;
	pcie->port = pdev;
	pcie->irq = irq;
	pcie->service = service;

	/* Initialize generic device interface */
	device = &pcie->device;
	device->bus = &pcie_port_bus_type;
	device->release = release_pcie_device;	/* callback to free pcie dev */
	FUNC0(device, "%s:pcie%02x",
		     FUNC6(pdev),
		     FUNC2(FUNC7(pdev), service));
	device->parent = &pdev->dev;

	retval = FUNC1(device);
	if (retval)
		FUNC4(pcie);
	else
		FUNC3(device);
	return retval;
}