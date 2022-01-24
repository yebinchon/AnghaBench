#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct qla_hw_data {int /*<<< orphan*/  ms_iocb_dma; int /*<<< orphan*/  ms_iocb; TYPE_3__* ct_sns; TYPE_1__* isp_ops; } ;
struct ct_sns_rsp {int dummy; } ;
struct TYPE_20__ {int /*<<< orphan*/  node_name; int /*<<< orphan*/ * port_id; } ;
struct TYPE_21__ {TYPE_6__ rnn_id; } ;
struct ct_sns_req {TYPE_7__ req; } ;
struct TYPE_18__ {int /*<<< orphan*/  al_pa; int /*<<< orphan*/  area; int /*<<< orphan*/  domain; } ;
struct TYPE_19__ {TYPE_4__ b; } ;
struct TYPE_22__ {int /*<<< orphan*/  node_name; TYPE_5__ d_id; struct qla_hw_data* hw; } ;
typedef  TYPE_8__ scsi_qla_host_t ;
typedef  int /*<<< orphan*/  ms_iocb_entry_t ;
struct TYPE_16__ {struct ct_sns_rsp rsp; int /*<<< orphan*/  req; } ;
struct TYPE_17__ {TYPE_2__ p; } ;
struct TYPE_15__ {int /*<<< orphan*/ * (* prep_ms_iocb ) (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  RNN_ID_CMD ; 
 int /*<<< orphan*/  RNN_ID_REQ_SIZE ; 
 int /*<<< orphan*/  RNN_ID_RSP_SIZE ; 
 int /*<<< orphan*/  WWN_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_8__*,int,char*,...) ; 
 int /*<<< orphan*/  ql_dbg_disc ; 
 int FUNC4 (TYPE_8__*,int /*<<< orphan*/ *,struct ct_sns_rsp*,char*) ; 
 int FUNC5 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ct_sns_req* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_8__*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC9(scsi_qla_host_t *vha)
{
	int		rval;
	struct qla_hw_data *ha = vha->hw;
	ms_iocb_entry_t	*ms_pkt;
	struct ct_sns_req	*ct_req;
	struct ct_sns_rsp	*ct_rsp;

	if (FUNC0(ha) || FUNC1(ha))
		return FUNC7(vha);

	/* Issue RNN_ID */
	/* Prepare common MS IOCB */
	ms_pkt = ha->isp_ops->prep_ms_iocb(vha, RNN_ID_REQ_SIZE,
	    RNN_ID_RSP_SIZE);

	/* Prepare CT request */
	ct_req = FUNC6(&ha->ct_sns->p.req, RNN_ID_CMD,
	    RNN_ID_RSP_SIZE);
	ct_rsp = &ha->ct_sns->p.rsp;

	/* Prepare CT arguments -- port_id, node_name */
	ct_req->req.rnn_id.port_id[0] = vha->d_id.b.domain;
	ct_req->req.rnn_id.port_id[1] = vha->d_id.b.area;
	ct_req->req.rnn_id.port_id[2] = vha->d_id.b.al_pa;

	FUNC2(ct_req->req.rnn_id.node_name, vha->node_name, WWN_SIZE);

	/* Execute MS IOCB */
	rval = FUNC5(vha, ha->ms_iocb, ha->ms_iocb_dma,
	    sizeof(ms_iocb_entry_t));
	if (rval != QLA_SUCCESS) {
		/*EMPTY*/
		FUNC3(ql_dbg_disc, vha, 0x204d,
		    "RNN_ID issue IOCB failed (%d).\n", rval);
	} else if (FUNC4(vha, ms_pkt, ct_rsp, "RNN_ID") !=
	    QLA_SUCCESS) {
		rval = QLA_FUNCTION_FAILED;
	} else {
		FUNC3(ql_dbg_disc, vha, 0x204e,
		    "RNN_ID exiting normally.\n");
	}

	return (rval);
}