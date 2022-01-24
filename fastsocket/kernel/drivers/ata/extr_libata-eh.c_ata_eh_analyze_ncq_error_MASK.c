#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tf ;
struct ata_taskfile {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct ata_queued_cmd {int flags; int err_mask; TYPE_2__ result_tf; } ;
struct ata_port {int pflags; } ;
struct TYPE_3__ {int err_mask; } ;
struct ata_eh_context {TYPE_1__ i; } ;
struct ata_link {int sactive; struct ata_device* device; struct ata_eh_context eh_context; struct ata_port* ap; } ;
struct ata_device {int dummy; } ;

/* Variables and functions */
 int AC_ERR_DEV ; 
 int AC_ERR_NCQ ; 
 int ATA_MAX_QUEUE ; 
 int ATA_PFLAG_FROZEN ; 
 int ATA_QCFLAG_FAILED ; 
 int ATA_TFLAG_ISADDR ; 
 int ATA_TFLAG_LBA ; 
 int ATA_TFLAG_LBA48 ; 
 int /*<<< orphan*/  KERN_ERR ; 
 struct ata_queued_cmd* FUNC0 (struct ata_port*,int) ; 
 int FUNC1 (struct ata_device*,int*,struct ata_taskfile*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_link*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct ata_taskfile*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ata_taskfile*,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct ata_link *link)
{
	struct ata_port *ap = link->ap;
	struct ata_eh_context *ehc = &link->eh_context;
	struct ata_device *dev = link->device;
	struct ata_queued_cmd *qc;
	struct ata_taskfile tf;
	int tag, rc;

	/* if frozen, we can't do much */
	if (ap->pflags & ATA_PFLAG_FROZEN)
		return;

	/* is it NCQ device error? */
	if (!link->sactive || !(ehc->i.err_mask & AC_ERR_DEV))
		return;

	/* has LLDD analyzed already? */
	for (tag = 0; tag < ATA_MAX_QUEUE; tag++) {
		qc = FUNC0(ap, tag);

		if (!(qc->flags & ATA_QCFLAG_FAILED))
			continue;

		if (qc->err_mask)
			return;
	}

	/* okay, this error is ours */
	FUNC4(&tf, 0, sizeof(tf));
	rc = FUNC1(dev, &tag, &tf);
	if (rc) {
		FUNC2(link, KERN_ERR, "failed to read log page 10h "
				"(errno=%d)\n", rc);
		return;
	}

	if (!(link->sactive & (1 << tag))) {
		FUNC2(link, KERN_ERR, "log page 10h reported "
				"inactive tag %d\n", tag);
		return;
	}

	/* we've got the perpetrator, condemn it */
	qc = FUNC0(ap, tag);
	FUNC3(&qc->result_tf, &tf, sizeof(tf));
	qc->result_tf.flags = ATA_TFLAG_ISADDR | ATA_TFLAG_LBA | ATA_TFLAG_LBA48;
	qc->err_mask |= AC_ERR_DEV | AC_ERR_NCQ;
	ehc->i.err_mask &= ~AC_ERR_DEV;
}