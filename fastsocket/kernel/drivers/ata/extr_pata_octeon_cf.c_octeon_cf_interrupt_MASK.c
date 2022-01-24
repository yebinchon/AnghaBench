#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int done; } ;
union cvmx_mio_boot_dma_intx {void* u64; TYPE_6__ s; } ;
struct TYPE_10__ {int /*<<< orphan*/  en; } ;
union cvmx_mio_boot_dma_cfgx {TYPE_4__ s; void* u64; } ;
typedef  int u8 ;
struct octeon_cf_port {int dma_finished; int /*<<< orphan*/  delayed_finish; int /*<<< orphan*/  wq; } ;
struct octeon_cf_data {int /*<<< orphan*/  dma_engine; } ;
struct TYPE_9__ {int flags; } ;
struct ata_queued_cmd {int /*<<< orphan*/  cursg; TYPE_3__ tf; } ;
struct TYPE_11__ {int /*<<< orphan*/  altstatus_addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  active_tag; } ;
struct ata_port {TYPE_5__ ioaddr; TYPE_2__ link; struct octeon_cf_port* private_data; TYPE_1__* dev; } ;
struct ata_host {int n_ports; int /*<<< orphan*/  lock; struct ata_port** ports; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_7__ {struct octeon_cf_data* platform_data; } ;

/* Variables and functions */
 int ATA_BUSY ; 
 int ATA_DRQ ; 
 int ATA_TFLAG_POLLING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 struct ata_queued_cmd* FUNC4 (struct ata_port*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (struct ata_port*,struct ata_queued_cmd*) ; 
 int /*<<< orphan*/  FUNC9 (struct ata_queued_cmd*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC15(int irq, void *dev_instance)
{
	struct ata_host *host = dev_instance;
	struct octeon_cf_port *cf_port;
	int i;
	unsigned int handled = 0;
	unsigned long flags;

	FUNC13(&host->lock, flags);

	FUNC2("ENTER\n");
	for (i = 0; i < host->n_ports; i++) {
		u8 status;
		struct ata_port *ap;
		struct ata_queued_cmd *qc;
		union cvmx_mio_boot_dma_intx dma_int;
		union cvmx_mio_boot_dma_cfgx dma_cfg;
		struct octeon_cf_data *ocd;

		ap = host->ports[i];
		ocd = ap->dev->platform_data;

		ocd = ap->dev->platform_data;
		cf_port = ap->private_data;
		dma_int.u64 =
			FUNC5(FUNC1(ocd->dma_engine));
		dma_cfg.u64 =
			FUNC5(FUNC0(ocd->dma_engine));

		qc = FUNC4(ap, ap->link.active_tag);

		if (qc && !(qc->tf.flags & ATA_TFLAG_POLLING)) {
			if (dma_int.s.done && !dma_cfg.s.en) {
				if (!FUNC11(qc->cursg)) {
					qc->cursg = FUNC12(qc->cursg);
					handled = 1;
					FUNC9(qc);
					continue;
				} else {
					cf_port->dma_finished = 1;
				}
			}
			if (!cf_port->dma_finished)
				continue;
			status = FUNC7(ap->ioaddr.altstatus_addr);
			if (status & (ATA_BUSY | ATA_DRQ)) {
				/*
				 * We are busy, try to handle it
				 * later.  This is the DMA finished
				 * interrupt, and it could take a
				 * little while for the card to be
				 * ready for more commands.
				 */
				/* Clear DMA irq. */
				dma_int.u64 = 0;
				dma_int.s.done = 1;
				FUNC6(FUNC1(ocd->dma_engine),
					       dma_int.u64);

				FUNC10(cf_port->wq,
						   &cf_port->delayed_finish, 1);
				handled = 1;
			} else {
				handled |= FUNC8(ap, qc);
			}
		}
	}
	FUNC14(&host->lock, flags);
	FUNC2("EXIT\n");
	return FUNC3(handled);
}