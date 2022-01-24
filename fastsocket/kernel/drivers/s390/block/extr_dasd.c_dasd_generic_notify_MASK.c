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
struct TYPE_2__ {int /*<<< orphan*/  opm; int /*<<< orphan*/  npm; int /*<<< orphan*/  ppm; } ;
struct dasd_device {TYPE_1__ path_data; } ;
struct ccw_device {int dummy; } ;

/* Variables and functions */
#define  CIO_BOXED 131 
#define  CIO_GONE 130 
#define  CIO_NO_PATH 129 
#define  CIO_OPER 128 
 scalar_t__ FUNC0 (struct dasd_device*) ; 
 struct dasd_device* FUNC1 (struct ccw_device*) ; 
 int FUNC2 (struct dasd_device*) ; 
 int FUNC3 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct dasd_device*) ; 

int FUNC5(struct ccw_device *cdev, int event)
{
	struct dasd_device *device;
	int ret;

	device = FUNC1(cdev);
	if (FUNC0(device))
		return 0;
	ret = 0;
	switch (event) {
	case CIO_GONE:
	case CIO_BOXED:
	case CIO_NO_PATH:
		device->path_data.opm = 0;
		device->path_data.ppm = 0;
		device->path_data.npm = 0;
		ret = FUNC2(device);
		break;
	case CIO_OPER:
		ret = 1;
		if (device->path_data.opm)
			ret = FUNC3(device);
		break;
	}
	FUNC4(device);
	return ret;
}