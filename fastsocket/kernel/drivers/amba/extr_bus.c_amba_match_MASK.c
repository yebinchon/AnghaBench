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
struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct amba_driver {int /*<<< orphan*/  id_table; } ;
struct amba_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,struct amba_device*) ; 
 struct amba_device* FUNC1 (struct device*) ; 
 struct amba_driver* FUNC2 (struct device_driver*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct device_driver *drv)
{
	struct amba_device *pcdev = FUNC1(dev);
	struct amba_driver *pcdrv = FUNC2(drv);

	return FUNC0(pcdrv->id_table, pcdev) != NULL;
}