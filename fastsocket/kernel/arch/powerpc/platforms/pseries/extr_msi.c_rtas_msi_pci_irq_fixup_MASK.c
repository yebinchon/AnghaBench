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
struct pci_dev {scalar_t__ irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ NO_IRQ ; 
 scalar_t__ FUNC0 (struct pci_dev*,int) ; 
 scalar_t__ FUNC1 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pdev)
{
	/* No LSI -> leave MSIs (if any) configured */
	if (pdev->irq == NO_IRQ) {
		FUNC2(&pdev->dev, "rtas_msi: no LSI, nothing to do.\n");
		return;
	}

	/* No MSI -> MSIs can't have been assigned by fw, leave LSI */
	if (FUNC0(pdev, 1) && FUNC1(pdev, 1)) {
		FUNC2(&pdev->dev, "rtas_msi: no req#msi/x, nothing to do.\n");
		return;
	}

	FUNC2(&pdev->dev, "rtas_msi: disabling existing MSI.\n");
	FUNC3(pdev);
}