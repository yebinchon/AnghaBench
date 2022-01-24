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
struct dasd_device {int dummy; } ;
struct dasd_ccw_req {int /*<<< orphan*/  memdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dasd_ccw_req*) ; 
 int FUNC1 (struct dasd_ccw_req*) ; 
 struct dasd_ccw_req* FUNC2 (struct dasd_device*,void*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dasd_ccw_req*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dasd_ccw_req*) ; 

int FUNC5(struct dasd_device *device, int magic,
				void *rdc_buffer, int rdc_buffer_size)
{
	int ret;
	struct dasd_ccw_req *cqr;

	cqr = FUNC2(device, rdc_buffer, rdc_buffer_size,
				     magic);
	if (FUNC0(cqr))
		return FUNC1(cqr);

	ret = FUNC4(cqr);
	FUNC3(cqr, cqr->memdev);
	return ret;
}