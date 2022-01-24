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
struct scsi_device {int /*<<< orphan*/  device_busy; } ;
struct scsi_cmnd {int dummy; } ;
struct request_queue {struct scsi_device* queuedata; } ;
struct request {int errors; int /*<<< orphan*/  cmd_flags; struct scsi_cmnd* special; } ;

/* Variables and functions */
#define  BLKPREP_DEFER 129 
#define  BLKPREP_KILL 128 
 int DID_NO_CONNECT ; 
 int /*<<< orphan*/  REQ_DONTPREP ; 
 int /*<<< orphan*/  FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 

int FUNC3(struct request_queue *q, struct request *req, int ret)
{
	struct scsi_device *sdev = q->queuedata;

	switch (ret) {
	case BLKPREP_KILL:
		req->errors = DID_NO_CONNECT << 16;
		/* release the command and kill it */
		if (req->special) {
			struct scsi_cmnd *cmd = req->special;
			FUNC2(cmd);
			FUNC1(cmd);
			req->special = NULL;
		}
		break;
	case BLKPREP_DEFER:
		/*
		 * If we defer, the blk_peek_request() returns NULL, but the
		 * queue must be restarted, so we plug here if no returning
		 * command will automatically do that.
		 */
		if (sdev->device_busy == 0)
			FUNC0(q);
		break;
	default:
		req->cmd_flags |= REQ_DONTPREP;
	}

	return ret;
}