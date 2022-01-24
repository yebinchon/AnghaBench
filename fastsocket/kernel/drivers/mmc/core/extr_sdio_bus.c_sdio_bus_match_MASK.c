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
struct sdio_func {int dummy; } ;
struct sdio_driver {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct sdio_func* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct sdio_func*,struct sdio_driver*) ; 
 struct sdio_driver* FUNC2 (struct device_driver*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct device_driver *drv)
{
	struct sdio_func *func = FUNC0(dev);
	struct sdio_driver *sdrv = FUNC2(drv);

	if (FUNC1(func, sdrv))
		return 1;

	return 0;
}