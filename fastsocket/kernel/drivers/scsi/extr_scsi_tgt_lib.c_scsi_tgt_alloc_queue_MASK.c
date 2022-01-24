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
struct scsi_tgt_queuedata {int /*<<< orphan*/  cmd_hash_lock; int /*<<< orphan*/ * cmd_hash; struct Scsi_Host* shost; } ;
struct request_queue {int /*<<< orphan*/  nr_requests; struct scsi_tgt_queuedata* queuedata; } ;
struct Scsi_Host {struct request_queue* uspace_req_q; int /*<<< orphan*/  can_queue; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct request_queue* FUNC2 (struct Scsi_Host*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct request_queue*,int /*<<< orphan*/ ) ; 
 struct scsi_tgt_queuedata* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct Scsi_Host *shost)
{
	struct scsi_tgt_queuedata *queuedata;
	struct request_queue *q;
	int err, i;

	/*
	 * Do we need to send a netlink event or should uspace
	 * just respond to the hotplug event?
	 */
	q = FUNC2(shost, NULL);
	if (!q)
		return -ENOMEM;

	queuedata = FUNC5(sizeof(*queuedata), GFP_KERNEL);
	if (!queuedata) {
		err = -ENOMEM;
		goto cleanup_queue;
	}
	queuedata->shost = shost;
	q->queuedata = queuedata;

	/*
	 * this is a silly hack. We should probably just queue as many
	 * command as is recvd to userspace. uspace can then make
	 * sure we do not overload the HBA
	 */
	q->nr_requests = shost->can_queue;
	/*
	 * We currently only support software LLDs so this does
	 * not matter for now. Do we need this for the cards we support?
	 * If so we should make it a host template value.
	 */
	FUNC4(q, 0);
	shost->uspace_req_q = q;

	for (i = 0; i < FUNC0(queuedata->cmd_hash); i++)
		FUNC1(&queuedata->cmd_hash[i]);
	FUNC6(&queuedata->cmd_hash_lock);

	return 0;

cleanup_queue:
	FUNC3(q);
	return err;
}