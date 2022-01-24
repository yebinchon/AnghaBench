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
struct pci_devres {int enabled; } ;
struct pci_dev {int is_managed; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct pci_devres* FUNC0 (struct pci_dev*) ; 
 int FUNC1 (struct pci_dev*) ; 
 scalar_t__ FUNC2 (int) ; 

int FUNC3(struct pci_dev *pdev)
{
	struct pci_devres *dr;
	int rc;

	dr = FUNC0(pdev);
	if (FUNC2(!dr))
		return -ENOMEM;
	if (dr->enabled)
		return 0;

	rc = FUNC1(pdev);
	if (!rc) {
		pdev->is_managed = 1;
		dr->enabled = 1;
	}
	return rc;
}