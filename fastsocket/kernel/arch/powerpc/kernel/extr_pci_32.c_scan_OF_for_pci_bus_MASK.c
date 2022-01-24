#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pci_controller {int /*<<< orphan*/  dn; } ;
struct pci_bus {TYPE_1__* self; struct pci_bus* parent; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  devfn; } ;

/* Variables and functions */
 struct device_node* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 struct pci_controller* FUNC2 (struct pci_bus*) ; 
 struct device_node* FUNC3 (struct device_node*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct device_node *FUNC4(struct pci_bus *bus)
{
	struct device_node *parent, *np;

	/* Are we a root bus ? */
	if (bus->self == NULL || bus->parent == NULL) {
		struct pci_controller *hose = FUNC2(bus);
		if (hose == NULL)
			return NULL;
		return FUNC0(hose->dn);
	}

	/* not a root bus, we need to get our parent */
	parent = FUNC4(bus->parent);
	if (parent == NULL)
		return NULL;

	/* now iterate for children for a match */
	np = FUNC3(parent, bus->self->devfn);
	FUNC1(parent);

	return np;
}