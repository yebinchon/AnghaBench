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
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  MTIP_DDF_RESUME_BIT ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 struct driver_data* FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct pci_dev *pdev, pm_message_t mesg)
{
	int rv = 0;
	struct driver_data *dd = FUNC3(pdev);

	if (!dd) {
		FUNC0(&pdev->dev,
			"Driver private datastructure is NULL\n");
		return -EFAULT;
	}

	FUNC6(MTIP_DDF_RESUME_BIT, &dd->dd_flag);

	/* Disable ports & interrupts then send standby immediate */
	rv = FUNC1(dd);
	if (rv < 0) {
		FUNC0(&pdev->dev,
			"Failed to suspend controller\n");
		return rv;
	}

	/*
	 * Save the pci config space to pdev structure &
	 * disable the device
	 */
	FUNC4(pdev);
	FUNC2(pdev);

	/* Move to Low power state*/
	FUNC5(pdev, PCI_D3hot);

	return rv;
}