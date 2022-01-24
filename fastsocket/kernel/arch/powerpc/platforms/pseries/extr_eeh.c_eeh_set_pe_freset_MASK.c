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
struct pci_dev {unsigned int needs_freset; } ;
struct device_node {struct device_node* parent; } ;
struct TYPE_2__ {struct pci_dev* pcidev; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,unsigned int*) ; 
 struct device_node* FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 

void FUNC4(struct device_node *dn, unsigned int *freset)
{
	struct pci_dev *dev;
	dn = FUNC2(dn);

	/* Back up one, since config addrs might be shared */
	if (!FUNC3(dn) && FUNC0(dn->parent))
		dn = dn->parent;

	dev = FUNC0(dn)->pcidev;
	if (dev)
		*freset |= dev->needs_freset;

	FUNC1(dn, freset);
}