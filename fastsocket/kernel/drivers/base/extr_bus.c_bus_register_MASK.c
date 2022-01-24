#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * ktype; int /*<<< orphan*/  kset; } ;
struct TYPE_5__ {TYPE_3__ kobj; } ;
struct bus_type_private {int drivers_autoprobe; TYPE_1__ subsys; TYPE_1__* devices_kset; TYPE_1__* drivers_kset; int /*<<< orphan*/  klist_drivers; int /*<<< orphan*/  klist_devices; int /*<<< orphan*/  bus_notifier; struct bus_type* bus; } ;
struct bus_type {struct bus_type_private* p; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct bus_type*) ; 
 int FUNC2 (struct bus_type*) ; 
 int /*<<< orphan*/  bus_attr_uevent ; 
 int FUNC3 (struct bus_type*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bus_kset ; 
 int /*<<< orphan*/  bus_ktype ; 
 int /*<<< orphan*/  FUNC4 (struct bus_type*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bus_type_private*) ; 
 int /*<<< orphan*/ * klist_devices_get ; 
 int /*<<< orphan*/ * klist_devices_put ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (char*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 struct bus_type_private* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct bus_type*) ; 

int FUNC14(struct bus_type *bus)
{
	int retval;
	struct bus_type_private *priv;

	priv = FUNC11(sizeof(struct bus_type_private), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->bus = bus;
	bus->p = priv;

	FUNC0(&priv->bus_notifier);

	retval = FUNC7(&priv->subsys.kobj, "%s", bus->name);
	if (retval)
		goto out;

	priv->subsys.kobj.kset = bus_kset;
	priv->subsys.kobj.ktype = &bus_ktype;
	priv->drivers_autoprobe = 1;

	retval = FUNC9(&priv->subsys);
	if (retval)
		goto out;

	retval = FUNC3(bus, &bus_attr_uevent);
	if (retval)
		goto bus_uevent_fail;

	priv->devices_kset = FUNC8("devices", NULL,
						 &priv->subsys.kobj);
	if (!priv->devices_kset) {
		retval = -ENOMEM;
		goto bus_devices_fail;
	}

	priv->drivers_kset = FUNC8("drivers", NULL,
						 &priv->subsys.kobj);
	if (!priv->drivers_kset) {
		retval = -ENOMEM;
		goto bus_drivers_fail;
	}

	FUNC6(&priv->klist_devices, klist_devices_get, klist_devices_put);
	FUNC6(&priv->klist_drivers, NULL, NULL);

	retval = FUNC1(bus);
	if (retval)
		goto bus_probe_files_fail;

	retval = FUNC2(bus);
	if (retval)
		goto bus_attrs_fail;

	FUNC12("bus: '%s': registered\n", bus->name);
	return 0;

bus_attrs_fail:
	FUNC13(bus);
bus_probe_files_fail:
	FUNC10(bus->p->drivers_kset);
bus_drivers_fail:
	FUNC10(bus->p->devices_kset);
bus_devices_fail:
	FUNC4(bus, &bus_attr_uevent);
bus_uevent_fail:
	FUNC10(&bus->p->subsys);
	FUNC5(bus->p);
out:
	bus->p = NULL;
	return retval;
}