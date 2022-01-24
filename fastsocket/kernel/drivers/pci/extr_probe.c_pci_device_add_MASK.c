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
struct TYPE_2__ {int coherent_dma_mask; int /*<<< orphan*/ * dma_parms; int /*<<< orphan*/ * dma_mask; int /*<<< orphan*/  release; } ;
struct pci_dev {int state_saved; int /*<<< orphan*/  bus_list; TYPE_1__ dev; int /*<<< orphan*/  dma_parms; int /*<<< orphan*/  dma_mask; } ;
struct pci_bus {int /*<<< orphan*/  devices; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pci_bus_sem ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  pci_fixup_header ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  pci_release_dev ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct pci_dev *dev, struct pci_bus *bus)
{
	FUNC0(&dev->dev);
	dev->dev.release = pci_release_dev;
	FUNC3(dev);

	dev->dev.dma_mask = &dev->dma_mask;
	dev->dev.dma_parms = &dev->dma_parms;
	dev->dev.coherent_dma_mask = 0xffffffffull;

	FUNC7(dev, 65536);
	FUNC8(dev, 0xffffffff);

	/* Fix up broken headers */
	FUNC4(pci_fixup_header, dev);

	/* moved out from quirk header fixup code */
	FUNC6(dev);

	/* Clear the state_saved flag. */
	dev->state_saved = false;

	/* Initialize various capabilities */
	FUNC5(dev);

	/*
	 * Add the device to our list of discovered devices
	 * and the bus list for fixup functions, etc.
	 */
	FUNC1(&pci_bus_sem);
	FUNC2(&dev->bus_list, &bus->devices);
	FUNC9(&pci_bus_sem);
}