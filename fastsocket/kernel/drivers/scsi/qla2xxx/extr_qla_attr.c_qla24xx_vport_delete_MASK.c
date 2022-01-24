#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_13__ {int /*<<< orphan*/  cpu_affinity_enabled; } ;
struct qla_hw_data {TYPE_2__ flags; int /*<<< orphan*/  vport_lock; int /*<<< orphan*/  vp_idx_map; int /*<<< orphan*/  cur_vport_count; } ;
struct fc_vport {TYPE_3__* dd_data; } ;
struct TYPE_12__ {int delete_progress; } ;
struct TYPE_14__ {int /*<<< orphan*/  host; TYPE_7__* req; int /*<<< orphan*/  vp_idx; int /*<<< orphan*/  vref_count; scalar_t__ timer_active; TYPE_1__ flags; int /*<<< orphan*/  dpc_flags; struct qla_hw_data* hw; } ;
typedef  TYPE_3__ scsi_qla_host_t ;
struct TYPE_15__ {scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FCPORT_UPDATE_NEEDED ; 
 int /*<<< orphan*/  LOOP_RESYNC_ACTIVE ; 
 scalar_t__ QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int ql2xextended_error_logging ; 
 int /*<<< orphan*/  FUNC7 (int,TYPE_3__*,int,char*,int /*<<< orphan*/ ) ; 
 int ql_dbg_user ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_3__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 scalar_t__ FUNC11 (TYPE_3__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC18(struct fc_vport *fc_vport)
{
	scsi_qla_host_t *vha = fc_vport->dd_data;
	struct qla_hw_data *ha = vha->hw;
	uint16_t id = vha->vp_idx;

	while (FUNC17(LOOP_RESYNC_ACTIVE, &vha->dpc_flags) ||
	    FUNC17(FCPORT_UPDATE_NEEDED, &vha->dpc_flags))
		FUNC4(1000);

	FUNC10(vha);

	vha->flags.delete_progress = 1;

	FUNC3(vha->host);

	FUNC16(vha->host);

	/* Allow timer to run to drain queued items, when removing vp */
	FUNC9(vha);

	if (vha->timer_active) {
		FUNC13(vha);
		FUNC7(ql_dbg_user, vha, 0x7086,
		    "Timer for the VP[%d] has stopped\n", vha->vp_idx);
	}

	/* No pending activities shall be there on the vha now */
	if (ql2xextended_error_logging & ql_dbg_user)
		FUNC4(FUNC14()%10);  /* Just to see if something falls on
					* the net we have placed below */

	FUNC0(FUNC1(&vha->vref_count));

	FUNC12(vha);

	FUNC5(&ha->vport_lock);
	ha->cur_vport_count--;
	FUNC2(vha->vp_idx, ha->vp_idx_map);
	FUNC6(&ha->vport_lock);

	if (vha->req->id && !ha->flags.cpu_affinity_enabled) {
		if (FUNC11(vha, vha->req) != QLA_SUCCESS)
			FUNC8(ql_log_warn, vha, 0x7087,
			    "Queue delete failed.\n");
	}

	FUNC8(ql_log_info, vha, 0x7088, "VP[%d] deleted.\n", id);
	FUNC15(vha->host);
	return 0;
}