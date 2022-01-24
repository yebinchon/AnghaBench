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
struct pci_dev {scalar_t__ vendor; } ;
struct mite_struct {struct mite_struct* next; TYPE_1__* channels; int /*<<< orphan*/  pcidev; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {unsigned int channel; int done; struct mite_struct* mite; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int MAX_MITE_DMA_CHANNELS ; 
 int /*<<< orphan*/  PCI_ANY_ID ; 
 scalar_t__ PCI_VENDOR_ID_NATINST ; 
 struct mite_struct* FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct mite_struct* mite_devices ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(void)
{
	struct pci_dev *pcidev;
	struct mite_struct *mite;

	for (pcidev = FUNC3(PCI_ANY_ID, PCI_ANY_ID, NULL);
	     pcidev != NULL;
	     pcidev = FUNC3(PCI_ANY_ID, PCI_ANY_ID, pcidev)) {
		if (pcidev->vendor == PCI_VENDOR_ID_NATINST) {
			unsigned i;

			mite = FUNC0(sizeof(*mite), GFP_KERNEL);
			if (!mite) {
				FUNC4("mite: allocation failed\n");
				FUNC2(pcidev);
				return;
			}
			FUNC5(&mite->lock);
			mite->pcidev = FUNC1(pcidev);
			for (i = 0; i < MAX_MITE_DMA_CHANNELS; ++i) {
				mite->channels[i].mite = mite;
				mite->channels[i].channel = i;
				mite->channels[i].done = 1;
			}
			mite->next = mite_devices;
			mite_devices = mite;
		}
	}
}