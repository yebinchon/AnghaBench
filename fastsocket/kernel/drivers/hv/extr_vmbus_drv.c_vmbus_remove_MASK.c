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
struct hv_driver {int /*<<< orphan*/  (* remove ) (struct hv_device*) ;} ;
struct hv_device {int dummy; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct hv_device* FUNC1 (struct device*) ; 
 struct hv_driver* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hv_device*) ; 

__attribute__((used)) static int FUNC5(struct device *child_device)
{
	struct hv_driver *drv = FUNC2(child_device->driver);
	struct hv_device *dev = FUNC1(child_device);

	if (drv->remove)
		drv->remove(dev);
	else
		FUNC3("remove not set for driver %s\n",
			FUNC0(child_device));

	return 0;
}