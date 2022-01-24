#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char const* mod_name; struct module* owner; int /*<<< orphan*/ * bus; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  list; int /*<<< orphan*/  lock; } ;
struct pci_driver {TYPE_2__ driver; TYPE_1__ dynids; int /*<<< orphan*/  name; } ;
struct module {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  pci_bus_type ; 
 int FUNC3 (struct pci_driver*) ; 
 int FUNC4 (struct pci_driver*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_driver*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct pci_driver *drv, struct module *owner,
			  const char *mod_name)
{
	int error;

	/* initialize common driver fields */
	drv->driver.name = drv->name;
	drv->driver.bus = &pci_bus_type;
	drv->driver.owner = owner;
	drv->driver.mod_name = mod_name;

	FUNC6(&drv->dynids.lock);
	FUNC0(&drv->dynids.list);

	/* register with core */
	error = FUNC1(&drv->driver);
	if (error)
		goto out;

	error = FUNC3(drv);
	if (error)
		goto out_newid;

	error = FUNC4(drv);
	if (error)
		goto out_removeid;
out:
	return error;

out_removeid:
	FUNC5(drv);
out_newid:
	FUNC2(&drv->driver);
	goto out;
}