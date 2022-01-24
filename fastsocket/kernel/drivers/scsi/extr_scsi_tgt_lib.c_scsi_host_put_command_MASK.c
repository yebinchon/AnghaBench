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
struct scsi_tgt_cmd {int dummy; } ;
struct scsi_cmnd {struct request* request; } ;
struct request_queue {int /*<<< orphan*/  queue_lock; } ;
struct request {struct scsi_tgt_cmd* end_io_data; } ;
struct Scsi_Host {int /*<<< orphan*/  shost_gendev; struct request_queue* uspace_req_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request_queue*,struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct Scsi_Host*,struct scsi_cmnd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct scsi_tgt_cmd*) ; 
 int /*<<< orphan*/  scsi_tgt_cmd_cache ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC5(struct Scsi_Host *shost, struct scsi_cmnd *cmd)
{
	struct request_queue *q = shost->uspace_req_q;
	struct request *rq = cmd->request;
	struct scsi_tgt_cmd *tcmd = rq->end_io_data;
	unsigned long flags;

	FUNC2(scsi_tgt_cmd_cache, tcmd);

	FUNC3(q->queue_lock, flags);
	FUNC0(q, rq);
	FUNC4(q->queue_lock, flags);

	FUNC1(shost, cmd, &shost->shost_gendev);
}