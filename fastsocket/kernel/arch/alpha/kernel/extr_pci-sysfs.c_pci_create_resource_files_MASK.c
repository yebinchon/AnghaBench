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
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int PCI_ROM_RESOURCE ; 
 int FUNC0 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int) ; 

int FUNC3(struct pci_dev *pdev)
{
	int i;
	int retval;

	/* Expose the PCI resources from this device as files */
	for (i = 0; i < PCI_ROM_RESOURCE; i++) {

		/* skip empty resources */
		if (!FUNC2(pdev, i))
			continue;

		retval = FUNC0(pdev, i);
		if (retval) {
			FUNC1(pdev);
			return retval;
		}
	}
	return 0;
}