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
struct proc_dir_entry {int /*<<< orphan*/  size; } ;
struct pci_dev {struct proc_dir_entry* procent; int /*<<< orphan*/  cfg_size; int /*<<< orphan*/  devfn; struct pci_bus* bus; } ;
struct pci_bus {int number; scalar_t__ procdir; } ;

/* Variables and functions */
 int EACCES ; 
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int S_IFREG ; 
 int S_IRUGO ; 
 int S_IWUSR ; 
 int FUNC2 (struct pci_bus*) ; 
 scalar_t__ FUNC3 (struct pci_bus*) ; 
 int /*<<< orphan*/  proc_bus_pci_dir ; 
 int /*<<< orphan*/  proc_bus_pci_operations ; 
 struct proc_dir_entry* FUNC4 (char*,int,scalar_t__,int /*<<< orphan*/ *,struct pci_dev*) ; 
 int /*<<< orphan*/  proc_initialized ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int,...) ; 

int FUNC7(struct pci_dev *dev)
{
	struct pci_bus *bus = dev->bus;
	struct proc_dir_entry *e;
	char name[16];

	if (!proc_initialized)
		return -EACCES;

	if (!bus->procdir) {
		if (FUNC3(bus)) {
			FUNC6(name, "%04x:%02x", FUNC2(bus),
					bus->number);
		} else {
			FUNC6(name, "%02x", bus->number);
		}
		bus->procdir = FUNC5(name, proc_bus_pci_dir);
		if (!bus->procdir)
			return -ENOMEM;
	}

	FUNC6(name, "%02x.%x", FUNC1(dev->devfn), FUNC0(dev->devfn));
	e = FUNC4(name, S_IFREG | S_IRUGO | S_IWUSR, bus->procdir,
			     &proc_bus_pci_operations, dev);
	if (!e)
		return -ENOMEM;
	e->size = dev->cfg_size;
	dev->procent = e;

	return 0;
}