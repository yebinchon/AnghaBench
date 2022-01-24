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
struct scsi_device {int dummy; } ;
struct request_queue {struct scsi_device* queuedata; } ;
struct request {scalar_t__ cmd_type; } ;

/* Variables and functions */
 int BLKPREP_KILL ; 
 scalar_t__ REQ_TYPE_BLOCK_PC ; 
 int FUNC0 (struct request_queue*,struct request*,int) ; 
 int FUNC1 (struct scsi_device*,struct request*) ; 

int FUNC2(struct request_queue *q, struct request *req)
{
	struct scsi_device *sdev = q->queuedata;
	int ret = BLKPREP_KILL;

	if (req->cmd_type == REQ_TYPE_BLOCK_PC)
		ret = FUNC1(sdev, req);
	return FUNC0(q, req, ret);
}