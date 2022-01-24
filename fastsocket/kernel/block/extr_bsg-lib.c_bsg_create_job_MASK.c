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
struct request {scalar_t__ bio; int /*<<< orphan*/  sense; int /*<<< orphan*/  cmd_len; int /*<<< orphan*/  cmd; struct bsg_job* special; struct request* next_rq; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct bsg_job* sg_list; } ;
struct bsg_job {TYPE_1__ request_payload; struct device* dev; TYPE_1__ reply_payload; int /*<<< orphan*/  reply_len; int /*<<< orphan*/  reply; int /*<<< orphan*/  request_len; int /*<<< orphan*/  request; void* dd_data; struct request* req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bsg_job*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SCSI_SENSE_BUFFERSIZE ; 
 int FUNC1 (TYPE_1__*,struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct bsg_job*) ; 
 struct bsg_job* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct request *req,
			  int lld_bsg_job_size)
{
	struct request *rsp = req->next_rq;
	struct bsg_job *job;
	int ret;

	FUNC0(req->special);

	job = FUNC4(sizeof(struct bsg_job) + lld_bsg_job_size, GFP_KERNEL);
	if (!job)
		return -ENOMEM;

	req->special = job;
	job->req = req;
	if (lld_bsg_job_size)
		job->dd_data = (void *)&job[1];
	job->request = req->cmd;
	job->request_len = req->cmd_len;
	job->reply = req->sense;
	job->reply_len = SCSI_SENSE_BUFFERSIZE;	/* Size of sense buffer
						 * allocated */
	if (req->bio) {
		ret = FUNC1(&job->request_payload, req);
		if (ret)
			goto failjob_rls_job;
	}
	if (rsp && rsp->bio) {
		ret = FUNC1(&job->reply_payload, rsp);
		if (ret)
			goto failjob_rls_rqst_payload;
	}
	job->dev = dev;
	/* take a reference for the request */
	FUNC2(job->dev);
	return 0;

failjob_rls_rqst_payload:
	FUNC3(job->request_payload.sg_list);
failjob_rls_job:
	FUNC3(job);
	return -ENOMEM;
}