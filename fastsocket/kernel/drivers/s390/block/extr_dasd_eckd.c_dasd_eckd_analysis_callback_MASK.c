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
struct dasd_eckd_private {int /*<<< orphan*/  init_cqr_status; } ;
struct dasd_device {scalar_t__ private; } ;
struct dasd_ccw_req {struct dasd_device* startdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dasd_ccw_req*) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_ccw_req*,struct dasd_device*) ; 

__attribute__((used)) static void FUNC3(struct dasd_ccw_req *init_cqr,
					void *data)
{
	struct dasd_eckd_private *private;
	struct dasd_device *device;

	device = init_cqr->startdev;
	private = (struct dasd_eckd_private *) device->private;
	private->init_cqr_status = FUNC0(init_cqr);
	FUNC2(init_cqr, device);
	FUNC1(device);
}