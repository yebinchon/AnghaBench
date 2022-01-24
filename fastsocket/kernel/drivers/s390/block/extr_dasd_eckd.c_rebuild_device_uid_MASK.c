#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * cpaddr; } ;
struct path_verification_work_data {TYPE_1__ rcd_buffer; TYPE_1__ cqr; int /*<<< orphan*/  ccw; } ;
struct dasd_path {int opm; } ;
struct dasd_eckd_private {int /*<<< orphan*/  conf_data; } ;
struct dasd_device {int /*<<< orphan*/  cdev; struct dasd_path path_data; scalar_t__ private; } ;
typedef  int __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_ECKD_RCD_DATA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  DBF_WARNING ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int FUNC1 (struct dasd_device*) ; 
 scalar_t__ FUNC2 (struct dasd_eckd_private*) ; 
 int FUNC3 (struct dasd_device*,TYPE_1__*,TYPE_1__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct dasd_device *device,
			      struct path_verification_work_data *data)
{
	struct dasd_eckd_private *private;
	struct dasd_path *path_data;
	__u8 lpm, opm;
	int rc;

	rc = -ENODEV;
	private = (struct dasd_eckd_private *) device->private;
	path_data = &device->path_data;
	opm = device->path_data.opm;

	for (lpm = 0x80; lpm; lpm >>= 1) {
		if (!(lpm & opm))
			continue;
		FUNC5(&data->rcd_buffer, 0, sizeof(data->rcd_buffer));
		FUNC5(&data->cqr, 0, sizeof(data->cqr));
		data->cqr.cpaddr = &data->ccw;
		rc = FUNC3(device, &data->cqr,
						     data->rcd_buffer,
						     lpm);

		if (rc) {
			if (rc == -EOPNOTSUPP) /* -EOPNOTSUPP is ok */
				continue;
			FUNC0(DBF_WARNING, device->cdev,
					"Read configuration data "
					"returned error %d", rc);
			break;
		}
		FUNC4(private->conf_data, data->rcd_buffer,
		       DASD_ECKD_RCD_DATA_SIZE);
		if (FUNC2(private)) {
			rc = -ENODEV;
		} else /* first valid path is enough */
			break;
	}

	if (!rc)
		rc = FUNC1(device);

	return rc;
}