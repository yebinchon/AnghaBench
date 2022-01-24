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
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device_driver {int /*<<< orphan*/  (* remove ) (struct device*) ;} ;
struct device {TYPE_3__* bus; TYPE_1__* p; struct device_driver* driver; } ;
struct TYPE_6__ {TYPE_2__* p; int /*<<< orphan*/  (* remove ) (struct device*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  bus_notifier; } ;
struct TYPE_4__ {int /*<<< orphan*/  knode_driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_NOTIFY_UNBIND_DRIVER ; 
 int /*<<< orphan*/  BUS_NOTIFY_UNBOUND_DRIVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 

__attribute__((used)) static void FUNC9(struct device *dev)
{
	struct device_driver *drv;

	drv = dev->driver;
	if (drv) {
		FUNC5(dev);
		FUNC4(dev);

		FUNC2(dev);

		if (dev->bus)
			FUNC0(&dev->bus->p->bus_notifier,
						     BUS_NOTIFY_UNBIND_DRIVER,
						     dev);

		if (dev->bus && dev->bus->remove)
			dev->bus->remove(dev);
		else if (drv->remove)
			drv->remove(dev);
		FUNC1(dev);
		dev->driver = NULL;
		FUNC3(&dev->p->knode_driver);
		if (dev->bus)
			FUNC0(&dev->bus->p->bus_notifier,
						     BUS_NOTIFY_UNBOUND_DRIVER,
						     dev);

		FUNC6(dev);
	}
}