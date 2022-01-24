#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  vp_idx; int /*<<< orphan*/  dpc_flags; int /*<<< orphan*/  loop_down_timer; int /*<<< orphan*/  loop_state; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  ABORT_ISP_ACTIVE ; 
 scalar_t__ LOOP_DOWN ; 
 scalar_t__ LOOP_DOWN_TIME ; 
 int /*<<< orphan*/  VCE_COMMAND_DISABLE_VPS_LOGO_ALL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ql_dbg_taskm ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC7(scsi_qla_host_t *vha)
{
	/*
	 * Physical port will do most of the abort and recovery work. We can
	 * just treat it as a loop down
	 */
	if (FUNC0(&vha->loop_state) != LOOP_DOWN) {
		FUNC1(&vha->loop_state, LOOP_DOWN);
		FUNC5(vha, 0);
	} else {
		if (!FUNC0(&vha->loop_down_timer))
			FUNC1(&vha->loop_down_timer, LOOP_DOWN_TIME);
	}

	/*
	 * To exclusively reset vport, we need to log it out first.  Note: this
	 * control_vp can fail if ISP reset is already issued, this is
	 * expected, as the vp would be already logged out due to ISP reset.
	 */
	if (!FUNC6(ABORT_ISP_ACTIVE, &vha->dpc_flags))
		FUNC3(vha, VCE_COMMAND_DISABLE_VPS_LOGO_ALL);

	FUNC2(ql_dbg_taskm, vha, 0x801d,
	    "Scheduling enable of Vport %d.\n", vha->vp_idx);
	return FUNC4(vha);
}