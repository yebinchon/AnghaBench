#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  unchar ;
struct TYPE_12__ {scalar_t__ phase; } ;
struct scsi_cmnd {int result; int /*<<< orphan*/  (* scsi_done ) (struct scsi_cmnd*) ;TYPE_2__ SCp; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_11__ {TYPE_5__* icmb; } ;
struct TYPE_17__ {TYPE_3__* sh; scalar_t__ iobase; int /*<<< orphan*/  int_counter; TYPE_1__ mb; } ;
struct TYPE_16__ {int status; scalar_t__ phase; } ;
struct TYPE_15__ {int status; scalar_t__ scbptr; } ;
struct TYPE_14__ {int op; int vue; int status; struct scsi_cmnd* SCpnt; } ;
struct TYPE_13__ {int /*<<< orphan*/  host_lock; } ;
typedef  TYPE_4__ Scb ;
typedef  TYPE_5__ Mailbox ;
typedef  TYPE_6__ IcbAny ;
typedef  TYPE_7__ Adapter ;

/* Variables and functions */
 scalar_t__ ASC_INTR_STAT ; 
 scalar_t__ ASC_STAT ; 
 int ICB_OP_MASK ; 
 int IMB_INTR ; 
 int INT_IM ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int MB_INTR ; 
 int MB_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int FUNC2 (scalar_t__) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dev_id)
{
	Adapter *host = (Adapter *) dev_id;
	int flag, icmb, errstatus, icmb_status;
	int host_error, scsi_error;
	Scb *scb;	/* for SCSI commands */
	IcbAny *icb;	/* for host commands */
	struct scsi_cmnd *SCpnt;
	Mailbox *icmbs = host->mb.icmb;
	unsigned long flags;

	FUNC6(host->sh->host_lock, flags);
	host->int_counter++;

	FUNC0("wd7000_intr: irq = %d, host = 0x%06lx\n", irq, (long) host);

	flag = FUNC2(host->iobase + ASC_INTR_STAT);

	FUNC0("wd7000_intr: intr stat = 0x%02x\n", flag);

	if (!(FUNC2(host->iobase + ASC_STAT) & INT_IM)) {
		/* NB: these are _very_ possible if IRQ 15 is being used, since
		 * it's the "garbage collector" on the 2nd 8259 PIC.  Specifically,
		 * any interrupt signal into the 8259 which can't be identified
		 * comes out as 7 from the 8259, which is 15 to the host.  Thus, it
		 * is a good thing the WD7000 has an interrupt status port, so we
		 * can sort these out.  Otherwise, electrical noise and other such
		 * problems would be indistinguishable from valid interrupts...
		 */
		FUNC0("wd7000_intr: phantom interrupt...\n");
		goto ack;
	}

	if (!(flag & MB_INTR))
		goto ack;

	/* The interrupt is for a mailbox */
	if (!(flag & IMB_INTR)) {
		FUNC0("wd7000_intr: free outgoing mailbox\n");
		/*
		 * If sleep_on() and the "interrupt on free OGMB" command are
		 * used in mail_out(), wake_up() should correspondingly be called
		 * here.  For now, we don't need to do anything special.
		 */
		goto ack;
	}

	/* The interrupt is for an incoming mailbox */
	icmb = flag & MB_MASK;
	icmb_status = icmbs[icmb].status;
	if (icmb_status & 0x80) {	/* unsolicited - result in ICMB */
		FUNC0("wd7000_intr: unsolicited interrupt 0x%02x\n", icmb_status);
		goto ack;
	}

	/* Aaaargh! (Zaga) */
	scb = FUNC3(FUNC5((unchar *) icmbs[icmb].scbptr));
	icmbs[icmb].status = 0;
	if (scb->op & ICB_OP_MASK) {	/* an SCB is done */
		icb = (IcbAny *) scb;
		icb->status = icmb_status;
		icb->phase = 0;
		goto ack;
	}

	SCpnt = scb->SCpnt;
	if (--(SCpnt->SCp.phase) <= 0) {	/* all scbs are done */
		host_error = scb->vue | (icmb_status << 8);
		scsi_error = scb->status;
		errstatus = FUNC4(host_error, scsi_error);
		SCpnt->result = errstatus;

		FUNC1(scb);

		SCpnt->scsi_done(SCpnt);
	}

 ack:
	FUNC0("wd7000_intr: return from interrupt handler\n");
	FUNC9(host);

	FUNC7(host->sh->host_lock, flags);
	return IRQ_HANDLED;
}