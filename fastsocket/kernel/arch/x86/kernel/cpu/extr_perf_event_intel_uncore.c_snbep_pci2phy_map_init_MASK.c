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
typedef  int u32 ;
struct pci_dev {TYPE_1__* bus; } ;
struct TYPE_2__ {int number; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DEVICE_ID_INTEL_JAKETOWN_UBOX ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_INTEL ; 
 struct pci_dev* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int* pcibus_to_physid ; 

__attribute__((used)) static void FUNC2(void)
{
	struct pci_dev *ubox_dev = NULL;
	int i, bus, nodeid;
	u32 config;

	while (1) {
		/* find the UBOX device */
		ubox_dev = FUNC0(PCI_VENDOR_ID_INTEL,
					PCI_DEVICE_ID_INTEL_JAKETOWN_UBOX,
					ubox_dev);
		if (!ubox_dev)
			break;
		bus = ubox_dev->bus->number;
		/* get the Node ID of the local register */
		FUNC1(ubox_dev, 0x40, &config);
		nodeid = config;
		/* get the Node ID mapping */
		FUNC1(ubox_dev, 0x54, &config);
		/*
		 * every three bits in the Node ID mapping register maps
		 * to a particular node.
		 */
		for (i = 0; i < 8; i++) {
			if (nodeid == ((config >> (3 * i)) & 0x7)) {
				pcibus_to_physid[bus] = i;
				break;
			}
		}
	};
	return;
}