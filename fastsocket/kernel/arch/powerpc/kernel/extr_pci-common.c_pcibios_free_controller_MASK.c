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
struct pci_controller {scalar_t__ is_dynamic; int /*<<< orphan*/  list_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  hose_spinlock ; 
 int /*<<< orphan*/  FUNC0 (struct pci_controller*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct pci_controller *phb)
{
	FUNC2(&hose_spinlock);
	FUNC1(&phb->list_node);
	FUNC3(&hose_spinlock);

	if (phb->is_dynamic)
		FUNC0(phb);
}