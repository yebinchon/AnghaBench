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
typedef  int /*<<< orphan*/  uint32_t ;
struct request_queue {int /*<<< orphan*/  queue_lock; } ;
struct request {int errors; struct fc_bsg_job* special; } ;
struct fc_rport {scalar_t__ port_state; int flags; } ;
struct fc_bsg_job {int request_len; int reply_len; TYPE_1__* reply; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
typedef  enum fc_dispatch_result { ____Placeholder_fc_dispatch_result } fc_dispatch_result ;
struct TYPE_2__ {int /*<<< orphan*/  result; scalar_t__ reply_payload_rcv_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ENOMSG ; 
 int ENXIO ; 
 int FC_DISPATCH_BREAK ; 
 int FC_DISPATCH_UNLOCKED ; 
 scalar_t__ FC_PORTSTATE_BLOCKED ; 
 scalar_t__ FC_PORTSTATE_ONLINE ; 
 int FC_RPORT_FAST_FAIL_TIMEDOUT ; 
 int /*<<< orphan*/  FUNC1 (struct request*,int) ; 
 struct request* FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*) ; 
 int FUNC4 (struct request_queue*,struct Scsi_Host*,struct fc_bsg_job*) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_bsg_job*) ; 
 int FUNC6 (struct request_queue*,struct Scsi_Host*,struct fc_rport*,struct fc_bsg_job*) ; 
 int FUNC7 (struct Scsi_Host*,struct fc_rport*,struct request*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(struct request_queue *q, struct Scsi_Host *shost,
		       struct fc_rport *rport, struct device *dev)
{
	struct request *req;
	struct fc_bsg_job *job;
	enum fc_dispatch_result ret;

	if (!FUNC8(dev))
		return;

	while (!FUNC3(q)) {
		if (rport && (rport->port_state == FC_PORTSTATE_BLOCKED) &&
		    !(rport->flags & FC_RPORT_FAST_FAIL_TIMEDOUT))
			break;

		req = FUNC2(q);
		if (!req)
			break;

		if (rport && (rport->port_state != FC_PORTSTATE_ONLINE)) {
			req->errors = -ENXIO;
			FUNC11(q->queue_lock);
			FUNC1(req, -ENXIO);
			FUNC10(q->queue_lock);
			continue;
		}

		FUNC11(q->queue_lock);

		ret = FUNC7(shost, rport, req);
		if (ret) {
			req->errors = ret;
			FUNC1(req, ret);
			FUNC10(q->queue_lock);
			continue;
		}

		job = req->special;

		/* check if we have the msgcode value at least */
		if (job->request_len < sizeof(uint32_t)) {
			FUNC0(job->reply_len < sizeof(uint32_t));
			job->reply->reply_payload_rcv_len = 0;
			job->reply->result = -ENOMSG;
			job->reply_len = sizeof(uint32_t);
			FUNC5(job);
			FUNC10(q->queue_lock);
			continue;
		}

		/* the dispatch routines will unlock the queue_lock */
		if (rport)
			ret = FUNC6(q, shost, rport, job);
		else
			ret = FUNC4(q, shost, job);

		/* did dispatcher hit state that can't process any more */
		if (ret == FC_DISPATCH_BREAK)
			break;

		/* did dispatcher had released the lock */
		if (ret == FC_DISPATCH_UNLOCKED)
			FUNC10(q->queue_lock);
	}

	FUNC11(q->queue_lock);
	FUNC9(dev);
	FUNC10(q->queue_lock);
}