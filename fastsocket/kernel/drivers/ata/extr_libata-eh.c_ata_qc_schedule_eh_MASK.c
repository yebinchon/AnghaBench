#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int /*<<< orphan*/  queue_lock; } ;
struct ata_queued_cmd {TYPE_2__* scsicmd; int /*<<< orphan*/  flags; struct ata_port* ap; } ;
struct ata_port {TYPE_3__* ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  error_handler; } ;
struct TYPE_5__ {int /*<<< orphan*/  request; TYPE_1__* device; } ;
struct TYPE_4__ {struct request_queue* request_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_QCFLAG_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC5(struct ata_queued_cmd *qc)
{
	struct ata_port *ap = qc->ap;
	struct request_queue *q = qc->scsicmd->device->request_queue;
	unsigned long flags;

	FUNC0(!ap->ops->error_handler);

	qc->flags |= ATA_QCFLAG_FAILED;
	FUNC1(ap, 1);

	/* The following will fail if timeout has already expired.
	 * ata_scsi_error() takes care of such scmds on EH entry.
	 * Note that ATA_QCFLAG_FAILED is unconditionally set after
	 * this function completes.
	 */
	FUNC3(q->queue_lock, flags);
	FUNC2(qc->scsicmd->request);
	FUNC4(q->queue_lock, flags);
}