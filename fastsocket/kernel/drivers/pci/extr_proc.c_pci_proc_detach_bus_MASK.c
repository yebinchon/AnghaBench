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
struct proc_dir_entry {int /*<<< orphan*/  name; } ;
struct pci_bus {struct proc_dir_entry* procdir; } ;

/* Variables and functions */
 int /*<<< orphan*/  proc_bus_pci_dir ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(struct pci_bus* bus)
{
	struct proc_dir_entry *de = bus->procdir;
	if (de)
		FUNC0(de->name, proc_bus_pci_dir);
	return 0;
}