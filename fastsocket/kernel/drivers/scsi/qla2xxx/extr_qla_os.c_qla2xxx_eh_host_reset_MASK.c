#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {TYPE_1__* device; } ;
struct qla_hw_data {TYPE_2__* isp_ops; scalar_t__ wq; int /*<<< orphan*/  pdev; } ;
struct TYPE_15__ {int /*<<< orphan*/  host_no; int /*<<< orphan*/  dpc_flags; struct qla_hw_data* hw; } ;
typedef  TYPE_3__ scsi_qla_host_t ;
struct TYPE_14__ {scalar_t__ (* abort_isp ) (TYPE_3__*) ;} ;
struct TYPE_13__ {unsigned int id; unsigned int lun; int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABORT_ISP_ACTIVE ; 
 int FAILED ; 
 int /*<<< orphan*/  ISP_ABORT_NEEDED ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ QLA_SUCCESS ; 
 int SUCCESS ; 
 int /*<<< orphan*/  WAIT_HOST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  ql_log_warn ; 
 scalar_t__ FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (TYPE_3__*) ; 

__attribute__((used)) static int
FUNC13(struct scsi_cmnd *cmd)
{
	scsi_qla_host_t *vha = FUNC11(cmd->device->host);
	struct qla_hw_data *ha = vha->hw;
	int ret = FAILED;
	unsigned int id, lun;
	scsi_qla_host_t *base_vha = FUNC3(ha->pdev);

	id = cmd->device->id;
	lun = cmd->device->lun;

	FUNC4(ql_log_info, vha, 0x8018,
	    "ADAPTER RESET ISSUED nexus=%ld:%d:%d.\n", vha->host_no, id, lun);

	if (FUNC8(vha) != QLA_SUCCESS)
		goto eh_host_reset_lock;

	if (vha != base_vha) {
		if (FUNC6(vha))
			goto eh_host_reset_lock;
	} else {
		if (FUNC0(vha->hw)) {
			if (!FUNC9(vha)) {
				/* Ctx reset success */
				ret = SUCCESS;
				goto eh_host_reset_lock;
			}
			/* fall thru if ctx reset failed */
		}
		if (ha->wq)
			FUNC2(ha->wq);

		FUNC10(ABORT_ISP_ACTIVE, &base_vha->dpc_flags);
		if (ha->isp_ops->abort_isp(base_vha)) {
			FUNC1(ABORT_ISP_ACTIVE, &base_vha->dpc_flags);
			/* failed. schedule dpc to try */
			FUNC10(ISP_ABORT_NEEDED, &base_vha->dpc_flags);

			if (FUNC7(base_vha)
				!= QLA_SUCCESS) {
				FUNC4(ql_log_warn, vha, 0x802a,
				    "wait for hba online failed.\n");
				goto eh_host_reset_lock;
			}
		}
		FUNC1(ABORT_ISP_ACTIVE, &base_vha->dpc_flags);
	}

	/* Waiting for command to be returned to OS.*/
	if (FUNC5(vha, 0, 0, WAIT_HOST) ==
		QLA_SUCCESS)
		ret = SUCCESS;

eh_host_reset_lock:
	FUNC4(ql_log_info, vha, 0x8017,
	    "ADAPTER RESET %s nexus=%ld:%d:%d.\n",
	    (ret == FAILED) ? "FAILED" : "SUCCEEDED", vha->host_no, id, lun);

	return ret;
}