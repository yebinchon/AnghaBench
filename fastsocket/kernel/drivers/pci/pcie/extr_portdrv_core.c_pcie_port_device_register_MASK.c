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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int PCIE_PORT_DEVICE_MAXSERVICES ; 
 int PCIE_PORT_SERVICE_VC ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int FUNC1 (struct pci_dev*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int FUNC5 (struct pci_dev*,int,int) ; 
 int FUNC6 (struct pci_dev*) ; 

int FUNC7(struct pci_dev *dev)
{
	int status, capabilities, i, nr_serv;
	int irqs[PCIE_PORT_DEVICE_MAXSERVICES];

	/* Get and check PCI Express port services */
	capabilities = FUNC6(dev);
	if (!capabilities)
		return -ENODEV;

	status = FUNC3(dev);
	if (status)
		return status;
	FUNC4(dev);

	/*
	 * Initialize service irqs. Don't use service devices that
	 * require interrupts if there is no way to generate them.
	 */
	status = FUNC1(dev, irqs, capabilities);
	if (status) {
		capabilities &= PCIE_PORT_SERVICE_VC;
		if (!capabilities)
			goto error_disable;
	}

	/* Allocate child services if any */
	for (i = 0, nr_serv = 0; i < PCIE_PORT_DEVICE_MAXSERVICES; i++) {
		int service = 1 << i;

		if (!(capabilities & service))
			continue;

		status = FUNC5(dev, service, irqs[i]);
		if (!status)
			nr_serv++;
	}
	if (!nr_serv) {
		FUNC2(dev);
		status = -ENODEV;
		goto error_cleanup_irqs;
	}

	return 0;

error_cleanup_irqs:
	FUNC0(dev);
error_disable:
	FUNC2(dev);
	return status;
}