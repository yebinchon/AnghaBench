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
struct pci_device_id {int dummy; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pci_dev*,struct pci_device_id const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kms_driver ; 
 int FUNC1 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC2(struct pci_dev *pdev,
			    const struct pci_device_id *ent)
{
	int ret;

	/* Get rid of things like offb */
	ret = FUNC1(pdev);
	if (ret)
		return ret;

	return FUNC0(pdev, ent, &kms_driver);
}