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
struct device {scalar_t__ driver; } ;
struct amba_driver {int (* suspend ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct amba_driver* FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct device *dev, pm_message_t state)
{
	struct amba_driver *drv = FUNC2(dev->driver);
	int ret = 0;

	if (dev->driver && drv->suspend)
		ret = drv->suspend(FUNC1(dev), state);
	return ret;
}