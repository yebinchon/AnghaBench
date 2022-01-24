#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct module {int dummy; } ;
struct TYPE_4__ {char const* mod_name; struct module* owner; int /*<<< orphan*/ * bus; int /*<<< orphan*/  name; } ;
struct hid_driver {TYPE_1__ driver; int /*<<< orphan*/  dyn_lock; int /*<<< orphan*/  dyn_list; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  driver_attr_new_id ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  hid_bus_type ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct hid_driver *hdrv, struct module *owner,
		const char *mod_name)
{
	int ret;

	hdrv->driver.name = hdrv->name;
	hdrv->driver.bus = &hid_bus_type;
	hdrv->driver.owner = owner;
	hdrv->driver.mod_name = mod_name;

	FUNC0(&hdrv->dyn_list);
	FUNC4(&hdrv->dyn_lock);

	ret = FUNC2(&hdrv->driver);
	if (ret)
		return ret;

	ret = FUNC1(&hdrv->driver, &driver_attr_new_id);
	if (ret)
		FUNC3(&hdrv->driver);

	return ret;
}