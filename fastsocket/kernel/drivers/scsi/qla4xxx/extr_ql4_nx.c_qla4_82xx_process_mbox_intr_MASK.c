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
struct TYPE_5__ {int /*<<< orphan*/  tgt_mask_reg; } ;
struct scsi_qla_host {int mbox_status_count; TYPE_2__ nx_legacy_intr; int /*<<< orphan*/  flags; TYPE_1__* isp_ops; TYPE_3__* qla4_82xx_reg; } ;
struct TYPE_6__ {int /*<<< orphan*/  host_status; int /*<<< orphan*/  host_int; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* interrupt_service_routine ) (struct scsi_qla_host*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INTERRUPTS_ON ; 
 int /*<<< orphan*/  AF_INTx_ENABLED ; 
 int ISRX_82XX_RISC_INT ; 
 int /*<<< orphan*/  FUNC0 (struct scsi_qla_host*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_qla_host*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct scsi_qla_host *ha, int out_count)
{
	int intr_status;

	intr_status = FUNC1(&ha->qla4_82xx_reg->host_int);
	if (intr_status & ISRX_82XX_RISC_INT) {
		ha->mbox_status_count = out_count;
		intr_status = FUNC1(&ha->qla4_82xx_reg->host_status);
		ha->isp_ops->interrupt_service_routine(ha, intr_status);

		if (FUNC3(AF_INTERRUPTS_ON, &ha->flags) &&
		    FUNC3(AF_INTx_ENABLED, &ha->flags))
			FUNC0(ha, ha->nx_legacy_intr.tgt_mask_reg,
					0xfbff);
	}
}