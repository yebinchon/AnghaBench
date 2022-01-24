#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_12__ ;
typedef  struct TYPE_15__   TYPE_11__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  sg_list; int /*<<< orphan*/  payload_len; int /*<<< orphan*/  sg_cnt; } ;
struct TYPE_14__ {int /*<<< orphan*/  sg_list; int /*<<< orphan*/  payload_len; int /*<<< orphan*/  sg_cnt; } ;
struct fc_bsg_job {TYPE_11__ reply_payload; TYPE_10__ request_payload; TYPE_6__* request; } ;
struct els_entry_24xx {int entry_count; void* rx_len; void** rx_address; void* tx_len; void** tx_address; void* tx_byte_count; void* rx_byte_count; scalar_t__ control_flags; int /*<<< orphan*/ * port_id; int /*<<< orphan*/  opcode; void* rx_dsd_count; int /*<<< orphan*/  sof_type; int /*<<< orphan*/  vp_index; void* tx_dsd_count; int /*<<< orphan*/  nport_handle; int /*<<< orphan*/  handle; scalar_t__ entry_status; scalar_t__ sys_define; int /*<<< orphan*/  entry_type; } ;
struct TYPE_17__ {struct fc_bsg_job* bsg_job; } ;
struct TYPE_16__ {scalar_t__ type; TYPE_9__* fcport; int /*<<< orphan*/  handle; TYPE_1__ u; } ;
typedef  TYPE_12__ srb_t ;
struct TYPE_23__ {int /*<<< orphan*/  domain; int /*<<< orphan*/  area; int /*<<< orphan*/  al_pa; } ;
struct TYPE_24__ {TYPE_7__ b; } ;
struct TYPE_25__ {TYPE_8__ d_id; TYPE_2__* vha; int /*<<< orphan*/  loop_id; } ;
struct TYPE_20__ {int /*<<< orphan*/  command_code; } ;
struct TYPE_19__ {int /*<<< orphan*/  els_code; } ;
struct TYPE_21__ {TYPE_4__ h_els; TYPE_3__ r_els; } ;
struct TYPE_22__ {TYPE_5__ rqst_data; } ;
struct TYPE_18__ {int /*<<< orphan*/  vp_idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_IOCB_TYPE ; 
 int /*<<< orphan*/  EST_SOFI3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SRB_ELS_CMD_RPT ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(srb_t *sp, struct els_entry_24xx *els_iocb)
{
	struct fc_bsg_job *bsg_job = sp->u.bsg_job;

        els_iocb->entry_type = ELS_IOCB_TYPE;
        els_iocb->entry_count = 1;
        els_iocb->sys_define = 0;
        els_iocb->entry_status = 0;
        els_iocb->handle = sp->handle;
        els_iocb->nport_handle = FUNC3(sp->fcport->loop_id);
        els_iocb->tx_dsd_count = FUNC2(bsg_job->request_payload.sg_cnt);
	els_iocb->vp_index = sp->fcport->vha->vp_idx;
        els_iocb->sof_type = EST_SOFI3;
        els_iocb->rx_dsd_count = FUNC2(bsg_job->reply_payload.sg_cnt);

	els_iocb->opcode =
	    sp->type == SRB_ELS_CMD_RPT ?
	    bsg_job->request->rqst_data.r_els.els_code :
	    bsg_job->request->rqst_data.h_els.command_code;
        els_iocb->port_id[0] = sp->fcport->d_id.b.al_pa;
        els_iocb->port_id[1] = sp->fcport->d_id.b.area;
        els_iocb->port_id[2] = sp->fcport->d_id.b.domain;
        els_iocb->control_flags = 0;
        els_iocb->rx_byte_count =
            FUNC4(bsg_job->reply_payload.payload_len);
        els_iocb->tx_byte_count =
            FUNC4(bsg_job->request_payload.payload_len);

        els_iocb->tx_address[0] = FUNC4(FUNC0(FUNC5
            (bsg_job->request_payload.sg_list)));
        els_iocb->tx_address[1] = FUNC4(FUNC1(FUNC5
            (bsg_job->request_payload.sg_list)));
        els_iocb->tx_len = FUNC4(FUNC6
            (bsg_job->request_payload.sg_list));

        els_iocb->rx_address[0] = FUNC4(FUNC0(FUNC5
            (bsg_job->reply_payload.sg_list)));
        els_iocb->rx_address[1] = FUNC4(FUNC1(FUNC5
            (bsg_job->reply_payload.sg_list)));
        els_iocb->rx_len = FUNC4(FUNC6
            (bsg_job->reply_payload.sg_list));
}