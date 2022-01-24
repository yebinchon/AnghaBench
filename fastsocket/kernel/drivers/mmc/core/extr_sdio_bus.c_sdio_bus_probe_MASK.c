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
struct sdio_driver {int (* probe ) (struct sdio_func*,struct sdio_device_id const*) ;} ;
struct sdio_device_id {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int ENODEV ; 
 struct sdio_func* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdio_func*) ; 
 struct sdio_device_id* FUNC2 (struct sdio_func*,struct sdio_driver*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdio_func*) ; 
 int FUNC4 (struct sdio_func*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sdio_func*,struct sdio_device_id const*) ; 
 struct sdio_driver* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	struct sdio_driver *drv = FUNC6(dev->driver);
	struct sdio_func *func = FUNC0(dev);
	const struct sdio_device_id *id;
	int ret;

	id = FUNC2(func, drv);
	if (!id)
		return -ENODEV;

	/* Set the default block size so the driver is sure it's something
	 * sensible. */
	FUNC1(func);
	ret = FUNC4(func, 0);
	FUNC3(func);
	if (ret)
		return ret;

	return drv->probe(func, id);
}