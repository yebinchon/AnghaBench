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
struct platform_driver {scalar_t__ id_table; } ;
struct platform_device {int /*<<< orphan*/  name; } ;
struct device_driver {int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__,struct platform_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC2 (struct device*) ; 
 struct platform_driver* FUNC3 (struct device_driver*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct device_driver *drv)
{
	struct platform_device *pdev = FUNC2(dev);
	struct platform_driver *pdrv = FUNC3(drv);

	/* match against the id table first */
	if (pdrv->id_table)
		return FUNC0(pdrv->id_table, pdev) != NULL;

	/* fall-back to driver name match */
	return (FUNC1(pdev->name, drv->name) == 0);
}