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
struct module {int dummy; } ;
struct TYPE_2__ {char const* mod_name; int /*<<< orphan*/ * bus; struct module* owner; int /*<<< orphan*/  name; } ;
struct hv_driver {TYPE_1__ driver; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  hv_bus ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 

int FUNC3(struct hv_driver *hv_driver, struct module *owner, const char *mod_name)
{
	int ret;

	FUNC1("registering driver %s\n", hv_driver->name);

	ret = FUNC2();
	if (ret < 0)
		return ret;

	hv_driver->driver.name = hv_driver->name;
	hv_driver->driver.owner = owner;
	hv_driver->driver.mod_name = mod_name;
	hv_driver->driver.bus = &hv_bus;

	ret = FUNC0(&hv_driver->driver);

	return ret;
}