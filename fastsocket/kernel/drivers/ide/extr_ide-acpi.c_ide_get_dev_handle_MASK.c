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
struct pci_dev {int /*<<< orphan*/  devfn; TYPE_1__* bus; } ;
struct device {int dummy; } ;
struct acpi_device_info {int valid; scalar_t__ address; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_integer ;
typedef  scalar_t__ acpi_handle ;
struct TYPE_2__ {unsigned int number; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ACPI_VALID_ADR ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int ENODEV ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct acpi_device_info**) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_device_info*) ; 
 struct pci_dev* FUNC7 (struct device*) ; 

__attribute__((used)) static int FUNC8(struct device *dev, acpi_handle *handle,
			       acpi_integer *pcidevfn)
{
	struct pci_dev *pdev = FUNC7(dev);
	unsigned int bus, devnum, func;
	acpi_integer addr;
	acpi_handle dev_handle;
	acpi_status status;
	struct acpi_device_info	*dinfo = NULL;
	int ret = -ENODEV;

	bus = pdev->bus->number;
	devnum = FUNC4(pdev->devfn);
	func = FUNC3(pdev->devfn);
	/* ACPI _ADR encoding for PCI bus: */
	addr = (acpi_integer)(devnum << 16 | func);

	FUNC1("ENTER: pci %02x:%02x.%01x\n", bus, devnum, func);

	dev_handle = FUNC2(dev);
	if (!dev_handle) {
		FUNC1("no acpi handle for device\n");
		goto err;
	}

	status = FUNC5(dev_handle, &dinfo);
	if (FUNC0(status)) {
		FUNC1("get_object_info for device failed\n");
		goto err;
	}
	if (dinfo && (dinfo->valid & ACPI_VALID_ADR) &&
	    dinfo->address == addr) {
		*pcidevfn = addr;
		*handle = dev_handle;
	} else {
		FUNC1("get_object_info for device has wrong "
			" address: %llu, should be %u\n",
			dinfo ? (unsigned long long)dinfo->address : -1ULL,
			(unsigned int)addr);
		goto err;
	}

	FUNC1("for dev=0x%x.%x, addr=0x%llx, *handle=0x%p\n",
		 devnum, func, (unsigned long long)addr, *handle);
	ret = 0;
err:
	FUNC6(dinfo);
	return ret;
}