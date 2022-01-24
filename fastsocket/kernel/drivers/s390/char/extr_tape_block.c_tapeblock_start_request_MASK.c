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
struct tape_request {int /*<<< orphan*/  retries; void* callback_data; int /*<<< orphan*/  callback; } ;
struct tape_device {TYPE_1__* discipline; } ;
struct request {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* free_bread ) (struct tape_request*) ;struct tape_request* (* bread ) (struct tape_device*,struct request*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct tape_device*,struct request*) ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ FUNC2 (struct tape_request*) ; 
 int FUNC3 (struct tape_request*) ; 
 int /*<<< orphan*/  TAPEBLOCK_RETRIES ; 
 int /*<<< orphan*/  __tapeblock_end_request ; 
 int /*<<< orphan*/  FUNC4 (struct request*,int /*<<< orphan*/ ) ; 
 struct tape_request* FUNC5 (struct tape_device*,struct request*) ; 
 int /*<<< orphan*/  FUNC6 (struct tape_request*) ; 
 int FUNC7 (struct tape_device*,struct tape_request*) ; 

__attribute__((used)) static int
FUNC8(struct tape_device *device, struct request *req)
{
	struct tape_request *	ccw_req;
	int			rc;

	FUNC1(6, "tapeblock_start_request(%p, %p)\n", device, req);

	ccw_req = device->discipline->bread(device, req);
	if (FUNC2(ccw_req)) {
		FUNC0(1, "TBLOCK: bread failed\n");
		FUNC4(req, -EIO);
		return FUNC3(ccw_req);
	}
	ccw_req->callback = __tapeblock_end_request;
	ccw_req->callback_data = (void *) req;
	ccw_req->retries = TAPEBLOCK_RETRIES;

	rc = FUNC7(device, ccw_req);
	if (rc) {
		/*
		 * Start/enqueueing failed. No retries in
		 * this case.
		 */
		FUNC4(req, -EIO);
		device->discipline->free_bread(ccw_req);
	}

	return rc;
}