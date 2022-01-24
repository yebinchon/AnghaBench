#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int chip_reset_done; scalar_t__ eeh_busy; scalar_t__ pci_channel_io_perm_failure; } ;
struct qla_hw_data {TYPE_3__ flags; TYPE_2__* isp_ops; int /*<<< orphan*/  rsp_qid_map; int /*<<< orphan*/  req_qid_map; scalar_t__ beacon_blink_led; scalar_t__ isp_abort_cnt; scalar_t__ thermal_support; } ;
struct TYPE_13__ {scalar_t__ management_server_logged_in; scalar_t__ reset_active; scalar_t__ online; } ;
struct TYPE_16__ {int /*<<< orphan*/  req; scalar_t__ marker_needed; TYPE_1__ flags; scalar_t__ dpc_flags; int /*<<< orphan*/  device_flags; int /*<<< orphan*/  loop_state; int /*<<< orphan*/  loop_down_timer; struct qla_hw_data* hw; } ;
typedef  TYPE_4__ scsi_qla_host_t ;
struct TYPE_14__ {int (* pci_config ) (TYPE_4__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DFLG_NO_CABLE ; 
 int /*<<< orphan*/  LOOP_DOWN ; 
 int /*<<< orphan*/  LOOP_DOWN_TIME ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,int,char*) ; 
 int /*<<< orphan*/  ql_dbg_init ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_4__*,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int FUNC3 (struct qla_hw_data*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_4__*) ; 
 int FUNC5 (TYPE_4__*) ; 
 int FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_4__*) ; 

int
FUNC10(scsi_qla_host_t *vha)
{
	int	rval;
	struct qla_hw_data *ha = vha->hw;

	/* Clear adapter flags. */
	vha->flags.online = 0;
	ha->flags.chip_reset_done = 0;
	vha->flags.reset_active = 0;
	ha->flags.pci_channel_io_perm_failure = 0;
	ha->flags.eeh_busy = 0;
	ha->thermal_support = 0;
	FUNC0(&vha->loop_down_timer, LOOP_DOWN_TIME);
	FUNC0(&vha->loop_state, LOOP_DOWN);
	vha->device_flags = DFLG_NO_CABLE;
	vha->dpc_flags = 0;
	vha->flags.management_server_logged_in = 0;
	vha->marker_needed = 0;
	ha->isp_abort_cnt = 0;
	ha->beacon_blink_led = 0;

	FUNC8(0, ha->req_qid_map);
	FUNC8(0, ha->rsp_qid_map);

	FUNC1(ql_dbg_init, vha, 0x0147,
	    "Configuring PCI space...\n");

	rval = ha->isp_ops->pci_config(vha);
	if (rval) {
		FUNC2(ql_log_warn, vha, 0x0148,
		    "Unable to configure PCI space.\n");
		return rval;
	}

	rval = FUNC6(vha);
	if (rval != QLA_SUCCESS)
		return rval;

	FUNC7(vha);

	rval = FUNC5(vha);
	if (rval != QLA_SUCCESS)
		return rval;

	/*
	 * Allocate the array of outstanding commands
	 * now that we know the firmware resources.
	 */
	rval = FUNC3(ha, vha->req);
	if (rval != QLA_SUCCESS)
		return rval;

	rval = FUNC4(vha);
	ha->flags.chip_reset_done = 1;

	return rval;
}