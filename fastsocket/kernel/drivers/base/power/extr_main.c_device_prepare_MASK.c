#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  sem; TYPE_6__* class; TYPE_4__* type; TYPE_2__* bus; } ;
typedef  int /*<<< orphan*/  pm_message_t ;
struct TYPE_12__ {TYPE_5__* pm; } ;
struct TYPE_11__ {int (* prepare ) (struct device*) ;} ;
struct TYPE_10__ {TYPE_3__* pm; } ;
struct TYPE_9__ {int (* prepare ) (struct device*) ;} ;
struct TYPE_8__ {TYPE_1__* pm; } ;
struct TYPE_7__ {int (* prepare ) (struct device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct device*) ; 
 int FUNC3 (struct device*) ; 
 int FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int (*) (struct device*),int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct device *dev, pm_message_t state)
{
	int error = 0;

	FUNC0(&dev->sem);

	if (dev->bus && dev->bus->pm && dev->bus->pm->prepare) {
		FUNC1(dev, state, "preparing ");
		error = dev->bus->pm->prepare(dev);
		FUNC5(dev->bus->pm->prepare, error);
		if (error)
			goto End;
	}

	if (dev->type && dev->type->pm && dev->type->pm->prepare) {
		FUNC1(dev, state, "preparing type ");
		error = dev->type->pm->prepare(dev);
		FUNC5(dev->type->pm->prepare, error);
		if (error)
			goto End;
	}

	if (dev->class && dev->class->pm && dev->class->pm->prepare) {
		FUNC1(dev, state, "preparing class ");
		error = dev->class->pm->prepare(dev);
		FUNC5(dev->class->pm->prepare, error);
	}
 End:
	FUNC6(&dev->sem);

	return error;
}