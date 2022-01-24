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
struct pci_serial_quirk {int /*<<< orphan*/  subdevice; int /*<<< orphan*/  subvendor; int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; } ;
struct pci_dev {int /*<<< orphan*/  subsystem_device; int /*<<< orphan*/  subsystem_vendor; int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; } ;

/* Variables and functions */
 struct pci_serial_quirk* pci_serial_quirks ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct pci_serial_quirk *FUNC1(struct pci_dev *dev)
{
	struct pci_serial_quirk *quirk;

	for (quirk = pci_serial_quirks; ; quirk++)
		if (FUNC0(quirk->vendor, dev->vendor) &&
		    FUNC0(quirk->device, dev->device) &&
		    FUNC0(quirk->subvendor, dev->subsystem_vendor) &&
		    FUNC0(quirk->subdevice, dev->subsystem_device))
			break;
	return quirk;
}