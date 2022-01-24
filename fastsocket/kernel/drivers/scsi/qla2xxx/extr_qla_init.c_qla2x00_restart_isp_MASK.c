#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct rsp_que {int dummy; } ;
struct req_que {int dummy; } ;
struct TYPE_15__ {int chip_reset_done; } ;
struct qla_hw_data {TYPE_2__ flags; TYPE_1__* isp_ops; struct rsp_que** rsp_q_map; struct req_que** req_q_map; } ;
struct TYPE_16__ {int online; } ;
struct TYPE_17__ {int device_flags; int /*<<< orphan*/  dpc_flags; int /*<<< orphan*/  loop_down_timer; TYPE_3__ flags; struct qla_hw_data* hw; } ;
typedef  TYPE_4__ scsi_qla_host_t ;
struct TYPE_14__ {int (* chip_diag ) (TYPE_4__*) ;} ;

/* Variables and functions */
 int DFLG_NO_CABLE ; 
 int /*<<< orphan*/  ISP_ABORT_NEEDED ; 
 int /*<<< orphan*/  LOOP_RESYNC_NEEDED ; 
 int /*<<< orphan*/  MK_SYNC_ALL ; 
 int /*<<< orphan*/  RESET_MARKER_NEEDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*,int,char*,int) ; 
 int /*<<< orphan*/  ql_dbg_taskm ; 
 int /*<<< orphan*/  FUNC3 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int FUNC5 (TYPE_4__*) ; 
 int FUNC6 (TYPE_4__*) ; 
 scalar_t__ FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,struct req_que*,struct rsp_que*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_4__*) ; 
 int FUNC10 (TYPE_4__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(scsi_qla_host_t *vha)
{
	int status = 0;
	uint32_t wait_time;
	struct qla_hw_data *ha = vha->hw;
	struct req_que *req = ha->req_q_map[0];
	struct rsp_que *rsp = ha->rsp_q_map[0];

	/* If firmware needs to be loaded */
	if (FUNC7(vha)) {
		vha->flags.online = 0;
		status = ha->isp_ops->chip_diag(vha);
		if (!status)
			status = FUNC9(vha);
	}

	if (!status && !(status = FUNC6(vha))) {
		FUNC1(RESET_MARKER_NEEDED, &vha->dpc_flags);
		ha->flags.chip_reset_done = 1;
		/* Initialize the queues in use */
		FUNC3(ha);

		status = FUNC5(vha);
		if (!status) {
			FUNC2(ql_dbg_taskm, vha, 0x8031,
			    "Start configure loop status = %d.\n", status);

			/* Issue a marker after FW becomes ready. */
			FUNC8(vha, req, rsp, 0, 0, MK_SYNC_ALL);

			vha->flags.online = 1;
			/* Wait at most MAX_TARGET RSCNs for a stable link. */
			wait_time = 256;
			do {
				FUNC1(LOOP_RESYNC_NEEDED, &vha->dpc_flags);
				FUNC4(vha);
				wait_time--;
			} while (!FUNC0(&vha->loop_down_timer) &&
				!(FUNC11(ISP_ABORT_NEEDED, &vha->dpc_flags))
				&& wait_time && (FUNC11(LOOP_RESYNC_NEEDED,
				&vha->dpc_flags)));
		}

		/* if no cable then assume it's good */
		if ((vha->device_flags & DFLG_NO_CABLE))
			status = 0;

		FUNC2(ql_dbg_taskm, vha, 0x8032,
		    "Configure loop done, status = 0x%x.\n", status);
	}
	return (status);
}