#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_9__ ;
typedef  struct TYPE_32__   TYPE_8__ ;
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_12__ ;
typedef  struct TYPE_23__   TYPE_11__ ;
typedef  struct TYPE_22__   TYPE_10__ ;

/* Type definitions */
typedef  int uint16_t ;
struct qla_hw_data {TYPE_9__* pdev; } ;
struct TYPE_30__ {int /*<<< orphan*/  al_pa; int /*<<< orphan*/  area; int /*<<< orphan*/  domain; } ;
struct TYPE_31__ {TYPE_6__ b; } ;
struct fc_port {int loop_id; TYPE_7__ d_id; TYPE_12__* vha; } ;
struct TYPE_22__ {int sg_cnt; int /*<<< orphan*/  sg_list; } ;
struct TYPE_32__ {int sg_cnt; int /*<<< orphan*/  sg_list; } ;
struct fc_bsg_job {TYPE_10__ reply_payload; TYPE_8__ request_payload; TYPE_5__* request; struct Scsi_Host* shost; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_26__ {struct fc_bsg_job* bsg_job; } ;
struct TYPE_23__ {char* name; int /*<<< orphan*/  done; int /*<<< orphan*/  free; TYPE_2__ u; int /*<<< orphan*/  iocbs; int /*<<< orphan*/  type; } ;
typedef  TYPE_11__ srb_t ;
struct TYPE_25__ {int /*<<< orphan*/  online; } ;
struct TYPE_24__ {int mgmt_svr_loop_id; TYPE_1__ flags; struct qla_hw_data* hw; } ;
typedef  TYPE_12__ scsi_qla_host_t ;
struct TYPE_33__ {int /*<<< orphan*/  dev; } ;
struct TYPE_27__ {int preamble_word1; int preamble_word2; int /*<<< orphan*/ * port_id; } ;
struct TYPE_28__ {TYPE_3__ h_ct; } ;
struct TYPE_29__ {TYPE_4__ rqst_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int DRIVER_ERROR ; 
 int EAGAIN ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NPH_SNS ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  SRB_CT_CMD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_12__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_dbg_user ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_12__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 struct fc_port* FUNC7 (TYPE_12__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qla2x00_bsg_job_done ; 
 int /*<<< orphan*/  qla2x00_bsg_sp_free ; 
 TYPE_11__* FUNC8 (TYPE_12__*,struct fc_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_12__*,TYPE_11__*) ; 
 int FUNC10 (TYPE_11__*) ; 
 TYPE_12__* FUNC11 (struct Scsi_Host*) ; 

__attribute__((used)) static int
FUNC12(struct fc_bsg_job *bsg_job)
{
	srb_t *sp;
	struct Scsi_Host *host = bsg_job->shost;
	scsi_qla_host_t *vha = FUNC11(host);
	struct qla_hw_data *ha = vha->hw;
	int rval = (DRIVER_ERROR << 16);
	int req_sg_cnt, rsp_sg_cnt;
	uint16_t loop_id;
	struct fc_port *fcport;
	char  *type = "FC_BSG_HST_CT";

	req_sg_cnt =
		FUNC1(&ha->pdev->dev, bsg_job->request_payload.sg_list,
		bsg_job->request_payload.sg_cnt, DMA_TO_DEVICE);
	if (!req_sg_cnt) {
		FUNC5(ql_log_warn, vha, 0x700f,
		    "dma_map_sg return %d for request\n", req_sg_cnt);
		rval = -ENOMEM;
		goto done;
	}

	rsp_sg_cnt = FUNC1(&ha->pdev->dev, bsg_job->reply_payload.sg_list,
		bsg_job->reply_payload.sg_cnt, DMA_FROM_DEVICE);
	if (!rsp_sg_cnt) {
		FUNC5(ql_log_warn, vha, 0x7010,
		    "dma_map_sg return %d for reply\n", rsp_sg_cnt);
		rval = -ENOMEM;
		goto done;
	}

	if ((req_sg_cnt !=  bsg_job->request_payload.sg_cnt) ||
	    (rsp_sg_cnt != bsg_job->reply_payload.sg_cnt)) {
		FUNC5(ql_log_warn, vha, 0x7011,
		    "request_sg_cnt: %x dma_request_sg_cnt: %x reply_sg_cnt:%x "
		    "dma_reply_sg_cnt: %x\n", bsg_job->request_payload.sg_cnt,
		    req_sg_cnt, bsg_job->reply_payload.sg_cnt, rsp_sg_cnt);
		rval = -EAGAIN;
		goto done_unmap_sg;
	}

	if (!vha->flags.online) {
		FUNC5(ql_log_warn, vha, 0x7012,
		    "Host is not online.\n");
		rval = -EIO;
		goto done_unmap_sg;
	}

	loop_id =
		(bsg_job->request->rqst_data.h_ct.preamble_word1 & 0xFF000000)
			>> 24;
	switch (loop_id) {
	case 0xFC:
		loop_id = FUNC0(NPH_SNS);
		break;
	case 0xFA:
		loop_id = vha->mgmt_svr_loop_id;
		break;
	default:
		FUNC4(ql_dbg_user, vha, 0x7013,
		    "Unknown loop id: %x.\n", loop_id);
		rval = -EINVAL;
		goto done_unmap_sg;
	}

	/* Allocate a dummy fcport structure, since functions preparing the
	 * IOCB and mailbox command retrieves port specific information
	 * from fcport structure. For Host based ELS commands there will be
	 * no fcport structure allocated
	 */
	fcport = FUNC7(vha, GFP_KERNEL);
	if (!fcport) {
		FUNC5(ql_log_warn, vha, 0x7014,
		    "Failed to allocate fcport.\n");
		rval = -ENOMEM;
		goto done_unmap_sg;
	}

	/* Initialize all required  fields of fcport */
	fcport->vha = vha;
	fcport->d_id.b.al_pa = bsg_job->request->rqst_data.h_ct.port_id[0];
	fcport->d_id.b.area = bsg_job->request->rqst_data.h_ct.port_id[1];
	fcport->d_id.b.domain = bsg_job->request->rqst_data.h_ct.port_id[2];
	fcport->loop_id = loop_id;

	/* Alloc SRB structure */
	sp = FUNC8(vha, fcport, GFP_KERNEL);
	if (!sp) {
		FUNC5(ql_log_warn, vha, 0x7015,
		    "qla2x00_get_sp failed.\n");
		rval = -ENOMEM;
		goto done_free_fcport;
	}

	sp->type = SRB_CT_CMD;
	sp->name = "bsg_ct";
	sp->iocbs = FUNC6(req_sg_cnt + rsp_sg_cnt);
	sp->u.bsg_job = bsg_job;
	sp->free = qla2x00_bsg_sp_free;
	sp->done = qla2x00_bsg_job_done;

	FUNC4(ql_dbg_user, vha, 0x7016,
	    "bsg rqst type: %s else type: %x - "
	    "loop-id=%x portid=%02x%02x%02x.\n", type,
	    (bsg_job->request->rqst_data.h_ct.preamble_word2 >> 16),
	    fcport->loop_id, fcport->d_id.b.domain, fcport->d_id.b.area,
	    fcport->d_id.b.al_pa);

	rval = FUNC10(sp);
	if (rval != QLA_SUCCESS) {
		FUNC5(ql_log_warn, vha, 0x7017,
		    "qla2x00_start_sp failed=%d.\n", rval);
		FUNC9(vha, sp);
		rval = -EIO;
		goto done_free_fcport;
	}
	return rval;

done_free_fcport:
	FUNC3(fcport);
done_unmap_sg:
	FUNC2(&ha->pdev->dev, bsg_job->request_payload.sg_list,
		bsg_job->request_payload.sg_cnt, DMA_TO_DEVICE);
	FUNC2(&ha->pdev->dev, bsg_job->reply_payload.sg_list,
		bsg_job->reply_payload.sg_cnt, DMA_FROM_DEVICE);
done:
	return rval;
}