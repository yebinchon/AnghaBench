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
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  device_id; int /*<<< orphan*/  vendor_id; int /*<<< orphan*/  hw_revision; int /*<<< orphan*/  serial_no; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int PCIBIOS_SUCCESSFUL ; 
 TYPE_1__* info ; 
 int FUNC1 (struct pci_dev*,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct pci_dev*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev, struct pci_dev *pci_dev_p)
{
	int result;

	FUNC0("In init_board_info()\n");

	/* Init spin locks */
	/* spin_lock_init(&info->preload_lock); */
	/* spin_lock_init(&info->ai_ctrl_lock); */

	/* Get the serial number */
	result = FUNC2(pci_dev_p, 0x2C, &info->serial_no);
	if (result != PCIBIOS_SUCCESSFUL)
		return result;

	/* Get the hardware revision */
	result = FUNC1(pci_dev_p, 0x08, &info->hw_revision);
	if (result != PCIBIOS_SUCCESSFUL)
		return result;

	/* Get the vendor id */
	info->vendor_id = pci_dev_p->vendor;

	/* Get the device id */
	info->device_id = pci_dev_p->device;

	/* Get the irq assigned to the board */
	info->irq = pci_dev_p->irq;

	return 0;
}