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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct driver_data {int /*<<< orphan*/  dd_flag; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  MTIP_DDF_RESUME_BIT ; 
 int /*<<< orphan*/  PCI_D0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct driver_data*) ; 
 struct driver_data* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC8(struct pci_dev *pdev)
{
	int rv = 0;
	struct driver_data *dd;

	dd = FUNC3(pdev);
	if (!dd) {
		FUNC1(&pdev->dev,
			"Driver private datastructure is NULL\n");
		return -EFAULT;
	}

	/* Move the device to active State */
	FUNC6(pdev, PCI_D0);

	/* Restore PCI configuration space */
	FUNC4(pdev);

	/* Enable the PCI device*/
	rv = FUNC7(pdev);
	if (rv < 0) {
		FUNC1(&pdev->dev,
			"Failed to enable card during resume\n");
		goto err;
	}
	FUNC5(pdev);

	/*
	 * Calls hbaReset, initPort, & startPort function
	 * then enables interrupts
	 */
	rv = FUNC2(dd);
	if (rv < 0)
		FUNC1(&pdev->dev, "Unable to resume\n");

err:
	FUNC0(MTIP_DDF_RESUME_BIT, &dd->dd_flag);

	return rv;
}