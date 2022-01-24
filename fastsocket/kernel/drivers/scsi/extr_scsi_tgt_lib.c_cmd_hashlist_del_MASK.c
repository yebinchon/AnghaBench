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
struct scsi_tgt_queuedata {int /*<<< orphan*/  cmd_hash_lock; } ;
struct scsi_tgt_cmd {int /*<<< orphan*/  hash_list; } ;
struct scsi_cmnd {TYPE_1__* request; } ;
struct request_queue {struct scsi_tgt_queuedata* queuedata; } ;
struct TYPE_2__ {struct scsi_tgt_cmd* end_io_data; struct request_queue* q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct scsi_cmnd *cmd)
{
	struct request_queue *q = cmd->request->q;
	struct scsi_tgt_queuedata *qdata = q->queuedata;
	unsigned long flags;
	struct scsi_tgt_cmd *tcmd = cmd->request->end_io_data;

	FUNC1(&qdata->cmd_hash_lock, flags);
	FUNC0(&tcmd->hash_list);
	FUNC2(&qdata->cmd_hash_lock, flags);
}