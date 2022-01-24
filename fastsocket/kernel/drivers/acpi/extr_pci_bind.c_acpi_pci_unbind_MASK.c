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
struct pci_dev {int /*<<< orphan*/  subordinate; } ;
struct TYPE_2__ {int /*<<< orphan*/ * unbind; int /*<<< orphan*/ * bind; } ;
struct acpi_device {TYPE_1__ ops; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 struct pci_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC3(struct acpi_device *device)
{
	struct pci_dev *dev;

	dev = FUNC0(device->handle);
	if (!dev || !dev->subordinate)
		goto out;

	FUNC1(dev->subordinate);

	device->ops.bind = NULL;
	device->ops.unbind = NULL;

out:
	FUNC2(dev);
	return 0;
}