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
struct lpfc_hba {struct pci_dev* pcidev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int) ; 
 int FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct lpfc_hba *phba)
{
	struct pci_dev *pdev;
	int bars;

	/* Obtain PCI device reference */
	if (!phba->pcidev)
		return;
	else
		pdev = phba->pcidev;
	/* Select PCI BARs */
	bars = FUNC2(pdev, IORESOURCE_MEM);
	/* Release PCI resource and disable PCI device */
	FUNC1(pdev, bars);
	FUNC0(pdev);
	/* Null out PCI private reference to driver */
	FUNC3(pdev, NULL);

	return;
}