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
struct scsi_cmnd {TYPE_3__* device; } ;
struct ata_queued_cmd {int /*<<< orphan*/  err_mask; int /*<<< orphan*/  flags; struct scsi_cmnd* scsicmd; } ;
struct TYPE_5__ {int /*<<< orphan*/  active_tag; } ;
struct ata_port {int /*<<< orphan*/  lock; TYPE_2__ link; TYPE_1__* ops; } ;
struct Scsi_Host {int dummy; } ;
typedef  enum blk_eh_timer_return { ____Placeholder_blk_eh_timer_return } blk_eh_timer_return ;
struct TYPE_6__ {struct Scsi_Host* host; } ;
struct TYPE_4__ {scalar_t__ error_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_ERR_TIMEOUT ; 
 int /*<<< orphan*/  ATA_QCFLAG_EH_SCHEDULED ; 
 int BLK_EH_HANDLED ; 
 int BLK_EH_NOT_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct ata_queued_cmd* FUNC2 (struct ata_port*,int /*<<< orphan*/ ) ; 
 struct ata_port* FUNC3 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 

enum blk_eh_timer_return FUNC6(struct scsi_cmnd *cmd)
{
	struct Scsi_Host *host = cmd->device->host;
	struct ata_port *ap = FUNC3(host);
	unsigned long flags;
	struct ata_queued_cmd *qc;
	enum blk_eh_timer_return ret;

	FUNC0("ENTER\n");

	if (ap->ops->error_handler) {
		ret = BLK_EH_NOT_HANDLED;
		goto out;
	}

	ret = BLK_EH_HANDLED;
	FUNC4(ap->lock, flags);
	qc = FUNC2(ap, ap->link.active_tag);
	if (qc) {
		FUNC1(qc->scsicmd != cmd);
		qc->flags |= ATA_QCFLAG_EH_SCHEDULED;
		qc->err_mask |= AC_ERR_TIMEOUT;
		ret = BLK_EH_NOT_HANDLED;
	}
	FUNC5(ap->lock, flags);

 out:
	FUNC0("EXIT, ret=%d\n", ret);
	return ret;
}