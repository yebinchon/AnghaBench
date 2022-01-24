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
struct dasd_devmap {struct dasd_device* device; } ;
struct dasd_device {struct ccw_device* cdev; int /*<<< orphan*/  ref_count; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_devmap*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dasd_delete_wq ; 
 int /*<<< orphan*/  dasd_devmap_lock ; 
 struct dasd_devmap* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 

void
FUNC16(struct dasd_device *device)
{
	struct ccw_device *cdev;
	struct dasd_devmap *devmap;
	unsigned long flags;

	/* First remove device pointer from devmap. */
	devmap = FUNC4(FUNC7(&device->cdev->dev));
	FUNC0(FUNC1(devmap));
	FUNC11(&dasd_devmap_lock);
	if (devmap->device != device) {
		FUNC13(&dasd_devmap_lock);
		FUNC6(device);
		return;
	}
	devmap->device = NULL;
	FUNC13(&dasd_devmap_lock);

	/* Disconnect dasd_device structure from ccw_device structure. */
	FUNC12(FUNC9(device->cdev), flags);
	FUNC8(&device->cdev->dev, NULL);
	FUNC14(FUNC9(device->cdev), flags);

	/*
	 * Drop ref_count by 3, one for the devmap reference, one for
	 * the cdev reference and one for the passed reference.
	 */
	FUNC3(3, &device->ref_count);

	/* Wait for reference counter to drop to zero. */
	FUNC15(dasd_delete_wq, FUNC2(&device->ref_count) == 0);

	/* Disconnect dasd_device structure from ccw_device structure. */
	cdev = device->cdev;
	device->cdev = NULL;

	/* Put ccw_device structure. */
	FUNC10(&cdev->dev);

	/* Now the device structure can be freed. */
	FUNC5(device);
}