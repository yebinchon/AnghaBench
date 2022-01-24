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
struct pci_driver {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_driver*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_driver*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_driver*) ; 

void
FUNC4(struct pci_driver *drv)
{
	FUNC3(drv);
	FUNC2(drv);
	FUNC0(&drv->driver);
	FUNC1(drv);
}