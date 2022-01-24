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
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct lpfc_sli_config_mbox {int dummy; } ;
struct TYPE_19__ {scalar_t__ seqNum; int nembType; scalar_t__ numBuf; int /*<<< orphan*/  state; TYPE_13__* mbx_dmabuf; int /*<<< orphan*/  ext_dmabuf_list; } ;
struct lpfc_hba {TYPE_5__ mbox_ext_buf_ctx; int /*<<< orphan*/  pport; int /*<<< orphan*/  mbox_mem_pool; } ;
struct lpfc_dmabuf {int /*<<< orphan*/  list; scalar_t__ virt; } ;
struct TYPE_15__ {scalar_t__ payload_len; int /*<<< orphan*/  sg_cnt; int /*<<< orphan*/  sg_list; } ;
struct fc_bsg_job {int /*<<< orphan*/  (* job_done ) (struct fc_bsg_job*) ;TYPE_6__* reply; struct bsg_job_data* dd_data; TYPE_1__ request_payload; } ;
struct TYPE_17__ {TYPE_7__* mb; TYPE_8__* pmboxq; } ;
struct TYPE_18__ {TYPE_3__ mbox; } ;
struct bsg_job_data {TYPE_4__ context_un; struct fc_bsg_job* set_job; int /*<<< orphan*/  type; } ;
typedef  enum nemb_type { ____Placeholder_nemb_type } nemb_type ;
struct TYPE_21__ {int /*<<< orphan*/  mbxOwner; } ;
struct TYPE_16__ {TYPE_7__ mb; } ;
struct TYPE_22__ {struct bsg_job_data* context1; int /*<<< orphan*/  mbox_cmpl; int /*<<< orphan*/  vport; TYPE_2__ u; } ;
struct TYPE_20__ {scalar_t__ result; } ;
struct TYPE_14__ {scalar_t__ virt; } ;
typedef  TYPE_7__ MAILBOX_t ;
typedef  TYPE_8__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int ENOMEM ; 
 int EPIPE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_LIBDFC ; 
 int /*<<< orphan*/  LPFC_BSG_MBOX_PORT ; 
 int MBX_BUSY ; 
 int /*<<< orphan*/  MBX_NOWAIT ; 
 int MBX_SUCCESS ; 
 int /*<<< orphan*/  OWN_HOST ; 
 int SLI_CONFIG_HANDLED ; 
 int /*<<< orphan*/  TYPE_MBOX ; 
 int /*<<< orphan*/  dma_ebuf ; 
 int /*<<< orphan*/  FUNC0 (struct bsg_job_data*) ; 
 struct bsg_job_data* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,struct lpfc_dmabuf*) ; 
 int /*<<< orphan*/  lpfc_bsg_issue_write_mbox_ext_cmpl ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,int,scalar_t__,TYPE_13__*,struct lpfc_dmabuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct lpfc_dmabuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC7 (struct lpfc_hba*,TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mbox_wr ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,int /*<<< orphan*/ *,int) ; 
 TYPE_8__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_8__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ nemb_mse ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  sta_pos_addr ; 
 int /*<<< orphan*/  FUNC12 (struct fc_bsg_job*) ; 

__attribute__((used)) static int
FUNC13(struct lpfc_hba *phba, struct fc_bsg_job *job,
			struct lpfc_dmabuf *dmabuf)
{
	struct lpfc_sli_config_mbox *sli_cfg_mbx;
	struct bsg_job_data *dd_data = NULL;
	LPFC_MBOXQ_t *pmboxq = NULL;
	MAILBOX_t *pmb;
	enum nemb_type nemb_tp;
	uint8_t *pbuf;
	uint32_t size;
	uint32_t index;
	int rc;

	index = phba->mbox_ext_buf_ctx.seqNum;
	phba->mbox_ext_buf_ctx.seqNum++;
	nemb_tp = phba->mbox_ext_buf_ctx.nembType;

	sli_cfg_mbx = (struct lpfc_sli_config_mbox *)
			phba->mbox_ext_buf_ctx.mbx_dmabuf->virt;

	dd_data = FUNC1(sizeof(struct bsg_job_data), GFP_KERNEL);
	if (!dd_data) {
		rc = -ENOMEM;
		goto job_error;
	}

	pbuf = (uint8_t *)dmabuf->virt;
	size = job->request_payload.payload_len;
	FUNC11(job->request_payload.sg_list,
			  job->request_payload.sg_cnt,
			  pbuf, size);

	if (phba->mbox_ext_buf_ctx.nembType == nemb_mse) {
		FUNC6(phba, KERN_INFO, LOG_LIBDFC,
				"2966 SLI_CONFIG (mse) ext-buffer wr set "
				"buffer[%d], size:%d\n",
				phba->mbox_ext_buf_ctx.seqNum, size);

	} else {
		FUNC6(phba, KERN_INFO, LOG_LIBDFC,
				"2967 SLI_CONFIG (hbd) ext-buffer wr set "
				"buffer[%d], size:%d\n",
				phba->mbox_ext_buf_ctx.seqNum, size);

	}

	/* set up external buffer descriptor and add to external buffer list */
	FUNC4(phba, nemb_tp, index,
					phba->mbox_ext_buf_ctx.mbx_dmabuf,
					dmabuf);
	FUNC2(&dmabuf->list, &phba->mbox_ext_buf_ctx.ext_dmabuf_list);

	/* after write dma buffer */
	FUNC5(phba, phba->mbox_ext_buf_ctx.nembType,
					mbox_wr, dma_ebuf, sta_pos_addr,
					dmabuf, index);

	if (phba->mbox_ext_buf_ctx.seqNum == phba->mbox_ext_buf_ctx.numBuf) {
		FUNC6(phba, KERN_INFO, LOG_LIBDFC,
				"2968 SLI_CONFIG ext-buffer wr all %d "
				"ebuffers received\n",
				phba->mbox_ext_buf_ctx.numBuf);
		/* mailbox command structure for base driver */
		pmboxq = FUNC9(phba->mbox_mem_pool, GFP_KERNEL);
		if (!pmboxq) {
			rc = -ENOMEM;
			goto job_error;
		}
		FUNC10(pmboxq, 0, sizeof(LPFC_MBOXQ_t));
		pbuf = (uint8_t *)phba->mbox_ext_buf_ctx.mbx_dmabuf->virt;
		pmb = &pmboxq->u.mb;
		FUNC8(pmb, pbuf, sizeof(*pmb));
		pmb->mbxOwner = OWN_HOST;
		pmboxq->vport = phba->pport;

		/* callback for multi-buffer write mailbox command */
		pmboxq->mbox_cmpl = lpfc_bsg_issue_write_mbox_ext_cmpl;

		/* context fields to callback function */
		pmboxq->context1 = dd_data;
		dd_data->type = TYPE_MBOX;
		dd_data->set_job = job;
		dd_data->context_un.mbox.pmboxq = pmboxq;
		dd_data->context_un.mbox.mb = (MAILBOX_t *)pbuf;
		job->dd_data = dd_data;

		/* state change */
		phba->mbox_ext_buf_ctx.state = LPFC_BSG_MBOX_PORT;

		rc = FUNC7(phba, pmboxq, MBX_NOWAIT);
		if ((rc == MBX_SUCCESS) || (rc == MBX_BUSY)) {
			FUNC6(phba, KERN_INFO, LOG_LIBDFC,
					"2969 Issued SLI_CONFIG ext-buffer "
					"maibox command, rc:x%x\n", rc);
			return SLI_CONFIG_HANDLED;
		}
		FUNC6(phba, KERN_ERR, LOG_LIBDFC,
				"2970 Failed to issue SLI_CONFIG ext-buffer "
				"maibox command, rc:x%x\n", rc);
		rc = -EPIPE;
		goto job_error;
	}

	/* wait for additoinal external buffers */
	job->reply->result = 0;
	job->job_done(job);
	return SLI_CONFIG_HANDLED;

job_error:
	FUNC3(phba, dmabuf);
	FUNC0(dd_data);

	return rc;
}