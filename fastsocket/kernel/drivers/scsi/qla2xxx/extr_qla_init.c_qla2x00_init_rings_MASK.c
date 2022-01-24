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
struct rsp_que {int dummy; } ;
struct req_que {int num_outstanding_cmds; int current_outstanding_cmd; int /*<<< orphan*/  length; int /*<<< orphan*/  cnt; scalar_t__ ring_index; int /*<<< orphan*/  ring; int /*<<< orphan*/  ring_ptr; int /*<<< orphan*/ ** outstanding_cmds; } ;
struct TYPE_13__ {scalar_t__ npiv_supported; } ;
struct qla_hw_data {int max_req_queues; int max_rsp_queues; scalar_t__ operating_mode; int /*<<< orphan*/  init_cb_size; scalar_t__ fw_xcb_count; scalar_t__ max_npiv_vports; TYPE_2__ flags; TYPE_1__* isp_ops; int /*<<< orphan*/  hardware_lock; struct rsp_que** rsp_q_map; struct req_que** req_q_map; scalar_t__ init_cb; } ;
struct TYPE_14__ {void* execution_throttle; } ;
struct mid_init_cb_24xx {TYPE_3__ init_cb; int /*<<< orphan*/  options; void* count; } ;
struct TYPE_15__ {struct qla_hw_data* hw; } ;
typedef  TYPE_4__ scsi_qla_host_t ;
struct TYPE_12__ {int /*<<< orphan*/  (* update_fw_options ) (TYPE_4__*) ;int /*<<< orphan*/  (* config_rings ) (TYPE_4__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_1 ; 
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 scalar_t__ FUNC2 (struct qla_hw_data*) ; 
 scalar_t__ LOOP ; 
 scalar_t__ MIN_MULTI_ID_FABRIC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_4__*,int,char*) ; 
 int /*<<< orphan*/  ql_dbg_init ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_4__*,int,char*) ; 
 int /*<<< orphan*/  ql_log_fatal ; 
 int FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rsp_que*) ; 
 int FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct rsp_que*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 

int
FUNC15(scsi_qla_host_t *vha)
{
	int	rval;
	unsigned long flags = 0;
	int cnt, que;
	struct qla_hw_data *ha = vha->hw;
	struct req_que *req;
	struct rsp_que *rsp;
	struct mid_init_cb_24xx *mid_init_cb =
	    (struct mid_init_cb_24xx *) ha->init_cb;

	FUNC11(&ha->hardware_lock, flags);

	/* Clear outstanding commands array. */
	for (que = 0; que < ha->max_req_queues; que++) {
		req = ha->req_q_map[que];
		if (!req)
			continue;
		for (cnt = 1; cnt < req->num_outstanding_cmds; cnt++)
			req->outstanding_cmds[cnt] = NULL;

		req->current_outstanding_cmd = 1;

		/* Initialize firmware. */
		req->ring_ptr  = req->ring;
		req->ring_index    = 0;
		req->cnt      = req->length;
	}

	for (que = 0; que < ha->max_rsp_queues; que++) {
		rsp = ha->rsp_q_map[que];
		if (!rsp)
			continue;
		/* Initialize response queue entries */
		if (FUNC2(ha))
			FUNC10(rsp);
		else
			FUNC8(rsp);
	}

	ha->isp_ops->config_rings(vha);

	FUNC12(&ha->hardware_lock, flags);

	FUNC5(ql_dbg_init, vha, 0x00d1, "Issue init firmware.\n");

	if (FUNC2(ha)) {
		rval = FUNC9(vha, ha->init_cb_size);
		goto next_check;
	}

	/* Update any ISP specific firmware options before initialization. */
	ha->isp_ops->update_fw_options(vha);

	if (ha->flags.npiv_supported) {
		if (ha->operating_mode == LOOP && !FUNC0(ha))
			ha->max_npiv_vports = MIN_MULTI_ID_FABRIC - 1;
		mid_init_cb->count = FUNC4(ha->max_npiv_vports);
	}

	if (FUNC1(ha)) {
		mid_init_cb->options = FUNC3(BIT_1);
		mid_init_cb->init_cb.execution_throttle =
		    FUNC4(ha->fw_xcb_count);
	}

	rval = FUNC7(vha, ha->init_cb_size);
next_check:
	if (rval) {
		FUNC6(ql_log_fatal, vha, 0x00d2,
		    "Init Firmware **** FAILED ****.\n");
	} else {
		FUNC5(ql_dbg_init, vha, 0x00d3,
		    "Init Firmware -- success.\n");
	}

	return (rval);
}