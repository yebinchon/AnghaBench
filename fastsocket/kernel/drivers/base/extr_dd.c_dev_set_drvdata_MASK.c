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
struct device {TYPE_1__* p; } ;
struct TYPE_2__ {void* driver_data; } ;

/* Variables and functions */
 int FUNC0 (struct device*) ; 

void FUNC1(struct device *dev, void *data)
{
	int error;

	if (!dev)
		return;
	if (!dev->p) {
		error = FUNC0(dev);
		if (error)
			return;
	}
	dev->p->driver_data = data;
}