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
struct dasd_device {int stopped; scalar_t__ block; TYPE_1__* cdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DASD_STOPPED_DC_WAIT ; 
 int DASD_UNRESUMED_PM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dasd_device*,char*,char*) ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

int FUNC6(struct dasd_device *device)
{
	FUNC5(&device->cdev->dev, "A channel path to the device has become "
		 "operational\n");
	FUNC0(DBF_WARNING, device, "%s", "path operational");
	FUNC1(device, DASD_STOPPED_DC_WAIT);
	if (device->stopped & DASD_UNRESUMED_PM) {
		FUNC1(device, DASD_UNRESUMED_PM);
		FUNC2(device);
		return 1;
	}
	FUNC4(device);
	if (device->block)
		FUNC3(device->block);
	return 1;
}