#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int base_unit_addr; char* vduit; char* vendor; char* serial; int ssid; } ;
struct dasd_eckd_private {TYPE_1__ uid; } ;
struct dasd_device {TYPE_2__* cdev; scalar_t__ private; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dasd_device*) ; 
 int FUNC1 (struct dasd_device*) ; 
 int FUNC2 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*,char*,int,int,...) ; 
 scalar_t__ FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct dasd_device *device)
{
	struct dasd_eckd_private *private;
	int rc, old_base;
	char uid[60];

	private = (struct dasd_eckd_private *) device->private;
	old_base = private->uid.base_unit_addr;
	/* Read Configuration Data */
	rc = FUNC2(device);
	if (rc)
		goto out_err;

	rc = FUNC1(device);
	if (rc)
		goto out_err;

	/*
	 * update unit address configuration and
	 * add device to alias management
	 */
	FUNC0(device);

	if (old_base != private->uid.base_unit_addr) {
		if (FUNC5(private->uid.vduit) > 0)
			FUNC4(uid, 60, "%s.%s.%04x.%02x.%s",
				 private->uid.vendor, private->uid.serial,
				 private->uid.ssid, private->uid.base_unit_addr,
				 private->uid.vduit);
		else
			FUNC4(uid, 60, "%s.%s.%04x.%02x",
				 private->uid.vendor, private->uid.serial,
				 private->uid.ssid,
				 private->uid.base_unit_addr);

		FUNC3(&device->cdev->dev,
			 "An Alias device was reassigned to a new base device "
			 "with UID: %s\n", uid);
	}
	return 0;

out_err:
	return -1;
}