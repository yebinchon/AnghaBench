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
typedef  int /*<<< orphan*/  temp_rdc_data ;
struct dasd_uid {int dummy; } ;
struct dasd_eckd_private {int /*<<< orphan*/  rdc_data; int /*<<< orphan*/  uid; } ;
struct dasd_eckd_characteristics {int dummy; } ;
struct dasd_device {TYPE_1__* cdev; scalar_t__ private; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_CQR_FLAGS_FAILFAST ; 
 int /*<<< orphan*/  DASD_ECKD_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*) ; 
 int FUNC2 (struct dasd_device*) ; 
 int FUNC3 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct dasd_device*,struct dasd_uid*) ; 
 int /*<<< orphan*/  FUNC5 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct dasd_device*,unsigned long) ; 
 int FUNC8 (struct dasd_device*,int /*<<< orphan*/ ,struct dasd_eckd_characteristics*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,struct dasd_uid*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct dasd_eckd_characteristics*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC16(struct dasd_device *device)
{
	struct dasd_eckd_private *private;
	struct dasd_eckd_characteristics temp_rdc_data;
	int rc;
	struct dasd_uid temp_uid;
	unsigned long flags;
	unsigned long cqr_flags = 0;

	private = (struct dasd_eckd_private *) device->private;

	/* Read Configuration Data */
	FUNC5(device);

	FUNC4(device, &temp_uid);
	/* Generate device unique id */
	rc = FUNC3(device);
	FUNC14(FUNC10(device->cdev), flags);
	if (FUNC11(&private->uid, &temp_uid, sizeof(struct dasd_uid)) != 0)
		FUNC9(&device->cdev->dev, "The UID of the DASD has "
			"changed\n");
	FUNC15(FUNC10(device->cdev), flags);
	if (rc)
		goto out_err;

	/* register lcu with alias handling, enable PAV if this is a new lcu */
	rc = FUNC2(device);
	if (rc)
		return rc;

	FUNC13(DASD_CQR_FLAGS_FAILFAST, &cqr_flags);
	FUNC7(device, cqr_flags);

	/* RE-Read Configuration Data */
	FUNC5(device);

	/* Read Feature Codes */
	FUNC6(device);

	/* Read Device Characteristics */
	rc = FUNC8(device, DASD_ECKD_MAGIC,
					 &temp_rdc_data, 64);
	if (rc) {
		FUNC0(DBF_WARNING, device->cdev,
				"Read device characteristic failed, rc=%d", rc);
		goto out_err;
	}
	FUNC14(FUNC10(device->cdev), flags);
	FUNC12(&private->rdc_data, &temp_rdc_data, sizeof(temp_rdc_data));
	FUNC15(FUNC10(device->cdev), flags);

	/* add device to alias management */
	FUNC1(device);

	return 0;

out_err:
	return -1;
}