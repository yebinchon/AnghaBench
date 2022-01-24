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
typedef  scalar_t__ u16 ;
struct resource_list {int dummy; } ;
struct pci_dev {int class; } ;

/* Variables and functions */
 scalar_t__ PCI_CLASS_BRIDGE_HOST ; 
 scalar_t__ PCI_CLASS_NOT_DEFINED ; 
 scalar_t__ PCI_CLASS_SYSTEM_PIC ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 scalar_t__ PCI_COMMAND_IO ; 
 scalar_t__ PCI_COMMAND_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,struct resource_list*) ; 

__attribute__((used)) static void FUNC2(struct pci_dev *dev,
				 struct resource_list *head)
{
	u16 class = dev->class >> 8;

	/* Don't touch classless devices or host bridges or ioapics.  */
	if (class == PCI_CLASS_NOT_DEFINED || class == PCI_CLASS_BRIDGE_HOST)
		return;

	/* Don't touch ioapic devices already enabled by firmware */
	if (class == PCI_CLASS_SYSTEM_PIC) {
		u16 command;
		FUNC0(dev, PCI_COMMAND, &command);
		if (command & (PCI_COMMAND_IO | PCI_COMMAND_MEMORY))
			return;
	}

	FUNC1(dev, head);
}