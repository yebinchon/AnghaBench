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
struct device {int /*<<< orphan*/  sem; int /*<<< orphan*/  bus; int /*<<< orphan*/ * driver; TYPE_1__* p; } ;
struct TYPE_2__ {int /*<<< orphan*/  knode_driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  __device_attach ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct device *dev)
{
	int ret = 0;

	FUNC2(&dev->sem);
	if (dev->driver) {
		if (FUNC3(&dev->p->knode_driver)) {
			ret = 1;
			goto out_unlock;
		}
		ret = FUNC1(dev);
		if (ret == 0)
			ret = 1;
		else {
			dev->driver = NULL;
			ret = 0;
		}
	} else {
		FUNC4(dev);
		ret = FUNC0(dev->bus, NULL, dev, __device_attach);
		FUNC5(dev);
	}
out_unlock:
	FUNC6(&dev->sem);
	return ret;
}