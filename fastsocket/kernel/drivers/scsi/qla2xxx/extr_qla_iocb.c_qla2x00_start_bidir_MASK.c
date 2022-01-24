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
typedef  scalar_t__ uint8_t ;
typedef  size_t uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_6__ {int /*<<< orphan*/  domain; int /*<<< orphan*/  area; int /*<<< orphan*/  al_pa; } ;
struct TYPE_7__ {TYPE_1__ b; } ;
struct scsi_qla_host {scalar_t__ marker_needed; TYPE_2__ d_id; int /*<<< orphan*/  self_login_loop_id; struct req_que* req; struct qla_hw_data* hw; } ;
struct rsp_que {scalar_t__ id; } ;
struct req_que {size_t current_outstanding_cmd; size_t num_outstanding_cmds; scalar_t__ cnt; scalar_t__ ring_index; scalar_t__ length; TYPE_3__** outstanding_cmds; int /*<<< orphan*/  id; scalar_t__ ring_ptr; int /*<<< orphan*/  req_q_out; } ;
struct qla_hw_data {int /*<<< orphan*/  hardware_lock; struct rsp_que** rsp_q_map; } ;
struct cmd_bidir {scalar_t__ entry_status; int /*<<< orphan*/ * port_id; int /*<<< orphan*/  nport_handle; int /*<<< orphan*/  handle; } ;
struct TYPE_8__ {size_t handle; } ;
typedef  TYPE_3__ srb_t ;

/* Variables and functions */
 int EXT_STATUS_BUSY ; 
 int EXT_STATUS_MAILBOX ; 
 int EXT_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  MK_SYNC_ALL ; 
 int QLA_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ REQUEST_ENTRY_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (struct scsi_qla_host*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,struct scsi_qla_host*,struct cmd_bidir*,size_t) ; 
 int FUNC6 (struct scsi_qla_host*,struct req_que*,struct rsp_que*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_qla_host*,struct req_que*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 () ; 

int
FUNC11(srb_t *sp, struct scsi_qla_host *vha, uint32_t tot_dsds)
{

	struct qla_hw_data *ha = vha->hw;
	unsigned long flags;
	uint32_t handle;
	uint32_t index;
	uint16_t req_cnt;
	uint16_t cnt;
	uint32_t *clr_ptr;
	struct cmd_bidir *cmd_pkt = NULL;
	struct rsp_que *rsp;
	struct req_que *req;
	int rval = EXT_STATUS_OK;

	rval = QLA_SUCCESS;

	rsp = ha->rsp_q_map[0];
	req = vha->req;

	/* Send marker if required */
	if (vha->marker_needed != 0) {
		if (FUNC6(vha, req,
			rsp, 0, 0, MK_SYNC_ALL) != QLA_SUCCESS)
			return EXT_STATUS_MAILBOX;
		vha->marker_needed = 0;
	}

	/* Acquire ring specific lock */
	FUNC8(&ha->hardware_lock, flags);

	/* Check for room in outstanding command list. */
	handle = req->current_outstanding_cmd;
	for (index = 1; index < req->num_outstanding_cmds; index++) {
		handle++;
	if (handle == req->num_outstanding_cmds)
		handle = 1;
	if (!req->outstanding_cmds[handle])
		break;
	}

	if (index == req->num_outstanding_cmds) {
		rval = EXT_STATUS_BUSY;
		goto queuing_error;
	}

	/* Calculate number of IOCB required */
	req_cnt = FUNC4(vha, tot_dsds);

	/* Check for room on request queue. */
	if (req->cnt < req_cnt + 2) {
		cnt = FUNC1(req->req_q_out);

		if  (req->ring_index < cnt)
			req->cnt = cnt - req->ring_index;
		else
			req->cnt = req->length -
				(req->ring_index - cnt);
	}
	if (req->cnt < req_cnt + 2) {
		rval = EXT_STATUS_BUSY;
		goto queuing_error;
	}

	cmd_pkt = (struct cmd_bidir *)req->ring_ptr;
	cmd_pkt->handle = FUNC0(req->id, handle);

	/* Zero out remaining portion of packet. */
	/* tagged queuing modifier -- default is TSK_SIMPLE (0).*/
	clr_ptr = (uint32_t *)cmd_pkt + 2;
	FUNC3(clr_ptr, 0, REQUEST_ENTRY_SIZE - 8);

	/* Set NPORT-ID  (of vha)*/
	cmd_pkt->nport_handle = FUNC2(vha->self_login_loop_id);
	cmd_pkt->port_id[0] = vha->d_id.b.al_pa;
	cmd_pkt->port_id[1] = vha->d_id.b.area;
	cmd_pkt->port_id[2] = vha->d_id.b.domain;

	FUNC5(sp, vha, cmd_pkt, tot_dsds);
	cmd_pkt->entry_status = (uint8_t) rsp->id;
	/* Build command packet. */
	req->current_outstanding_cmd = handle;
	req->outstanding_cmds[handle] = sp;
	sp->handle = handle;
	req->cnt -= req_cnt;

	/* Send the command to the firmware */
	FUNC10();
	FUNC7(vha, req);
queuing_error:
	FUNC9(&ha->hardware_lock, flags);
	return rval;
}