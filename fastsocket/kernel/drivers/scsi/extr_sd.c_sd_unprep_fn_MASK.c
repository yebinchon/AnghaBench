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
struct scsi_cmnd {scalar_t__ cmd_len; int /*<<< orphan*/ * cmnd; } ;
struct request_queue {int dummy; } ;
struct request {int cmd_flags; int /*<<< orphan*/ * cmd; int /*<<< orphan*/ * buffer; struct scsi_cmnd* special; } ;

/* Variables and functions */
 int REQ_DISCARD ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sd_cdb_pool ; 

__attribute__((used)) static void FUNC2(struct request_queue *q, struct request *rq)
{
	struct scsi_cmnd *SCpnt = rq->special;

	if (rq->cmd_flags & REQ_DISCARD) {
		FUNC0((unsigned long)rq->buffer);
		rq->buffer = NULL;
	}
	if (SCpnt->cmnd != rq->cmd) {
		FUNC1(SCpnt->cmnd, sd_cdb_pool);
		SCpnt->cmnd = NULL;
		SCpnt->cmd_len = 0;
	}
}