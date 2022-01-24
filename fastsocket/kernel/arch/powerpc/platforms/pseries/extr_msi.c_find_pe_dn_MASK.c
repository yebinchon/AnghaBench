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
struct device_node {int /*<<< orphan*/  full_name; } ;

/* Variables and functions */
 struct device_node* FUNC0 (struct device_node*) ; 
 struct device_node* FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct device_node *FUNC4(struct pci_dev *dev, int *total)
{
	struct device_node *dn;

	/* Found our PE and assume 8 at that point. */

	dn = FUNC2(dev);
	if (!dn)
		return NULL;

	dn = FUNC0(dn);
	if (!dn)
		return NULL;

	/* We actually want the parent */
	dn = FUNC1(dn);
	if (!dn)
		return NULL;

	/* Hardcode of 8 for old firmwares */
	*total = 8;
	FUNC3("rtas_msi: using PE dn %s\n", dn->full_name);

	return dn;
}