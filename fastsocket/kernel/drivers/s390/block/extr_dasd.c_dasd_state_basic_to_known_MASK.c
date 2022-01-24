#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dasd_device {int /*<<< orphan*/  state; int /*<<< orphan*/ * debug_area; scalar_t__ debugfs_dentry; int /*<<< orphan*/  profile; TYPE_1__* block; } ;
struct TYPE_3__ {scalar_t__ debugfs_dentry; int /*<<< orphan*/  profile; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_STATE_KNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dasd_device*,char*,struct dasd_device*) ; 
 int /*<<< orphan*/  DBF_EMERG ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*) ; 
 int FUNC3 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct dasd_device *device)
{
	int rc;
	if (device->block) {
		FUNC5(&device->block->profile);
		if (device->block->debugfs_dentry)
			FUNC7(device->block->debugfs_dentry);
		FUNC4(device->block);
		FUNC1(device->block);
	}
	rc = FUNC3(device);
	if (rc)
		return rc;
	FUNC2(device);
	FUNC5(&device->profile);
	if (device->debugfs_dentry)
		FUNC7(device->debugfs_dentry);

	FUNC0(DBF_EMERG, device, "%p debug area deleted", device);
	if (device->debug_area != NULL) {
		FUNC6(device->debug_area);
		device->debug_area = NULL;
	}
	device->state = DASD_STATE_KNOWN;
	return 0;
}