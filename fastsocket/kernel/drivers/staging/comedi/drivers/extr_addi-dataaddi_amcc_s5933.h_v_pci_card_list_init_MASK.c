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
struct pcilst_struct {unsigned short vendor; int /*<<< orphan*/  irq; int /*<<< orphan*/ * io_addr; int /*<<< orphan*/  pci_func; int /*<<< orphan*/  pci_slot; int /*<<< orphan*/  pci_bus; int /*<<< orphan*/  device; struct pcilst_struct* next; struct pci_dev* pcidev; } ;
struct pci_dev {unsigned short vendor; int /*<<< orphan*/  irq; int /*<<< orphan*/  devfn; TYPE_1__* bus; int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PCI_ANY_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct pcilst_struct* amcc_devices ; 
 unsigned short* i_ADDIDATADeviceID ; 
 struct pcilst_struct* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pcilst_struct*,int /*<<< orphan*/ ,int) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(unsigned short pci_vendor, char display)
{
	struct pci_dev *pcidev;
	struct pcilst_struct *amcc, *last;
	int i;
	int i_Count = 0;
	amcc_devices = NULL;
	last = NULL;

	for (pcidev = FUNC4(PCI_ANY_ID, PCI_ANY_ID, NULL);
	     pcidev != NULL;
	     pcidev = FUNC4(PCI_ANY_ID, PCI_ANY_ID, pcidev)) {
		for (i_Count = 0; i_Count < 2; i_Count++) {
			pci_vendor = i_ADDIDATADeviceID[i_Count];
			if (pcidev->vendor == pci_vendor) {
				amcc = FUNC2(sizeof(*amcc), GFP_KERNEL);
				if (amcc == NULL)
					continue;

				FUNC3(amcc, 0, sizeof(*amcc));

				amcc->pcidev = pcidev;
				if (last)
					last->next = amcc;
				else
					amcc_devices = amcc;
				last = amcc;

				amcc->vendor = pcidev->vendor;
				amcc->device = pcidev->device;
				amcc->pci_bus = pcidev->bus->number;
				amcc->pci_slot = FUNC1(pcidev->devfn);
				amcc->pci_func = FUNC0(pcidev->devfn);
				/* Note: resources may be invalid if PCI device
				 * not enabled, but they are corrected in
				 * pci_card_alloc. */
				for (i = 0; i < 5; i++)
					amcc->io_addr[i] =
					    FUNC5(pcidev, i);
				amcc->irq = pcidev->irq;

			}
		}
	}

	if (display)
		FUNC6();
}