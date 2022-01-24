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
typedef  int u16 ;
struct qib_devdata {int msi_data; int /*<<< orphan*/  msi_hi; int /*<<< orphan*/  msi_lo; struct pci_dev* pcidev; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ PCI_MSI_ADDRESS_HI ; 
 scalar_t__ PCI_MSI_ADDRESS_LO ; 
 int PCI_MSI_FLAGS ; 
 int PCI_MSI_FLAGS_64BIT ; 
 int FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct qib_devdata*,char*,int) ; 

__attribute__((used)) static int FUNC4(struct qib_devdata *dd, int pos)
{
	struct pci_dev *pdev = dd->pcidev;
	u16 control;
	int ret;

	ret = FUNC0(pdev);
	if (ret)
		FUNC3(dd,
			"pci_enable_msi failed: %d, interrupts may not work\n",
			ret);
	/* continue even if it fails, we may still be OK... */

	FUNC1(pdev, pos + PCI_MSI_ADDRESS_LO,
			      &dd->msi_lo);
	FUNC1(pdev, pos + PCI_MSI_ADDRESS_HI,
			      &dd->msi_hi);
	FUNC2(pdev, pos + PCI_MSI_FLAGS, &control);
	/* now save the data (vector) info */
	FUNC2(pdev, pos + ((control & PCI_MSI_FLAGS_64BIT)
				    ? 12 : 8),
			     &dd->msi_data);
	return ret;
}