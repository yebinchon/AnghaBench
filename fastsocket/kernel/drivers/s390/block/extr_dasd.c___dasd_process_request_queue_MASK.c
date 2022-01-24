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
struct request_queue {int dummy; } ;
struct request {int dummy; } ;
struct dasd_device {scalar_t__ state; int features; int /*<<< orphan*/  cdev; TYPE_1__* discipline; } ;
struct dasd_ccw_req {int /*<<< orphan*/  blocklist; int /*<<< orphan*/  status; void* callback_data; } ;
struct dasd_block {int /*<<< orphan*/  ccw_queue; struct request_queue* request_queue; struct dasd_device* base; } ;
struct TYPE_2__ {struct dasd_ccw_req* (* build_cp ) (struct dasd_device*,struct dasd_block*,struct request*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DASD_CQR_FILLED ; 
 int DASD_FEATURE_READONLY ; 
 scalar_t__ DASD_STATE_READY ; 
 int /*<<< orphan*/  DASD_STOPPED_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dasd_device*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  DBF_ERR ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int HZ ; 
 scalar_t__ FUNC1 (struct dasd_ccw_req*) ; 
 int /*<<< orphan*/  FUNC2 (struct dasd_ccw_req*) ; 
 scalar_t__ WRITE ; 
 int /*<<< orphan*/  FUNC3 (struct request*,int /*<<< orphan*/ ) ; 
 struct request* FUNC4 (struct request_queue*) ; 
 struct request* FUNC5 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct request*) ; 
 int /*<<< orphan*/  FUNC8 (struct dasd_block*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct dasd_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dasd_block*,struct dasd_ccw_req*,struct request*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct request*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,unsigned long) ; 
 struct dasd_ccw_req* FUNC17 (struct dasd_device*,struct dasd_block*,struct request*) ; 

__attribute__((used)) static void FUNC18(struct dasd_block *block)
{
	struct request_queue *queue;
	struct request *req;
	struct dasd_ccw_req *cqr;
	struct dasd_device *basedev;
	unsigned long flags;
	queue = block->request_queue;
	basedev = block->base;
	/* No queue ? Then there is nothing to do. */
	if (queue == NULL)
		return;

	/*
	 * We requeue request from the block device queue to the ccw
	 * queue only in two states. In state DASD_STATE_READY the
	 * partition detection is done and we need to requeue requests
	 * for that. State DASD_STATE_ONLINE is normal block device
	 * operation.
	 */
	if (basedev->state < DASD_STATE_READY) {
		while ((req = FUNC4(block->request_queue)))
			FUNC3(req, -EIO);
		return;
	}
	/* Now we try to fetch requests from the request queue */
	while (!FUNC6(queue) && (req = FUNC5(queue))) {
		if (basedev->features & DASD_FEATURE_READONLY &&
		    FUNC14(req) == WRITE) {
			FUNC0(DBF_ERR, basedev,
				      "Rejecting write request %p",
				      req);
			FUNC7(req);
			FUNC3(req, -EIO);
			continue;
		}
		cqr = basedev->discipline->build_cp(basedev, block, req);
		if (FUNC1(cqr)) {
			if (FUNC2(cqr) == -EBUSY)
				break;	/* normal end condition */
			if (FUNC2(cqr) == -ENOMEM)
				break;	/* terminate request queue loop */
			if (FUNC2(cqr) == -EAGAIN) {
				/*
				 * The current request cannot be build right
				 * now, we have to try later. If this request
				 * is the head-of-queue we stop the device
				 * for 1/2 second.
				 */
				if (!FUNC13(&block->ccw_queue))
					break;
				FUNC15(
					FUNC11(basedev->cdev), flags);
				FUNC9(basedev,
							  DASD_STOPPED_PENDING);
				FUNC16(
					FUNC11(basedev->cdev), flags);
				FUNC8(block, HZ/2);
				break;
			}
			FUNC0(DBF_ERR, basedev,
				      "CCW creation failed (rc=%ld) "
				      "on request %p",
				      FUNC2(cqr), req);
			FUNC7(req);
			FUNC3(req, -EIO);
			continue;
		}
		/*
		 *  Note: callback is set to dasd_return_cqr_cb in
		 * __dasd_block_start_head to cover erp requests as well
		 */
		cqr->callback_data = (void *) req;
		cqr->status = DASD_CQR_FILLED;
		FUNC7(req);
		FUNC12(&cqr->blocklist, &block->ccw_queue);
		FUNC10(block, cqr, req);
	}
}