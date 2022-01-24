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
struct resource {scalar_t__ parent; } ;
struct pci_dev {struct resource* resource; } ;

/* Variables and functions */
 int PCI_NUM_RESOURCES ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct resource*) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *dev)
{
	int i;

 	FUNC0(dev);

	FUNC1(dev);
	for (i = 0; i < PCI_NUM_RESOURCES; i++) {
		struct resource *res = dev->resource + i;
		if (res->parent)
			FUNC2(res);
	}
}