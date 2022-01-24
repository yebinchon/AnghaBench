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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_CAP_ID_MSI ; 
 int /*<<< orphan*/  PCI_CAP_ID_MSIX ; 
 scalar_t__ PCI_MSIX_FLAGS ; 
 int /*<<< orphan*/  PCI_MSIX_FLAGS_ENABLE ; 
 scalar_t__ PCI_MSI_FLAGS ; 
 int /*<<< orphan*/  PCI_MSI_FLAGS_ENABLE ; 
 int FUNC0 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC3(struct pci_dev *dev)
{
	int pos;
	u16 control;

	pos = FUNC0(dev, PCI_CAP_ID_MSI);
	if (pos) {
		FUNC1(dev, pos + PCI_MSI_FLAGS, &control);
		control &= ~PCI_MSI_FLAGS_ENABLE;
		FUNC2(dev, pos + PCI_MSI_FLAGS, control);
	}
	pos = FUNC0(dev, PCI_CAP_ID_MSIX);
	if (pos) {
		FUNC1(dev, pos + PCI_MSIX_FLAGS, &control);
		control &= ~PCI_MSIX_FLAGS_ENABLE;
		FUNC2(dev, pos + PCI_MSIX_FLAGS, control);
	}
}