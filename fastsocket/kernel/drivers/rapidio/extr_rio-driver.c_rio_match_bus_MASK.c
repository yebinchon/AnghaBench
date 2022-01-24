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
struct rio_driver {struct rio_device_id* id_table; } ;
struct rio_device_id {int dummy; } ;
struct rio_dev {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct rio_device_id* FUNC0 (struct rio_device_id const*,struct rio_dev*) ; 
 struct rio_dev* FUNC1 (struct device*) ; 
 struct rio_driver* FUNC2 (struct device_driver*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct device_driver *drv)
{
	struct rio_dev *rdev = FUNC1(dev);
	struct rio_driver *rdrv = FUNC2(drv);
	const struct rio_device_id *id = rdrv->id_table;
	const struct rio_device_id *found_id;

	if (!id)
		goto out;

	found_id = FUNC0(id, rdev);

	if (found_id)
		return 1;

      out:return 0;
}