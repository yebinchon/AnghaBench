#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {struct TYPE_11__* parent; } ;
struct device {TYPE_5__ kobj; TYPE_4__* class; TYPE_1__* parent; } ;
struct TYPE_10__ {TYPE_3__* p; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {TYPE_5__ kobj; } ;
struct TYPE_9__ {TYPE_2__ class_subsys; } ;
struct TYPE_7__ {TYPE_5__ kobj; } ;

/* Variables and functions */
 char* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,char*) ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	if (!dev->class)
		return;

#ifdef CONFIG_SYSFS_DEPRECATED
	if (dev->parent && device_is_not_partition(dev)) {
		char *class_name;

		class_name = make_class_name(dev->class->name, &dev->kobj);
		if (class_name) {
			sysfs_remove_link(&dev->parent->kobj, class_name);
			kfree(class_name);
		}
		sysfs_remove_link(&dev->kobj, "device");
	}

	if (dev->kobj.parent != &dev->class->p->class_subsys.kobj &&
	    device_is_not_partition(dev))
		sysfs_remove_link(&dev->class->p->class_subsys.kobj,
				  dev_name(dev));
#else
	if (dev->parent && FUNC1(dev))
		FUNC4(&dev->kobj, "device");

	FUNC4(&dev->class->p->class_subsys.kobj, FUNC0(dev));
#endif

	FUNC4(&dev->kobj, "subsystem");
}