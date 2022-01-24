#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
typedef  void* uint8_t ;
typedef  size_t uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_18__ {scalar_t__ process_response_queue; } ;
struct scsi_qla_host {scalar_t__ marker_needed; TYPE_3__ flags; int /*<<< orphan*/  vp_idx; struct req_que* req; struct qla_hw_data* hw; } ;
struct scsi_cmnd {unsigned char* host_scribble; int /*<<< orphan*/  cmd_len; int /*<<< orphan*/  cmnd; TYPE_9__* device; int /*<<< orphan*/  sc_data_direction; } ;
struct rsp_que {TYPE_4__* ring_ptr; scalar_t__ id; } ;
struct req_que {size_t current_outstanding_cmd; size_t num_outstanding_cmds; scalar_t__ cnt; scalar_t__ ring_index; scalar_t__ length; int /*<<< orphan*/  req_q_in; scalar_t__ ring_ptr; scalar_t__ ring; int /*<<< orphan*/  id; TYPE_10__** outstanding_cmds; int /*<<< orphan*/ * req_q_out; } ;
struct qla_hw_data {int /*<<< orphan*/  hardware_lock; TYPE_2__* iobase; TYPE_5__* pdev; } ;
struct cmd_type_7 {void** fcp_cdb; void* entry_status; void* entry_count; int /*<<< orphan*/  byte_count; int /*<<< orphan*/  task; int /*<<< orphan*/  lun; int /*<<< orphan*/  vp_index; int /*<<< orphan*/ * port_id; void* nport_handle; void* dseg_count; int /*<<< orphan*/  handle; } ;
struct TYPE_15__ {size_t handle; int /*<<< orphan*/  flags; TYPE_8__* fcport; } ;
typedef  TYPE_10__ srb_t ;
struct TYPE_24__ {int /*<<< orphan*/  lun; } ;
struct TYPE_21__ {int /*<<< orphan*/  domain; int /*<<< orphan*/  area; int /*<<< orphan*/  al_pa; } ;
struct TYPE_22__ {TYPE_6__ b; } ;
struct TYPE_23__ {scalar_t__ loop_id; struct scsi_qla_host* vha; TYPE_7__ d_id; } ;
struct TYPE_20__ {int /*<<< orphan*/  dev; } ;
struct TYPE_19__ {scalar_t__ signature; } ;
struct TYPE_16__ {int /*<<< orphan*/  hccr; } ;
struct TYPE_17__ {TYPE_1__ isp24; } ;

/* Variables and functions */
 struct scsi_cmnd* FUNC0 (TYPE_10__*) ; 
#define  HEAD_OF_QUEUE_TAG 129 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  MK_SYNC_ALL ; 
#define  ORDERED_QUEUE_TAG 128 
 int QLA_FUNCTION_FAILED ; 
 scalar_t__ QLA_SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ REQUEST_ENTRY_SIZE ; 
 scalar_t__ RESPONSE_PROCESSED ; 
 int /*<<< orphan*/  SRB_DMA_VALID ; 
 int /*<<< orphan*/  TSK_HEAD_OF_QUEUE ; 
 int /*<<< orphan*/  TSK_ORDERED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (size_t) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void**,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (size_t*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_10__*,struct cmd_type_7*,scalar_t__) ; 
 scalar_t__ FUNC12 (struct scsi_qla_host*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct scsi_qla_host*,struct rsp_que*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_10__*,struct rsp_que**) ; 
 scalar_t__ FUNC15 (struct scsi_qla_host*,struct req_que*,struct rsp_que*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC17 (struct scsi_cmnd*) ; 
 scalar_t__ FUNC18 (struct scsi_cmnd*,char*) ; 
 scalar_t__ FUNC19 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC20 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 () ; 

int
FUNC25(srb_t *sp)
{
	int		ret, nseg;
	unsigned long   flags;
	uint32_t	*clr_ptr;
	uint32_t        index;
	uint32_t	handle;
	struct cmd_type_7 *cmd_pkt;
	uint16_t	cnt;
	uint16_t	req_cnt;
	uint16_t	tot_dsds;
	struct req_que *req = NULL;
	struct rsp_que *rsp = NULL;
	struct scsi_cmnd *cmd = FUNC0(sp);
	struct scsi_qla_host *vha = sp->fcport->vha;
	struct qla_hw_data *ha = vha->hw;
	char		tag[2];

	/* Setup device pointers. */
	ret = 0;

	FUNC14(sp, &rsp);
	req = vha->req;

	/* So we know we haven't pci_map'ed anything yet */
	tot_dsds = 0;

	/* Send marker if required */
	if (vha->marker_needed != 0) {
		if (FUNC15(vha, req, rsp, 0, 0, MK_SYNC_ALL) !=
		    QLA_SUCCESS)
			return QLA_FUNCTION_FAILED;
		vha->marker_needed = 0;
	}

	/* Acquire ring specific lock */
	FUNC21(&ha->hardware_lock, flags);

	/* Check for room in outstanding command list. */
	handle = req->current_outstanding_cmd;
	for (index = 1; index < req->num_outstanding_cmds; index++) {
		handle++;
		if (handle == req->num_outstanding_cmds)
			handle = 1;
		if (!req->outstanding_cmds[handle])
			break;
	}
	if (index == req->num_outstanding_cmds)
		goto queuing_error;

	/* Map the sg table so we have an accurate count of sg entries needed */
	if (FUNC19(cmd)) {
		nseg = FUNC6(&ha->pdev->dev, FUNC20(cmd),
		    FUNC19(cmd), cmd->sc_data_direction);
		if (FUNC23(!nseg))
			goto queuing_error;
	} else
		nseg = 0;

	tot_dsds = nseg;
	req_cnt = FUNC12(vha, tot_dsds);
	if (req->cnt < (req_cnt + 2)) {
		cnt = FUNC2(req->req_q_out);

		if (req->ring_index < cnt)
			req->cnt = cnt - req->ring_index;
		else
			req->cnt = req->length -
				(req->ring_index - cnt);
		if (req->cnt < (req_cnt + 2))
			goto queuing_error;
	}

	/* Build command packet. */
	req->current_outstanding_cmd = handle;
	req->outstanding_cmds[handle] = sp;
	sp->handle = handle;
	cmd->host_scribble = (unsigned char *)(unsigned long)handle;
	req->cnt -= req_cnt;

	cmd_pkt = (struct cmd_type_7 *)req->ring_ptr;
	cmd_pkt->handle = FUNC1(req->id, handle);

	/* Zero out remaining portion of packet. */
	/*    tagged queuing modifier -- default is TSK_SIMPLE (0). */
	clr_ptr = (uint32_t *)cmd_pkt + 2;
	FUNC10(clr_ptr, 0, REQUEST_ENTRY_SIZE - 8);
	cmd_pkt->dseg_count = FUNC4(tot_dsds);

	/* Set NPORT-ID and LUN number*/
	cmd_pkt->nport_handle = FUNC4(sp->fcport->loop_id);
	cmd_pkt->port_id[0] = sp->fcport->d_id.b.al_pa;
	cmd_pkt->port_id[1] = sp->fcport->d_id.b.area;
	cmd_pkt->port_id[2] = sp->fcport->d_id.b.domain;
	cmd_pkt->vp_index = sp->fcport->vha->vp_idx;

	FUNC8(cmd->device->lun, &cmd_pkt->lun);
	FUNC7((uint8_t *)&cmd_pkt->lun, sizeof(cmd_pkt->lun));

	/* Update tagged queuing modifier -- default is TSK_SIMPLE (0). */
	if (FUNC18(cmd, tag)) {
		switch (tag[0]) {
		case HEAD_OF_QUEUE_TAG:
			cmd_pkt->task = TSK_HEAD_OF_QUEUE;
			break;
		case ORDERED_QUEUE_TAG:
			cmd_pkt->task = TSK_ORDERED;
			break;
		}
	}

	/* Load SCSI command packet. */
	FUNC9(cmd_pkt->fcp_cdb, cmd->cmnd, cmd->cmd_len);
	FUNC7(cmd_pkt->fcp_cdb, sizeof(cmd_pkt->fcp_cdb));

	cmd_pkt->byte_count = FUNC5((uint32_t)FUNC16(cmd));

	/* Build IOCB segments */
	FUNC11(sp, cmd_pkt, tot_dsds);

	/* Set total data segment count. */
	cmd_pkt->entry_count = (uint8_t)req_cnt;
	/* Specify response queue number where completion should happen */
	cmd_pkt->entry_status = (uint8_t) rsp->id;
	FUNC24();
	/* Adjust ring index. */
	req->ring_index++;
	if (req->ring_index == req->length) {
		req->ring_index = 0;
		req->ring_ptr = req->ring;
	} else
		req->ring_ptr++;

	sp->flags |= SRB_DMA_VALID;

	/* Set chip new ring index. */
	FUNC3(req->req_q_in, req->ring_index);
	FUNC2(&ha->iobase->isp24.hccr);

	/* Manage unprocessed RIO/ZIO commands in response queue. */
	if (vha->flags.process_response_queue &&
		rsp->ring_ptr->signature != RESPONSE_PROCESSED)
		FUNC13(vha, rsp);

	FUNC22(&ha->hardware_lock, flags);
	return QLA_SUCCESS;

queuing_error:
	if (tot_dsds)
		FUNC17(cmd);

	FUNC22(&ha->hardware_lock, flags);

	return QLA_FUNCTION_FAILED;
}