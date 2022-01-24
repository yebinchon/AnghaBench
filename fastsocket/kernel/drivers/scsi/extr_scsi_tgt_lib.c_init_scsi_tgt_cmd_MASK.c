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
typedef  void* u64 ;
struct scsi_tgt_queuedata {int /*<<< orphan*/  cmd_hash_lock; struct list_head* cmd_hash; } ;
struct scsi_tgt_cmd {int /*<<< orphan*/  hash_list; int /*<<< orphan*/  work; int /*<<< orphan*/ * bio; void* tag; void* itn_id; } ;
struct request {TYPE_1__* q; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {struct scsi_tgt_queuedata* queuedata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  scsi_tgt_cmd_destroy ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct request *rq, struct scsi_tgt_cmd *tcmd,
			      u64 itn_id, u64 tag)
{
	struct scsi_tgt_queuedata *qdata = rq->q->queuedata;
	unsigned long flags;
	struct list_head *head;

	tcmd->itn_id = itn_id;
	tcmd->tag = tag;
	tcmd->bio = NULL;
	FUNC0(&tcmd->work, scsi_tgt_cmd_destroy);
	FUNC3(&qdata->cmd_hash_lock, flags);
	head = &qdata->cmd_hash[FUNC1(tag)];
	FUNC2(&tcmd->hash_list, head);
	FUNC4(&qdata->cmd_hash_lock, flags);
}