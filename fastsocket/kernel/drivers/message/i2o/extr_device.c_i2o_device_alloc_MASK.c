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
struct TYPE_2__ {int /*<<< orphan*/ * release; int /*<<< orphan*/ * bus; } ;
struct i2o_device {TYPE_1__ device; int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct i2o_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  i2o_bus_type ; 
 int /*<<< orphan*/  i2o_device_release ; 
 struct i2o_device* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct i2o_device *FUNC4(void)
{
	struct i2o_device *dev;

	dev = FUNC2(sizeof(*dev), GFP_KERNEL);
	if (!dev)
		return FUNC0(-ENOMEM);

	FUNC1(&dev->list);
	FUNC3(&dev->lock);

	dev->device.bus = &i2o_bus_type;
	dev->device.release = &i2o_device_release;

	return dev;
}