#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ipath_devdata {int ipath_flags; } ;
struct device {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int IPATH_HAS_MULT_IB_SPEED ; 
 int /*<<< orphan*/  dev_attr_group ; 
 int /*<<< orphan*/  dev_attr_jint_idle_ticks ; 
 int /*<<< orphan*/  dev_attr_jint_max_packets ; 
 int /*<<< orphan*/  dev_counter_attr_group ; 
 int /*<<< orphan*/  dev_ibcfg_attr_group ; 
 int FUNC0 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4(struct device *dev, struct ipath_devdata *dd)
{
	int ret;

	ret = FUNC2(&dev->kobj, &dev_attr_group);
	if (ret)
		goto bail;

	ret = FUNC2(&dev->kobj, &dev_counter_attr_group);
	if (ret)
		goto bail_attrs;

	if (dd->ipath_flags & IPATH_HAS_MULT_IB_SPEED) {
		ret = FUNC0(dev, &dev_attr_jint_idle_ticks);
		if (ret)
			goto bail_counter;
		ret = FUNC0(dev, &dev_attr_jint_max_packets);
		if (ret)
			goto bail_idle;

		ret = FUNC2(&dev->kobj, &dev_ibcfg_attr_group);
		if (ret)
			goto bail_max;
	}

	return 0;

bail_max:
	FUNC1(dev, &dev_attr_jint_max_packets);
bail_idle:
	FUNC1(dev, &dev_attr_jint_idle_ticks);
bail_counter:
	FUNC3(&dev->kobj, &dev_counter_attr_group);
bail_attrs:
	FUNC3(&dev->kobj, &dev_attr_group);
bail:
	return ret;
}