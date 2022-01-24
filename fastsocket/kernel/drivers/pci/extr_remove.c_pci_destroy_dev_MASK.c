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
struct TYPE_2__ {int /*<<< orphan*/ * prev; int /*<<< orphan*/  next; } ;
struct pci_dev {TYPE_1__ bus_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  pci_bus_sem ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *dev)
{
	/* Remove the device from the device lists, and prevent any further
	 * list accesses from this device */
	FUNC0(&pci_bus_sem);
	FUNC1(&dev->bus_list);
	dev->bus_list.next = *(dev->bus_list.prev = NULL);
	FUNC4(&pci_bus_sem);

	FUNC3(dev);
	FUNC2(dev);
}