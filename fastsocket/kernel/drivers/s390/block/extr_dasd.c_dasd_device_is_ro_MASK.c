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
struct diag210 {int vrdclen; int vrdcvfla; int /*<<< orphan*/  vrdcdvno; } ;
struct dasd_device {int /*<<< orphan*/  cdev; } ;
struct ccw_dev_id {int /*<<< orphan*/  devno; } ;
typedef  int /*<<< orphan*/  diag_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 int /*<<< orphan*/  MACHINE_IS_VM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ccw_dev_id*) ; 
 int FUNC2 (struct diag210*) ; 
 int /*<<< orphan*/  FUNC3 (struct diag210*,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct dasd_device *device)
{
	struct ccw_dev_id dev_id;
	struct diag210 diag_data;
	int rc;

	if (!MACHINE_IS_VM)
		return 0;
	FUNC1(device->cdev, &dev_id);
	FUNC3(&diag_data, 0, sizeof(diag_data));
	diag_data.vrdcdvno = dev_id.devno;
	diag_data.vrdclen = sizeof(diag_data);
	rc = FUNC2(&diag_data);
	if (rc == 0 || rc == 2) {
		return diag_data.vrdcvfla & 0x80;
	} else {
		FUNC0(DBF_WARNING, "diag210 failed for dev=%04x with rc=%d",
			  dev_id.devno, rc);
		return 0;
	}
}