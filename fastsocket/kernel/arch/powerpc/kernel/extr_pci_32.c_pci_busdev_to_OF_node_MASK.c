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
struct pci_bus {int /*<<< orphan*/  number; } ;
struct device_node {char* full_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 struct device_node* FUNC2 (struct pci_bus*) ; 
 struct device_node* FUNC3 (struct device_node*,int) ; 

struct device_node *
FUNC4(struct pci_bus *bus, int devfn)
{
	struct device_node *parent, *np;

	FUNC1("pci_busdev_to_OF_node(%d,0x%x)\n", bus->number, devfn);
	parent = FUNC2(bus);
	if (parent == NULL)
		return NULL;
	FUNC1(" parent is %s\n", parent ? parent->full_name : "<NULL>");
	np = FUNC3(parent, devfn);
	FUNC0(parent);
	FUNC1(" result is %s\n", np ? np->full_name : "<NULL>");

	/* XXX most callers don't release the returned node
	 * mostly because ppc64 doesn't increase the refcount,
	 * we need to fix that.
	 */
	return np;
}