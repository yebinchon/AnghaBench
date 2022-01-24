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
struct pci_dev {int /*<<< orphan*/  dev; scalar_t__ msi_enabled; int /*<<< orphan*/  msix_enabled; } ;
struct msix_entry {int entry; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PCI_CAP_ID_MSIX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct pci_dev*,struct msix_entry*,int) ; 
 int FUNC3 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pci_dev*) ; 

int FUNC5(struct pci_dev *dev, struct msix_entry *entries, int nvec)
{
	int status, nr_entries;
	int i, j;

	if (!entries)
		return -EINVAL;

	status = FUNC3(dev, nvec, PCI_CAP_ID_MSIX);
	if (status)
		return status;

	nr_entries = FUNC4(dev);
	if (nvec > nr_entries)
		return nr_entries;

	/* Check for any invalid entries */
	for (i = 0; i < nvec; i++) {
		if (entries[i].entry >= nr_entries)
			return -EINVAL;		/* invalid entry */
		for (j = i + 1; j < nvec; j++) {
			if (entries[i].entry == entries[j].entry)
				return -EINVAL;	/* duplicate entry */
		}
	}
	FUNC0(!!dev->msix_enabled);

	/* Check whether driver already requested for MSI irq */
	if (dev->msi_enabled) {
		FUNC1(&dev->dev, "can't enable MSI-X "
		       "(MSI IRQ already assigned)\n");
		return -EINVAL;
	}
	status = FUNC2(dev, entries, nvec);
	return status;
}