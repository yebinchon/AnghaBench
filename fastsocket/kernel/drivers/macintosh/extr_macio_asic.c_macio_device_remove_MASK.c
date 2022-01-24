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
struct macio_driver {int /*<<< orphan*/  (* remove ) (struct macio_dev*) ;} ;
struct macio_dev {int dummy; } ;
struct device {scalar_t__ driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct macio_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct macio_dev*) ; 
 struct macio_dev* FUNC2 (struct device*) ; 
 struct macio_driver* FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct macio_dev * macio_dev = FUNC2(dev);
	struct macio_driver * drv = FUNC3(dev->driver);

	if (dev->driver && drv->remove)
		drv->remove(macio_dev);
	FUNC0(macio_dev);

	return 0;
}