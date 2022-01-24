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
struct dasd_device {int /*<<< orphan*/  flags; struct dasd_block* block; } ;
struct dasd_block {scalar_t__ bdev; int /*<<< orphan*/  open_count; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_FLAG_OFFLINE ; 
 int /*<<< orphan*/  DASD_FLAG_SAFE_OFFLINE ; 
 int /*<<< orphan*/  DASD_FLAG_SAFE_OFFLINE_RUNNING ; 
 int /*<<< orphan*/  DASD_STATE_NEW ; 
 int EBUSY ; 
 scalar_t__ FUNC0 (struct dasd_device*) ; 
 int FUNC1 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dasd_device*) ; 
 struct dasd_device* FUNC6 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct dasd_block*) ; 
 int /*<<< orphan*/  FUNC8 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct dasd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  shutdown_waitq ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC19(struct ccw_device *cdev)
{
	struct dasd_device *device;
	struct dasd_block *block;
	int max_count, open_count, rc;

	rc = 0;
	device = FUNC6(cdev);
	if (FUNC0(device))
		return FUNC1(device);

	/*
	 * We must make sure that this device is currently not in use.
	 * The open_count is increased for every opener, that includes
	 * the blkdev_get in dasd_scan_partitions. We are only interested
	 * in the other openers.
	 */
	if (device->block) {
		max_count = device->block->bdev ? 0 : -1;
		open_count = FUNC3(&device->block->open_count);
		if (open_count > max_count) {
			if (open_count > 0)
				FUNC13("%s: The DASD cannot be set offline "
					   "with open count %i\n",
					   FUNC11(&cdev->dev), open_count);
			else
				FUNC13("%s: The DASD cannot be set offline "
					   "while it is in use\n",
					   FUNC11(&cdev->dev));
			FUNC4(DASD_FLAG_OFFLINE, &device->flags);
			FUNC8(device);
			return -EBUSY;
		}
	}

	if (FUNC17(DASD_FLAG_SAFE_OFFLINE_RUNNING, &device->flags)) {
		/*
		 * safe offline allready running
		 * could only be called by normal offline so safe_offline flag
		 * needs to be removed to run normal offline and kill all I/O
		 */
		if (FUNC16(DASD_FLAG_OFFLINE, &device->flags)) {
			/* Already doing normal offline processing */
			FUNC8(device);
			return -EBUSY;
		} else
			FUNC4(DASD_FLAG_SAFE_OFFLINE, &device->flags);

	} else
		if (FUNC17(DASD_FLAG_OFFLINE, &device->flags)) {
			/* Already doing offline processing */
			FUNC8(device);
			return -EBUSY;
		}

	/*
	 * if safe_offline called set safe_offline_running flag and
	 * clear safe_offline so that a call to normal offline
	 * can overrun safe_offline processing
	 */
	if (FUNC15(DASD_FLAG_SAFE_OFFLINE, &device->flags) &&
	    !FUNC16(DASD_FLAG_SAFE_OFFLINE_RUNNING, &device->flags)) {
		/*
		 * If we want to set the device safe offline all IO operations
		 * should be finished before continuing the offline process
		 * so sync bdev first and then wait for our queues to become
		 * empty
		 */
		/* sync blockdev and partitions */
		rc = FUNC12(device->block->bdev);
		if (rc != 0)
			goto interrupted;

		/* schedule device tasklet and wait for completion */
		FUNC9(device);
		rc = FUNC18(shutdown_waitq,
					      FUNC2(device));
		if (rc != 0)
			goto interrupted;
	}

	FUNC14(DASD_FLAG_OFFLINE, &device->flags);
	FUNC10(device, DASD_STATE_NEW);
	/* dasd_delete_device destroys the device reference. */
	block = device->block;
	FUNC5(device);
	/*
	 * life cycle of block is bound to device, so delete it after
	 * device was safely removed
	 */
	if (block)
		FUNC7(block);
	return 0;

interrupted:
	/* interrupted by signal */
	FUNC4(DASD_FLAG_SAFE_OFFLINE, &device->flags);
	FUNC4(DASD_FLAG_SAFE_OFFLINE_RUNNING, &device->flags);
	FUNC4(DASD_FLAG_OFFLINE, &device->flags);
	FUNC8(device);
	return rc;
}