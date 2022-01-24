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
struct dasd_device {int dummy; } ;
struct dasd_ccw_req {struct dasd_ccw_req* data; struct dasd_ccw_req* cpaddr; } ;
struct ccw1 {struct ccw1* data; struct ccw1* cpaddr; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int CCW_FLAG_CC ; 
 int CCW_FLAG_DC ; 
 int /*<<< orphan*/  FUNC0 (struct dasd_ccw_req*) ; 
 int /*<<< orphan*/  FUNC1 (struct dasd_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_ccw_req*) ; 

void FUNC3(struct dasd_ccw_req *cqr, struct dasd_device *device)
{
#ifdef CONFIG_64BIT
	struct ccw1 *ccw;

	/* Clear any idals used for the request. */
	ccw = cqr->cpaddr;
	do {
		clear_normalized_cda(ccw);
	} while (ccw++->flags & (CCW_FLAG_CC | CCW_FLAG_DC));
#endif
	FUNC2(cqr->cpaddr);
	FUNC2(cqr->data);
	FUNC2(cqr);
	FUNC1(device);
}