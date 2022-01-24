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
struct pci_dev {int dummy; } ;
struct device_node {int /*<<< orphan*/  full_name; } ;

/* Variables and functions */
 struct device_node* FUNC0 (struct device_node*) ; 
 int* FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct device_node *FUNC5(struct pci_dev *dev, int *total)
{
	struct device_node *dn;
	const u32 *p;

	dn = FUNC2(FUNC3(dev));
	while (dn) {
		p = FUNC1(dn, "ibm,pe-total-#msi", NULL);
		if (p) {
			FUNC4("rtas_msi: found prop on dn %s\n",
				dn->full_name);
			*total = *p;
			return dn;
		}

		dn = FUNC0(dn);
	}

	return NULL;
}