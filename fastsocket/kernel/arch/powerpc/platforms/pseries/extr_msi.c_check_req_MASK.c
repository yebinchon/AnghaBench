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
typedef  int u32 ;
struct pci_dn {struct device_node* node; } ;
struct pci_dev {int dummy; } ;
struct device_node {int full_name; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOENT ; 
 int ENOSPC ; 
 struct pci_dn* FUNC0 (struct pci_dev*) ; 
 int* FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static int FUNC3(struct pci_dev *pdev, int nvec, char *prop_name)
{
	struct device_node *dn;
	struct pci_dn *pdn;
	const u32 *req_msi;

	pdn = FUNC0(pdev);
	if (!pdn)
		return -ENODEV;

	dn = pdn->node;

	req_msi = FUNC1(dn, prop_name, NULL);
	if (!req_msi) {
		FUNC2("rtas_msi: No %s on %s\n", prop_name, dn->full_name);
		return -ENOENT;
	}

	if (*req_msi < nvec) {
		FUNC2("rtas_msi: %s requests < %d MSIs\n", prop_name, nvec);

		if (*req_msi == 0) /* Be paranoid */
			return -ENOSPC;

		return *req_msi;
	}

	return 0;
}