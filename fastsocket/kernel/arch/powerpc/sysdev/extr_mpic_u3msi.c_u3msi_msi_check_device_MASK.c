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
 int ENXIO ; 
 int PCI_CAP_ID_MSIX ; 
 scalar_t__ FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int FUNC3(struct pci_dev *pdev, int nvec, int type)
{
	if (type == PCI_CAP_ID_MSIX)
		FUNC2("u3msi: MSI-X untested, trying anyway.\n");

	/* If we can't find a magic address then MSI ain't gonna work */
	if (FUNC0(pdev) == 0) {
		FUNC2("u3msi: no magic address found for %s\n",
			 FUNC1(pdev));
		return -ENXIO;
	}

	return 0;
}