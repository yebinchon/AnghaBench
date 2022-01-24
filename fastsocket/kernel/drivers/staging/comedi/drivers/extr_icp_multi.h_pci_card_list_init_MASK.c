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
struct pcilst_struct {unsigned short vendor; int /*<<< orphan*/  irq; int /*<<< orphan*/ * io_addr; int /*<<< orphan*/  pci_func; int /*<<< orphan*/  pci_slot; int /*<<< orphan*/  pci_bus; int /*<<< orphan*/  device; struct pcilst_struct* next; int /*<<< orphan*/  pcidev; } ;
struct pci_dev {unsigned short vendor; int /*<<< orphan*/  irq; int /*<<< orphan*/  devfn; TYPE_1__* bus; int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PCI_ANY_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct pcilst_struct* inova_devices ; 
 struct pcilst_struct* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pcilst_struct*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 struct pci_dev* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(unsigned short pci_vendor, char display)
{
	struct pci_dev *pcidev;
	struct pcilst_struct *inova, *last;
	int i;

	inova_devices = NULL;
	last = NULL;

	for (pcidev = FUNC7(PCI_ANY_ID, PCI_ANY_ID, NULL);
	     pcidev != NULL;
	     pcidev = FUNC7(PCI_ANY_ID, PCI_ANY_ID, pcidev)) {
		if (pcidev->vendor == pci_vendor) {
			inova = FUNC2(sizeof(*inova), GFP_KERNEL);
			if (!inova) {
				FUNC9
				    ("icp_multi: pci_card_list_init: allocation failed\n");
				FUNC6(pcidev);
				break;
			}
			FUNC3(inova, 0, sizeof(*inova));

			inova->pcidev = FUNC5(pcidev);
			if (last) {
				last->next = inova;
			} else {
				inova_devices = inova;
			}
			last = inova;

			inova->vendor = pcidev->vendor;
			inova->device = pcidev->device;
			inova->pci_bus = pcidev->bus->number;
			inova->pci_slot = FUNC1(pcidev->devfn);
			inova->pci_func = FUNC0(pcidev->devfn);
			/* Note: resources may be invalid if PCI device
			 * not enabled, but they are corrected in
			 * pci_card_alloc. */
			for (i = 0; i < 5; i++)
				inova->io_addr[i] =
				    FUNC8(pcidev, i);
			inova->irq = pcidev->irq;
		}
	}

	if (display)
		FUNC4();
}