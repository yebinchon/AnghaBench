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
typedef  int u32 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  subsystem_device; int /*<<< orphan*/  subsystem_vendor; TYPE_1__* driver; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; int /*<<< orphan*/  vendor; } ;
struct bcma_bus {int /*<<< orphan*/  mmio; struct pci_dev* host_pci; TYPE_2__ boardinfo; int /*<<< orphan*/ * ops; int /*<<< orphan*/  hosttype; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_HOSTTYPE_PCI ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct bcma_bus*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcma_bus*,char*) ; 
 int /*<<< orphan*/  bcma_host_pci_ops ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bcma_bus*) ; 
 struct bcma_bus* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*) ; 
 int FUNC12 (struct pci_dev*,char const*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,struct bcma_bus*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,int,int) ; 

__attribute__((used)) static int FUNC16(struct pci_dev *dev,
			       const struct pci_device_id *id)
{
	struct bcma_bus *bus;
	int err = -ENOMEM;
	const char *name;
	u32 val;

	/* Alloc */
	bus = FUNC4(sizeof(*bus), GFP_KERNEL);
	if (!bus)
		goto out;

	/* Basic PCI configuration */
	err = FUNC6(dev);
	if (err)
		goto err_kfree_bus;

	name = FUNC2(&dev->dev);
	if (dev->driver && dev->driver->name)
		name = dev->driver->name;
	err = FUNC12(dev, name);
	if (err)
		goto err_pci_disable;
	FUNC14(dev);

	/* Disable the RETRY_TIMEOUT register (0x41) to keep
	 * PCI Tx retries from interfering with C3 CPU state */
	FUNC10(dev, 0x40, &val);
	if ((val & 0x0000ff00) != 0)
		FUNC15(dev, 0x40, val & 0xffff00ff);

	/* SSB needed additional powering up, do we have any AMBA PCI cards? */
	if (!FUNC9(dev))
		FUNC1(bus, "PCI card detected, report problems.\n");

	/* Map MMIO */
	err = -ENOMEM;
	bus->mmio = FUNC7(dev, 0, ~0UL);
	if (!bus->mmio)
		goto err_pci_release_regions;

	/* Host specific */
	bus->host_pci = dev;
	bus->hosttype = BCMA_HOSTTYPE_PCI;
	bus->ops = &bcma_host_pci_ops;

	bus->boardinfo.vendor = bus->host_pci->subsystem_vendor;
	bus->boardinfo.type = bus->host_pci->subsystem_device;

	/* Register */
	err = FUNC0(bus);
	if (err)
		goto err_pci_unmap_mmio;

	FUNC13(dev, bus);

out:
	return err;

err_pci_unmap_mmio:
	FUNC8(dev, bus->mmio);
err_pci_release_regions:
	FUNC11(dev);
err_pci_disable:
	FUNC5(dev);
err_kfree_bus:
	FUNC3(bus);
	return err;
}