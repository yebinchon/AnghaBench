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
struct maple_driver {int /*<<< orphan*/  function; } ;
struct TYPE_2__ {int function; } ;
struct maple_device {TYPE_1__ devinfo; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct maple_device* FUNC1 (struct device*) ; 
 struct maple_driver* FUNC2 (struct device_driver*) ; 

__attribute__((used)) static int FUNC3(struct device *devptr,
				  struct device_driver *drvptr)
{
	struct maple_driver *maple_drv = FUNC2(drvptr);
	struct maple_device *maple_dev = FUNC1(devptr);

	/* Trap empty port case */
	if (maple_dev->devinfo.function == 0xFFFFFFFF)
		return 0;
	else if (maple_dev->devinfo.function &
		 FUNC0(maple_drv->function))
		return 1;
	return 0;
}