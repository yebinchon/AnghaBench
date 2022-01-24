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
struct irb {int /*<<< orphan*/  scsw; } ;
struct dasd_eckd_private {scalar_t__ lcu; } ;
struct dasd_device {scalar_t__ state; int features; TYPE_1__* cdev; int /*<<< orphan*/  flags; scalar_t__ block; scalar_t__ private; } ;
struct dasd_ccw_req {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DASD_FEATURE_FAILONSLCK ; 
 int /*<<< orphan*/  DASD_FLAG_IS_RESERVED ; 
 int /*<<< orphan*/  DASD_FLAG_LOCK_STOLEN ; 
 int /*<<< orphan*/  DASD_FLAG_OFFLINE ; 
 int /*<<< orphan*/  DASD_FLAG_SUSPENDED ; 
 char DASD_SENSE_BIT_0 ; 
 char DASD_SIM_SENSE ; 
 scalar_t__ DASD_STATE_ONLINE ; 
 char DEV_STAT_ATTENTION ; 
 char DEV_STAT_DEV_END ; 
 char DEV_STAT_UNIT_CHECK ; 
 char DEV_STAT_UNIT_EXCEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_device*,struct irb*) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct dasd_device*) ; 
 char* FUNC5 (struct irb*) ; 
 int /*<<< orphan*/  FUNC6 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 char FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct dasd_device *device,
					      struct dasd_ccw_req *cqr,
					      struct irb *irb)
{
	char mask;
	char *sense = NULL;
	struct dasd_eckd_private *private;

	private = (struct dasd_eckd_private *) device->private;
	/* first of all check for state change pending interrupt */
	mask = DEV_STAT_ATTENTION | DEV_STAT_DEV_END | DEV_STAT_UNIT_EXCEP;
	if ((FUNC8(&irb->scsw) & mask) == mask) {
		/*
		 * for alias only, not in offline processing
		 * and only if not suspended
		 */
		if (!device->block && private->lcu &&
		    device->state == DASD_STATE_ONLINE &&
		    !FUNC10(DASD_FLAG_OFFLINE, &device->flags) &&
 		    !FUNC10(DASD_FLAG_SUSPENDED, &device->flags)) {
			/*
			 * the state change could be caused by an alias
			 * reassignment remove device from alias handling
			 * to prevent new requests from being scheduled on
			 * the wrong alias device
			 */
			FUNC3(device);

			/* schedule worker to reload device */
			FUNC6(device);
		}
		FUNC4(device);
		return;
	}

	sense = FUNC5(irb);
	if (!sense)
		return;

	/* summary unit check */
	if ((sense[27] & DASD_SENSE_BIT_0) && (sense[7] == 0x0D) &&
	    (FUNC8(&irb->scsw) & DEV_STAT_UNIT_CHECK)) {
		FUNC2(device, irb);
		return;
	}

	/* service information message SIM */
	if (!cqr && !(sense[27] & DASD_SENSE_BIT_0) &&
	    ((sense[6] & DASD_SIM_SENSE) == DASD_SIM_SENSE)) {
		FUNC1(device, sense);
		return;
	}

	/* loss of device reservation is handled via base devices only
	 * as alias devices may be used with several bases
	 */
	if (device->block && (sense[27] & DASD_SENSE_BIT_0) &&
	    (sense[7] == 0x3F) &&
	    (FUNC8(&irb->scsw) & DEV_STAT_UNIT_CHECK) &&
	    FUNC10(DASD_FLAG_IS_RESERVED, &device->flags)) {
		if (device->features & DASD_FEATURE_FAILONSLCK)
			FUNC9(DASD_FLAG_LOCK_STOLEN, &device->flags);
		FUNC0(DASD_FLAG_IS_RESERVED, &device->flags);
		FUNC7(&device->cdev->dev,
			"The device reservation was lost\n");
	}
}