#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int nic_core_reset_hdlr_active; scalar_t__ isp82xx_fw_hung; } ;
struct qla_hw_data {scalar_t__ isp_abort_cnt; TYPE_2__* isp_ops; TYPE_1__ flags; } ;
struct TYPE_14__ {int online; } ;
struct TYPE_15__ {int device_flags; int /*<<< orphan*/  dpc_flags; TYPE_3__ flags; struct qla_hw_data* hw; } ;
typedef  TYPE_4__ scsi_qla_host_t ;
struct TYPE_13__ {int /*<<< orphan*/  (* reset_adapter ) (TYPE_4__*) ;} ;

/* Variables and functions */
 int DFLG_DEV_FAILED ; 
 int /*<<< orphan*/  ISP_ABORT_RETRY ; 
 scalar_t__ MAX_RETRIES_OF_ISP_ABORT ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  ql_dbg_taskm ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int /*<<< orphan*/  FUNC3 (struct qla_hw_data*) ; 
 int FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC12(scsi_qla_host_t *vha)
{
	int rval;
	struct qla_hw_data *ha = vha->hw;

	if (vha->device_flags & DFLG_DEV_FAILED) {
		FUNC2(ql_log_warn, vha, 0x8024,
		    "Device in failed state, exiting.\n");
		return QLA_SUCCESS;
	}
	ha->flags.nic_core_reset_hdlr_active = 1;

	FUNC5(ha);
	FUNC8(vha);
	FUNC6(ha);

	rval = FUNC4(vha);

	FUNC5(ha);
	FUNC3(ha);
	FUNC6(ha);

	if (rval == QLA_SUCCESS) {
		ha->flags.isp82xx_fw_hung = 0;
		ha->flags.nic_core_reset_hdlr_active = 0;
		FUNC7(vha);
	}

	if (rval) {
		vha->flags.online = 1;
		if (FUNC11(ISP_ABORT_RETRY, &vha->dpc_flags)) {
			if (ha->isp_abort_cnt == 0) {
				FUNC2(ql_log_warn, vha, 0x8027,
				    "ISP error recover failed - board "
				    "disabled.\n");
				/*
				 * The next call disables the board
				 * completely.
				 */
				ha->isp_ops->reset_adapter(vha);
				vha->flags.online = 0;
				FUNC0(ISP_ABORT_RETRY,
				    &vha->dpc_flags);
				rval = QLA_SUCCESS;
			} else { /* schedule another ISP abort */
				ha->isp_abort_cnt--;
				FUNC2(ql_log_warn, vha, 0x8036,
				    "ISP abort - retry remaining %d.\n",
				    ha->isp_abort_cnt);
				rval = QLA_FUNCTION_FAILED;
			}
		} else {
			ha->isp_abort_cnt = MAX_RETRIES_OF_ISP_ABORT;
			FUNC1(ql_dbg_taskm, vha, 0x8029,
			    "ISP error recovery - retrying (%d) more times.\n",
			    ha->isp_abort_cnt);
			FUNC9(ISP_ABORT_RETRY, &vha->dpc_flags);
			rval = QLA_FUNCTION_FAILED;
		}
	}
	return rval;
}