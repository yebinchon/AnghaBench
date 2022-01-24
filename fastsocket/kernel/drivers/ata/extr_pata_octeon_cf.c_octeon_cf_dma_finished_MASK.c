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
struct TYPE_10__ {int done; } ;
union cvmx_mio_boot_dma_intx {scalar_t__ u64; TYPE_4__ s; } ;
struct TYPE_9__ {int size; } ;
union cvmx_mio_boot_dma_cfgx {scalar_t__ u64; TYPE_3__ s; } ;
typedef  int /*<<< orphan*/  u8 ;
struct octeon_cf_port {int dummy; } ;
struct octeon_cf_data {int /*<<< orphan*/  dma_engine; } ;
struct TYPE_12__ {scalar_t__ protocol; } ;
struct ata_queued_cmd {TYPE_6__ tf; int /*<<< orphan*/  err_mask; } ;
struct ata_eh_info {int dummy; } ;
struct TYPE_7__ {struct ata_eh_info eh_info; } ;
struct ata_port {scalar_t__ hsm_task_state; TYPE_5__* ops; struct octeon_cf_port* private_data; int /*<<< orphan*/  print_id; TYPE_2__* dev; TYPE_1__ link; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* sff_check_status ) (struct ata_port*) ;} ;
struct TYPE_8__ {struct octeon_cf_data* platform_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_ERR_HOST_BUS ; 
 scalar_t__ ATA_PROT_DMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ HSM_ST_ERR ; 
 scalar_t__ HSM_ST_LAST ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ata_eh_info*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ata_port*,struct ata_queued_cmd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct ata_port*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC10(struct ata_port *ap,
					struct ata_queued_cmd *qc)
{
	struct ata_eh_info *ehi = &ap->link.eh_info;
	struct octeon_cf_data *ocd = ap->dev->platform_data;
	union cvmx_mio_boot_dma_cfgx dma_cfg;
	union cvmx_mio_boot_dma_intx dma_int;
	struct octeon_cf_port *cf_port;
	u8 status;

	FUNC3("ata%u: protocol %d task_state %d\n",
		ap->print_id, qc->tf.protocol, ap->hsm_task_state);


	if (ap->hsm_task_state != HSM_ST_LAST)
		return 0;

	cf_port = ap->private_data;

	dma_cfg.u64 = FUNC6(FUNC0(ocd->dma_engine));
	if (dma_cfg.s.size != 0xfffff) {
		/* Error, the transfer was not complete.  */
		qc->err_mask |= AC_ERR_HOST_BUS;
		ap->hsm_task_state = HSM_ST_ERR;
	}

	/* Stop and clear the dma engine.  */
	dma_cfg.u64 = 0;
	dma_cfg.s.size = -1;
	FUNC7(FUNC0(ocd->dma_engine), dma_cfg.u64);

	/* Disable the interrupt.  */
	dma_int.u64 = 0;
	FUNC7(FUNC2(ocd->dma_engine), dma_int.u64);

	/* Clear the DMA complete status */
	dma_int.s.done = 1;
	FUNC7(FUNC1(ocd->dma_engine), dma_int.u64);

	status = ap->ops->sff_check_status(ap);

	FUNC5(ap, qc, status, 0);

	if (FUNC9(qc->err_mask) && (qc->tf.protocol == ATA_PROT_DMA))
		FUNC4(ehi, "DMA stat 0x%x", status);

	return 1;
}