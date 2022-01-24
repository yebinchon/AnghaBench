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
struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct cx_drv {struct cx_device_id* id_table; } ;
struct cx_device_id {scalar_t__ part_num; } ;
struct TYPE_2__ {scalar_t__ part_num; } ;
struct cx_dev {TYPE_1__ cx_id; } ;

/* Variables and functions */
 struct cx_dev* FUNC0 (struct device*) ; 
 struct cx_drv* FUNC1 (struct device_driver*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct device_driver *drv)
{
	struct cx_dev *cx_dev = FUNC0(dev);
	struct cx_drv *cx_drv = FUNC1(drv);
	const struct cx_device_id *ids = cx_drv->id_table;

	if (!ids)
		return 0;

	while (ids->part_num) {
		if (ids->part_num == cx_dev->cx_id.part_num)
			return 1;
		ids++;
	}
	return 0;

}