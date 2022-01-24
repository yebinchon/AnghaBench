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
struct subchannel {TYPE_1__* driver; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* remove ) (struct subchannel*) ;} ;

/* Variables and functions */
 int FUNC0 (struct subchannel*) ; 
 struct subchannel* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev)
{
	struct subchannel *sch;
	int ret;

	sch = FUNC1(dev);
	ret = sch->driver->remove ? sch->driver->remove(sch) : 0;
	sch->driver = NULL;
	return ret;
}