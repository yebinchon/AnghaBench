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
struct TYPE_2__ {struct module* owner; } ;
struct pci_driver {int /*<<< orphan*/  node; TYPE_1__ driver; } ;
struct module {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pci_driver*,struct module*,char const*) ; 
 int /*<<< orphan*/  ide_pci_drivers ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pre_init ; 

int FUNC2(struct pci_driver *driver, struct module *module,
			      const char *mod_name)
{
	if (!pre_init)
		return FUNC0(driver, module, mod_name);
	driver->driver.owner = module;
	FUNC1(&driver->node, &ide_pci_drivers);
	return 0;
}