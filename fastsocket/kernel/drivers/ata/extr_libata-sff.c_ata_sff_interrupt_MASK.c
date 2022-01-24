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
struct TYPE_4__ {int flags; } ;
struct ata_queued_cmd {int flags; TYPE_2__ tf; } ;
struct TYPE_3__ {int /*<<< orphan*/  active_tag; } ;
struct ata_port {TYPE_1__ link; } ;
struct ata_host {unsigned int n_ports; int /*<<< orphan*/  lock; struct ata_port** ports; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int ATA_QCFLAG_ACTIVE ; 
 int ATA_TFLAG_POLLING ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 struct ata_queued_cmd* FUNC1 (struct ata_port*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct ata_port*,struct ata_queued_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

irqreturn_t FUNC5(int irq, void *dev_instance)
{
	struct ata_host *host = dev_instance;
	unsigned int i;
	unsigned int handled = 0;
	unsigned long flags;

	/* TODO: make _irqsave conditional on x86 PCI IDE legacy mode */
	FUNC3(&host->lock, flags);

	for (i = 0; i < host->n_ports; i++) {
		struct ata_port *ap = host->ports[i];
		struct ata_queued_cmd *qc;

		qc = FUNC1(ap, ap->link.active_tag);
		if (qc && (!(qc->tf.flags & ATA_TFLAG_POLLING)) &&
		    (qc->flags & ATA_QCFLAG_ACTIVE))
			handled |= FUNC2(ap, qc);
	}

	FUNC4(&host->lock, flags);

	return FUNC0(handled);
}