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
struct dasd_discipline {int (* check_device ) (struct dasd_device*) ;int /*<<< orphan*/  owner; int /*<<< orphan*/  name; } ;
struct dasd_device {int features; scalar_t__ state; scalar_t__ block; struct dasd_discipline* discipline; struct dasd_discipline* base_discipline; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_FEATURE_INITIAL_ONLINE ; 
 int DASD_FEATURE_USEDIAG ; 
 scalar_t__ DASD_STATE_KNOWN ; 
 int /*<<< orphan*/  DASD_STATE_NEW ; 
 int /*<<< orphan*/  DASD_STATE_ONLINE ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ FUNC0 (struct dasd_device*) ; 
 int FUNC1 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*) ; 
 struct dasd_device* FUNC3 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct dasd_device*) ; 
 struct dasd_discipline* dasd_diag_discipline_pointer ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  dasd_init_waitq ; 
 int /*<<< orphan*/  FUNC6 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct ccw_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dasd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC13 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC16(struct ccw_device *cdev,
			    struct dasd_discipline *base_discipline)
{
	struct dasd_discipline *discipline;
	struct dasd_device *device;
	int rc;

	/* first online clears initial online feature flag */
	FUNC7(cdev, DASD_FEATURE_INITIAL_ONLINE, 0);
	device = FUNC3(cdev);
	if (FUNC0(device))
		return FUNC1(device);

	discipline = base_discipline;
	if (device->features & DASD_FEATURE_USEDIAG) {
	  	if (!dasd_diag_discipline_pointer) {
			FUNC12("%s Setting the DASD online failed because "
				   "of missing DIAG discipline\n",
				   FUNC9(&cdev->dev));
			FUNC4(device);
			return -ENODEV;
		}
		discipline = dasd_diag_discipline_pointer;
	}
	if (!FUNC14(base_discipline->owner)) {
		FUNC4(device);
		return -EINVAL;
	}
	if (!FUNC14(discipline->owner)) {
		FUNC10(base_discipline->owner);
		FUNC4(device);
		return -EINVAL;
	}
	device->base_discipline = base_discipline;
	device->discipline = discipline;

	/* check_device will allocate block device if necessary */
	rc = discipline->check_device(device);
	if (rc) {
		FUNC12("%s Setting the DASD online with discipline %s "
			   "failed with rc=%i\n",
			   FUNC9(&cdev->dev), discipline->name, rc);
		FUNC10(discipline->owner);
		FUNC10(base_discipline->owner);
		FUNC4(device);
		return rc;
	}

	FUNC8(device, DASD_STATE_ONLINE);
	if (device->state <= DASD_STATE_KNOWN) {
		FUNC12("%s Setting the DASD online failed because of a "
			   "missing discipline\n", FUNC9(&cdev->dev));
		rc = -ENODEV;
		FUNC8(device, DASD_STATE_NEW);
		if (device->block)
			FUNC5(device->block);
		FUNC4(device);
	} else
		FUNC11("dasd_generic device %s found\n",
				FUNC9(&cdev->dev));

	FUNC15(dasd_init_waitq, FUNC2(device));

	FUNC6(device);
	return rc;
}