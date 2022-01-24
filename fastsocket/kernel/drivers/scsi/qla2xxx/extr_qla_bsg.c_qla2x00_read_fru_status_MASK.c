#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_11__ {int /*<<< orphan*/  option; int /*<<< orphan*/  offset; int /*<<< orphan*/  device; } ;
struct qla_status_reg {int /*<<< orphan*/  status_reg; TYPE_2__ field_address; } ;
struct qla_hw_data {int /*<<< orphan*/  s_dma_pool; } ;
struct fc_bsg_reply {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  sg_cnt; int /*<<< orphan*/  sg_list; } ;
struct TYPE_10__ {int /*<<< orphan*/  sg_cnt; int /*<<< orphan*/  sg_list; } ;
struct fc_bsg_job {int reply_len; int /*<<< orphan*/  (* job_done ) (struct fc_bsg_job*) ;TYPE_6__* reply; TYPE_3__ reply_payload; TYPE_1__ request_payload; struct Scsi_Host* shost; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_16__ {struct qla_hw_data* hw; } ;
typedef  TYPE_7__ scsi_qla_host_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_13__ {scalar_t__* vendor_rsp; } ;
struct TYPE_14__ {TYPE_4__ vendor_reply; } ;
struct TYPE_15__ {int reply_payload_rcv_len; int result; TYPE_5__ reply_data; } ;

/* Variables and functions */
 int DID_OK ; 
 int DMA_POOL_SIZE ; 
 scalar_t__ EXT_STATUS_MAILBOX ; 
 scalar_t__ EXT_STATUS_NO_MEMORY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qla_status_reg*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qla_status_reg*,int) ; 
 TYPE_7__* FUNC5 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_bsg_job*) ; 

__attribute__((used)) static int
FUNC7(struct fc_bsg_job *bsg_job)
{
	struct Scsi_Host *host = bsg_job->shost;
	scsi_qla_host_t *vha = FUNC5(host);
	struct qla_hw_data *ha = vha->hw;
	int rval = 0;
	uint8_t bsg[DMA_POOL_SIZE];
	struct qla_status_reg *sr = (void *)bsg;
	dma_addr_t sfp_dma;
	uint8_t *sfp = FUNC0(ha->s_dma_pool, GFP_KERNEL, &sfp_dma);
	if (!sfp) {
		bsg_job->reply->reply_data.vendor_reply.vendor_rsp[0] =
		    EXT_STATUS_NO_MEMORY;
		goto done;
	}

	FUNC4(bsg_job->request_payload.sg_list,
	    bsg_job->request_payload.sg_cnt, sr, sizeof(*sr));

	rval = FUNC2(vha, sfp_dma, sfp,
	    sr->field_address.device, sr->field_address.offset,
	    sizeof(sr->status_reg), sr->field_address.option);
	sr->status_reg = *sfp;

	if (rval) {
		bsg_job->reply->reply_data.vendor_reply.vendor_rsp[0] =
		    EXT_STATUS_MAILBOX;
		goto dealloc;
	}

	FUNC3(bsg_job->reply_payload.sg_list,
	    bsg_job->reply_payload.sg_cnt, sr, sizeof(*sr));

	bsg_job->reply->reply_data.vendor_reply.vendor_rsp[0] = 0;

dealloc:
	FUNC1(ha->s_dma_pool, sfp, sfp_dma);

done:
	bsg_job->reply_len = sizeof(struct fc_bsg_reply);
	bsg_job->reply->reply_payload_rcv_len = sizeof(*sr);
	bsg_job->reply->result = DID_OK << 16;
	bsg_job->job_done(bsg_job);

	return 0;
}