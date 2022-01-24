#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct device {TYPE_4__* bus; TYPE_3__* p; int /*<<< orphan*/  kobj; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; TYPE_2__* p; } ;
struct TYPE_8__ {int /*<<< orphan*/  knode_bus; } ;
struct TYPE_7__ {TYPE_1__* devices_kset; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 char* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 

void FUNC9(struct device *dev)
{
	if (dev->bus) {
		FUNC8(&dev->kobj, "subsystem");
		FUNC7(dev);
		FUNC8(&dev->bus->p->devices_kset->kobj,
				  FUNC1(dev));
		FUNC3(dev->bus, dev);
		if (FUNC5(&dev->p->knode_bus))
			FUNC4(&dev->p->knode_bus);

		FUNC6("bus: '%s': remove device %s\n",
			 dev->bus->name, FUNC1(dev));
		FUNC2(dev);
		FUNC0(dev->bus);
	}
}