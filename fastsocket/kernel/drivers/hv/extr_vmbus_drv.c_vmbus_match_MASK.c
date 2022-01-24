#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct hv_driver {int /*<<< orphan*/  id_table; } ;
struct TYPE_2__ {int /*<<< orphan*/  b; } ;
struct hv_device {TYPE_1__ dev_type; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct hv_device* FUNC0 (struct device*) ; 
 struct hv_driver* FUNC1 (struct device_driver*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *device, struct device_driver *driver)
{
	struct hv_driver *drv = FUNC1(driver);
	struct hv_device *hv_dev = FUNC0(device);

	if (FUNC2(drv->id_table, hv_dev->dev_type.b))
		return 1;

	return 0;
}