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
struct pci_devres {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct pci_devres* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  pcim_release ; 

__attribute__((used)) static struct pci_devres * FUNC2(struct pci_dev *pdev)
{
	if (FUNC1(pdev))
		return FUNC0(&pdev->dev, pcim_release, NULL, NULL);
	return NULL;
}