#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_5__ {scalar_t__ protocol; } ;
struct ata_queued_cmd {int flags; scalar_t__ err_mask; TYPE_1__ tf; } ;
struct TYPE_8__ {int /*<<< orphan*/  active_tag; } ;
struct TYPE_6__ {int /*<<< orphan*/  ctl_addr; scalar_t__ bmdma_addr; } ;
struct ata_port {TYPE_3__* ops; TYPE_4__ link; TYPE_2__ ioaddr; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/ * ata_reset_fn_t ;
struct TYPE_7__ {int (* bmdma_status ) (struct ata_port*) ;int /*<<< orphan*/  postreset; int /*<<< orphan*/  prereset; int /*<<< orphan*/  (* drain_fifo ) (struct ata_queued_cmd*) ;int /*<<< orphan*/  (* sff_irq_clear ) (struct ata_port*) ;int /*<<< orphan*/  (* sff_check_status ) (struct ata_port*) ;int /*<<< orphan*/  (* bmdma_stop ) (struct ata_queued_cmd*) ;int /*<<< orphan*/ * hardreset; int /*<<< orphan*/ * softreset; } ;

/* Variables and functions */
 scalar_t__ AC_ERR_HOST_BUS ; 
 scalar_t__ AC_ERR_TIMEOUT ; 
 scalar_t__ ATAPI_PROT_DMA ; 
 int ATA_DMA_ERR ; 
 scalar_t__ ATA_PROT_DMA ; 
 int ATA_QCFLAG_FAILED ; 
 struct ata_queued_cmd* FUNC0 (struct ata_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_port*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ata_sff_softreset ; 
 int /*<<< orphan*/  FUNC4 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC8 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct ata_queued_cmd*) ; 
 int /*<<< orphan*/  FUNC10 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC11 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC12 (struct ata_queued_cmd*) ; 

void FUNC13(struct ata_port *ap)
{
	ata_reset_fn_t softreset = ap->ops->softreset;
	ata_reset_fn_t hardreset = ap->ops->hardreset;
	struct ata_queued_cmd *qc;
	unsigned long flags;
	int thaw = 0;

	qc = FUNC0(ap, ap->link.active_tag);
	if (qc && !(qc->flags & ATA_QCFLAG_FAILED))
		qc = NULL;

	/* reset PIO HSM and stop DMA engine */
	FUNC6(ap->lock, flags);

	if (ap->ioaddr.bmdma_addr &&
	    qc && (qc->tf.protocol == ATA_PROT_DMA ||
		   qc->tf.protocol == ATAPI_PROT_DMA)) {
		u8 host_stat;

		host_stat = ap->ops->bmdma_status(ap);

		/* BMDMA controllers indicate host bus error by
		 * setting DMA_ERR bit and timing out.  As it wasn't
		 * really a timeout event, adjust error mask and
		 * cancel frozen state.
		 */
		if (qc->err_mask == AC_ERR_TIMEOUT
						&& (host_stat & ATA_DMA_ERR)) {
			qc->err_mask = AC_ERR_HOST_BUS;
			thaw = 1;
		}

		ap->ops->bmdma_stop(qc);
	}

	FUNC4(ap);		/* FIXME: We don't need this */
	ap->ops->sff_check_status(ap);
	ap->ops->sff_irq_clear(ap);
	/* We *MUST* do FIFO draining before we issue a reset as several
	 * devices helpfully clear their internal state and will lock solid
	 * if we touch the data port post reset. Pass qc in case anyone wants
	 *  to do different PIO/DMA recovery or has per command fixups
	 */
	if (ap->ops->drain_fifo)
		ap->ops->drain_fifo(qc);

	FUNC7(ap->lock, flags);

	if (thaw)
		FUNC2(ap);

	/* PIO and DMA engines have been stopped, perform recovery */

	/* Ignore ata_sff_softreset if ctl isn't accessible and
	 * built-in hardresets if SCR access isn't available.
	 */
	if (softreset == ata_sff_softreset && !ap->ioaddr.ctl_addr)
		softreset = NULL;
	if (FUNC3(hardreset) && !FUNC5(&ap->link))
		hardreset = NULL;

	FUNC1(ap, ap->ops->prereset, softreset, hardreset,
		  ap->ops->postreset);
}