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
struct locomo_driver {int (* resume ) (struct locomo_dev*) ;} ;
struct locomo_dev {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 struct locomo_dev* FUNC0 (struct device*) ; 
 struct locomo_driver* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct locomo_dev*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct locomo_dev *ldev = FUNC0(dev);
	struct locomo_driver *drv = FUNC1(dev->driver);
	int ret = 0;

	if (drv && drv->resume)
		ret = drv->resume(ldev);
	return ret;
}