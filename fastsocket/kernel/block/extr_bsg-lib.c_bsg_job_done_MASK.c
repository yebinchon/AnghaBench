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
typedef  int /*<<< orphan*/  u32 ;
struct request {int errors; int sense_len; unsigned int resid_len; struct request* next_rq; } ;
struct bsg_job {int reply_len; struct request* req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (unsigned int,unsigned int) ; 

void FUNC3(struct bsg_job *job, int result,
		  unsigned int reply_payload_rcv_len)
{
	struct request *req = job->req;
	struct request *rsp = req->next_rq;
	int err;

	err = job->req->errors = result;
	if (err < 0)
		/* we're only returning the result field in the reply */
		job->req->sense_len = sizeof(u32);
	else
		job->req->sense_len = job->reply_len;
	/* we assume all request payload was transferred, residual == 0 */
	req->resid_len = 0;

	if (rsp) {
		FUNC0(reply_payload_rcv_len > rsp->resid_len);

		/* set reply (bidi) residual */
		rsp->resid_len -= FUNC2(reply_payload_rcv_len, rsp->resid_len);
	}
	FUNC1(req);
}