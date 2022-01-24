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
struct scsi_qla_host {TYPE_4__* isp_ops; scalar_t__ task_wq; scalar_t__ dpc_thread; scalar_t__ timer_active; TYPE_3__* qla4_83xx_reg; TYPE_2__* qla4_82xx_reg; TYPE_1__* reg; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* idc_unlock ) (struct scsi_qla_host*) ;int /*<<< orphan*/  (* idc_lock ) (struct scsi_qla_host*) ;int /*<<< orphan*/  (* reset_firmware ) (struct scsi_qla_host*) ;int /*<<< orphan*/  (* disable_intrs ) (struct scsi_qla_host*) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  risc_intr; } ;
struct TYPE_6__ {int /*<<< orphan*/  host_int; } ;
struct TYPE_5__ {int /*<<< orphan*/  ctrl_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_SCSI_PROCESSOR_INTR ; 
 int DID_NO_CONNECT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC2 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC3 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC4 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_qla_host*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC8 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC13 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC14 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC15 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(struct scsi_qla_host *ha)
{
	FUNC6(ha, DID_NO_CONNECT << 16);

	/* Turn-off interrupts on the card. */
	ha->isp_ops->disable_intrs(ha);

	if (FUNC1(ha)) {
		FUNC16(FUNC11(CSR_SCSI_PROCESSOR_INTR),
		       &ha->reg->ctrl_status);
		FUNC10(&ha->reg->ctrl_status);
	} else if (FUNC2(ha)) {
		FUNC16(0, &ha->qla4_82xx_reg->host_int);
		FUNC10(&ha->qla4_82xx_reg->host_int);
	} else if (FUNC3(ha)) {
		FUNC16(0, &ha->qla4_83xx_reg->risc_intr);
		FUNC10(&ha->qla4_83xx_reg->risc_intr);
	}

	/* Remove timer thread, if present */
	if (ha->timer_active)
		FUNC9(ha);

	/* Kill the kernel thread for this host */
	if (ha->dpc_thread)
		FUNC0(ha->dpc_thread);

	/* Kill the kernel thread for this host */
	if (ha->task_wq)
		FUNC0(ha->task_wq);

	/* Put firmware in known state */
	ha->isp_ops->reset_firmware(ha);

	if (FUNC4(ha)) {
		ha->isp_ops->idc_lock(ha);
		FUNC5(ha);
		ha->isp_ops->idc_unlock(ha);
	}

	/* Detach interrupts */
	FUNC7(ha);

	/* free extra memory */
	FUNC8(ha);
}