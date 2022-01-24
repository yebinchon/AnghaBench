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
struct of_platform_driver {int (* suspend ) (struct of_device*,int /*<<< orphan*/ ) ;} ;
struct of_device {int dummy; } ;
struct device {scalar_t__ driver; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int FUNC0 (struct of_device*,int /*<<< orphan*/ ) ; 
 struct of_device* FUNC1 (struct device*) ; 
 struct of_platform_driver* FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct device *dev, pm_message_t state)
{
	struct of_device *of_dev = FUNC1(dev);
	struct of_platform_driver *drv = FUNC2(dev->driver);
	int error = 0;

	if (dev->driver && drv->suspend)
		error = drv->suspend(of_dev, state);
	return error;
}