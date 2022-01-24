#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct device {TYPE_6__* bus; int /*<<< orphan*/  kobj; TYPE_3__* p; } ;
struct bus_type {TYPE_5__* p; int /*<<< orphan*/  name; } ;
struct TYPE_13__ {TYPE_2__* p; } ;
struct TYPE_12__ {TYPE_4__* devices_kset; int /*<<< orphan*/  klist_devices; } ;
struct TYPE_11__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_10__ {int /*<<< orphan*/  knode_bus; } ;
struct TYPE_8__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_9__ {TYPE_1__ subsys; } ;

/* Variables and functions */
 struct bus_type* FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 char* FUNC2 (struct device*) ; 
 int FUNC3 (struct bus_type*,struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct bus_type*,struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 

int FUNC10(struct device *dev)
{
	struct bus_type *bus = FUNC0(dev->bus);
	int error = 0;

	if (bus) {
		FUNC7("bus: '%s': add device %s\n", bus->name, FUNC2(dev));
		error = FUNC3(bus, dev);
		if (error)
			goto out_put;
		error = FUNC8(&bus->p->devices_kset->kobj,
						&dev->kobj, FUNC2(dev));
		if (error)
			goto out_id;
		error = FUNC8(&dev->kobj,
				&dev->bus->p->subsys.kobj, "subsystem");
		if (error)
			goto out_subsys;
		error = FUNC6(dev);
		if (error)
			goto out_deprecated;
		FUNC5(&dev->p->knode_bus, &bus->p->klist_devices);
	}
	return 0;

out_deprecated:
	FUNC9(&dev->kobj, "subsystem");
out_subsys:
	FUNC9(&bus->p->devices_kset->kobj, FUNC2(dev));
out_id:
	FUNC4(bus, dev);
out_put:
	FUNC1(dev->bus);
	return error;
}