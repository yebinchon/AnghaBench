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
struct pci_dn {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 struct pci_dn* FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct device_node* FUNC2 (struct pci_dev*) ; 

__attribute__((used)) static struct pci_dn *FUNC3(struct pci_dev *pdev)
{
	struct device_node *dn;
	struct pci_dn *pdn;

	dn = FUNC2(pdev);
	if (!dn) {
		FUNC1(&pdev->dev, "rtas_msi: No OF device node\n");
		return NULL;
	}

	pdn = FUNC0(dn);
	if (!pdn) {
		FUNC1(&pdev->dev, "rtas_msi: No PCI DN\n");
		return NULL;
	}

	return pdn;
}