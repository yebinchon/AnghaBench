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
struct scsi_device {int /*<<< orphan*/  request_queue; } ;
struct TYPE_2__ {struct scsi_device* scsi_device; } ;
struct osd_uld_device {TYPE_1__ od; } ;

/* Variables and functions */
 int ENODEV ; 
 int HZ ; 
 int OSD_CAP_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,struct osd_uld_device*,struct scsi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  osd_root_object ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (struct scsi_device*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct osd_uld_device *oud)
{
	struct scsi_device *scsi_device = oud->od.scsi_device;
	char caps[OSD_CAP_LEN];
	int error;

	/* sending a test_unit_ready as first command seems to be needed
	 * by some targets
	 */
	FUNC0("start scsi_test_unit_ready %p %p %p\n",
			oud, scsi_device, scsi_device->request_queue);
	error = FUNC4(scsi_device, 10*HZ, 5, NULL);
	if (error)
		FUNC1("warning: scsi_test_unit_ready failed\n");

	FUNC3(caps, &osd_root_object, false, true);
	if (FUNC2(&oud->od, caps))
		return -ENODEV;

	return 0;
}