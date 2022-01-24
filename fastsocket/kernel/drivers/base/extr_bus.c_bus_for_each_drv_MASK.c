#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct klist_iter {int dummy; } ;
struct device_driver {TYPE_2__* p; } ;
struct bus_type {TYPE_1__* p; } ;
struct TYPE_4__ {int /*<<< orphan*/  knode_bus; } ;
struct TYPE_3__ {int /*<<< orphan*/  klist_drivers; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct klist_iter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct klist_iter*,int /*<<< orphan*/ *) ; 
 struct device_driver* FUNC2 (struct klist_iter*) ; 

int FUNC3(struct bus_type *bus, struct device_driver *start,
		     void *data, int (*fn)(struct device_driver *, void *))
{
	struct klist_iter i;
	struct device_driver *drv;
	int error = 0;

	if (!bus)
		return -EINVAL;

	FUNC1(&bus->p->klist_drivers, &i,
			     start ? &start->p->knode_bus : NULL);
	while ((drv = FUNC2(&i)) && !error)
		error = fn(drv, data);
	FUNC0(&i);
	return error;
}