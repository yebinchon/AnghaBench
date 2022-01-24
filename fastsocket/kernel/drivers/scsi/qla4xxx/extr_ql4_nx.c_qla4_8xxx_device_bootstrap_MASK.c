#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct scsi_qla_host {TYPE_1__* isp_ops; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int (* need_reset ) (struct scsi_qla_host*) ;int (* restart_firmware ) (struct scsi_qla_host*) ;int /*<<< orphan*/  (* idc_lock ) (struct scsi_qla_host*) ;int /*<<< orphan*/  (* idc_unlock ) (struct scsi_qla_host*) ;int /*<<< orphan*/  (* rom_lock_recovery ) (struct scsi_qla_host*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AF_83XX_NO_FW_DUMP ; 
 scalar_t__ GRACEFUL_RESET_BIT1 ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  QLA83XX_IDC_DRV_CTRL ; 
 int /*<<< orphan*/  QLA8XXX_CRB_DEV_STATE ; 
 int /*<<< orphan*/  QLA8XXX_DEV_FAILED ; 
 int /*<<< orphan*/  QLA8XXX_DEV_INITIALIZING ; 
 int /*<<< orphan*/  QLA8XXX_DEV_READY ; 
 int /*<<< orphan*/  QLA8XXX_PEG_ALIVE_COUNTER ; 
 int QLA_ERROR ; 
 int QLA_SUCCESS ; 
 scalar_t__ FUNC0 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC1 (struct scsi_qla_host*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct scsi_qla_host*,char*) ; 
 scalar_t__ FUNC4 (struct scsi_qla_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_qla_host*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC8 (struct scsi_qla_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_qla_host*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC12 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC13 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC14 (struct scsi_qla_host*) ; 
 int FUNC15 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC16 (struct scsi_qla_host*) ; 

int FUNC17(struct scsi_qla_host *ha)
{
	int rval = QLA_ERROR;
	int i, timeout;
	uint32_t old_count, count, idc_ctrl;
	int need_reset = 0, peg_stuck = 1;

	need_reset = ha->isp_ops->need_reset(ha);
	old_count = FUNC8(ha, QLA8XXX_PEG_ALIVE_COUNTER);

	for (i = 0; i < 10; i++) {
		timeout = FUNC2(200);
		if (timeout) {
			FUNC9(ha, QLA8XXX_CRB_DEV_STATE,
					    QLA8XXX_DEV_FAILED);
			return rval;
		}

		count = FUNC8(ha, QLA8XXX_PEG_ALIVE_COUNTER);
		if (count != old_count)
			peg_stuck = 0;
	}

	if (need_reset) {
		/* We are trying to perform a recovery here. */
		if (peg_stuck)
			ha->isp_ops->rom_lock_recovery(ha);
		goto dev_initialize;
	} else  {
		/* Start of day for this ha context. */
		if (peg_stuck) {
			/* Either we are the first or recovery in progress. */
			ha->isp_ops->rom_lock_recovery(ha);
			goto dev_initialize;
		} else {
			/* Firmware already running. */
			rval = QLA_SUCCESS;
			goto dev_ready;
		}
	}

dev_initialize:
	/* set to DEV_INITIALIZING */
	FUNC3(KERN_INFO, ha, "HW State: INITIALIZING\n");
	FUNC9(ha, QLA8XXX_CRB_DEV_STATE,
			    QLA8XXX_DEV_INITIALIZING);

	/*
	 * For ISP8324, if IDC_CTRL GRACEFUL_RESET_BIT1 is set, reset it after
	 * device goes to INIT state.
	 */
	if (FUNC1(ha)) {
		idc_ctrl = FUNC4(ha, QLA83XX_IDC_DRV_CTRL);
		if (idc_ctrl & GRACEFUL_RESET_BIT1) {
			FUNC5(ha, QLA83XX_IDC_DRV_CTRL,
					 (idc_ctrl & ~GRACEFUL_RESET_BIT1));
			FUNC10(AF_83XX_NO_FW_DUMP, &ha->flags);
		}
	}

	ha->isp_ops->idc_unlock(ha);

	if (FUNC0(ha))
		FUNC7(ha);

	rval = ha->isp_ops->restart_firmware(ha);
	ha->isp_ops->idc_lock(ha);

	if (rval != QLA_SUCCESS) {
		FUNC3(KERN_INFO, ha, "HW State: FAILED\n");
		FUNC6(ha);
		FUNC9(ha, QLA8XXX_CRB_DEV_STATE,
				    QLA8XXX_DEV_FAILED);
		return rval;
	}

dev_ready:
	FUNC3(KERN_INFO, ha, "HW State: READY\n");
	FUNC9(ha, QLA8XXX_CRB_DEV_STATE, QLA8XXX_DEV_READY);

	return rval;
}