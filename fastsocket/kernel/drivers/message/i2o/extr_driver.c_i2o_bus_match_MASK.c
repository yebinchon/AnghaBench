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
struct i2o_driver {struct i2o_class_id* classes; } ;
struct TYPE_2__ {scalar_t__ class_id; } ;
struct i2o_device {TYPE_1__ lct_data; } ;
struct i2o_class_id {scalar_t__ class_id; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ I2O_CLASS_END ; 
 struct i2o_device* FUNC0 (struct device*) ; 
 struct i2o_driver* FUNC1 (struct device_driver*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct device_driver *drv)
{
	struct i2o_device *i2o_dev = FUNC0(dev);
	struct i2o_driver *i2o_drv = FUNC1(drv);
	struct i2o_class_id *ids = i2o_drv->classes;

	if (ids)
		while (ids->class_id != I2O_CLASS_END) {
			if (ids->class_id == i2o_dev->lct_data.class_id)
				return 1;
			ids++;
		}
	return 0;
}