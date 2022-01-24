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
struct ssb_driver {int /*<<< orphan*/  (* remove ) (struct ssb_device*) ;} ;
struct ssb_device {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 struct ssb_device* FUNC0 (struct device*) ; 
 struct ssb_driver* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ssb_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ssb_device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct ssb_device *ssb_dev = FUNC0(dev);
	struct ssb_driver *ssb_drv = FUNC1(dev->driver);

	if (ssb_drv && ssb_drv->remove)
		ssb_drv->remove(ssb_dev);
	FUNC2(ssb_dev);

	return 0;
}