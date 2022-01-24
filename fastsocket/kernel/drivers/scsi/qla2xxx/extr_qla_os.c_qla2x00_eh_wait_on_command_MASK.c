#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {TYPE_1__* device; } ;
struct TYPE_7__ {scalar_t__ eeh_busy; } ;
struct qla_hw_data {TYPE_2__ flags; int /*<<< orphan*/  pdev; } ;
struct TYPE_8__ {struct qla_hw_data* hw; } ;
typedef  TYPE_3__ scsi_qla_host_t ;
struct TYPE_6__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABORT_POLLING_PERIOD ; 
 unsigned long ABORT_WAIT_ITER ; 
 scalar_t__ FUNC0 (struct scsi_cmnd*) ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,int,char*) ; 
 int /*<<< orphan*/  ql_dbg_taskm ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct scsi_cmnd *cmd)
{
#define ABORT_POLLING_PERIOD	1000
#define ABORT_WAIT_ITER		((10 * 1000) / (ABORT_POLLING_PERIOD))
	unsigned long wait_iter = ABORT_WAIT_ITER;
	scsi_qla_host_t *vha = FUNC4(cmd->device->host);
	struct qla_hw_data *ha = vha->hw;
	int ret = QLA_SUCCESS;

	if (FUNC5(FUNC2(ha->pdev)) || ha->flags.eeh_busy) {
		FUNC3(ql_dbg_taskm, vha, 0x8005,
		    "Return:eh_wait.\n");
		return ret;
	}

	while (FUNC0(cmd) && wait_iter--) {
		FUNC1(ABORT_POLLING_PERIOD);
	}
	if (FUNC0(cmd))
		ret = QLA_FUNCTION_FAILED;

	return ret;
}