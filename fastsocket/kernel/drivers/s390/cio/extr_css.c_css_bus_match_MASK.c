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
struct subchannel {scalar_t__ st; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct css_driver {struct css_device_id* subchannel_type; } ;
struct css_device_id {scalar_t__ type; scalar_t__ match_flags; } ;

/* Variables and functions */
 struct css_driver* FUNC0 (struct device_driver*) ; 
 struct subchannel* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct device_driver *drv)
{
	struct subchannel *sch = FUNC1(dev);
	struct css_driver *driver = FUNC0(drv);
	struct css_device_id *id;

	for (id = driver->subchannel_type; id->match_flags; id++) {
		if (sch->st == id->type)
			return 1;
	}

	return 0;
}