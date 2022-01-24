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
struct device_driver {TYPE_1__* p; } ;
struct device {TYPE_2__* p; } ;
struct TYPE_4__ {int /*<<< orphan*/  knode_driver; } ;
struct TYPE_3__ {int /*<<< orphan*/  klist_devices; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct klist_iter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct klist_iter*,int /*<<< orphan*/ *) ; 
 struct device* FUNC2 (struct klist_iter*) ; 

int FUNC3(struct device_driver *drv, struct device *start,
			   void *data, int (*fn)(struct device *, void *))
{
	struct klist_iter i;
	struct device *dev;
	int error = 0;

	if (!drv)
		return -EINVAL;

	FUNC1(&drv->p->klist_devices, &i,
			     start ? &start->p->knode_driver : NULL);
	while ((dev = FUNC2(&i)) && !error)
		error = fn(dev, data);
	FUNC0(&i);
	return error;
}