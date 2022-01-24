#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_9__ ;
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_15__ ;
typedef  struct TYPE_20__   TYPE_14__ ;
typedef  struct TYPE_19__   TYPE_13__ ;
typedef  struct TYPE_18__   TYPE_12__ ;
typedef  struct TYPE_17__   TYPE_11__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
typedef  int uint32_t ;
struct ulp_bde64 {int dummy; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_rport_data {struct lpfc_nodelist* pnode; } ;
struct lpfc_nodelist {int nlp_flag; size_t nlp_rpi; } ;
struct TYPE_23__ {struct lpfc_nodelist* ndlp; } ;
struct TYPE_16__ {int Fctl; int /*<<< orphan*/  Type; int /*<<< orphan*/  Rctl; scalar_t__ Dfctl; } ;
struct TYPE_17__ {TYPE_10__ hcsw; } ;
struct TYPE_30__ {int bdeSize; int /*<<< orphan*/  bdeFlags; int /*<<< orphan*/  addrLow; int /*<<< orphan*/  addrHigh; scalar_t__ ulpIoTag32; } ;
struct TYPE_19__ {TYPE_11__ w5; TYPE_9__ bdl; } ;
struct TYPE_18__ {TYPE_13__ genreq64; } ;
struct TYPE_20__ {int ulpBdeCount; int ulpLe; size_t ulpContext; int ulpTimeout; int /*<<< orphan*/  ulpOwner; int /*<<< orphan*/  ulpClass; TYPE_12__ un; int /*<<< orphan*/  ulpCommand; } ;
struct lpfc_iocbq {TYPE_2__ context_un; struct lpfc_dmabuf* context3; struct lpfc_dmabuf* context2; struct lpfc_dmabuf* context1; int /*<<< orphan*/  iocb_cmpl; int /*<<< orphan*/  iocb_flag; int /*<<< orphan*/  vport; TYPE_14__ iocb; } ;
struct TYPE_22__ {size_t* rpi_ids; } ;
struct lpfc_hba {scalar_t__ sli_rev; int fc_ratov; int cfg_poll; int /*<<< orphan*/  HCregaddr; int /*<<< orphan*/  pport; TYPE_1__ sli4_hba; } ;
struct TYPE_24__ {struct lpfc_dmabuf* rmp; struct lpfc_nodelist* ndlp; struct lpfc_iocbq* cmdiocbq; } ;
struct TYPE_25__ {TYPE_3__ iocb; } ;
struct lpfc_dmabuf {int /*<<< orphan*/  phys; scalar_t__ virt; TYPE_4__ context_un; struct fc_bsg_job* set_job; int /*<<< orphan*/  type; int /*<<< orphan*/  list; } ;
struct TYPE_29__ {int /*<<< orphan*/  payload_len; } ;
struct TYPE_21__ {int /*<<< orphan*/  payload_len; } ;
struct fc_bsg_job {struct lpfc_dmabuf* dd_data; TYPE_7__* reply; TYPE_8__ reply_payload; TYPE_15__ request_payload; TYPE_6__* rport; TYPE_5__* shost; } ;
struct bsg_job_data {int /*<<< orphan*/  phys; scalar_t__ virt; TYPE_4__ context_un; struct fc_bsg_job* set_job; int /*<<< orphan*/  type; int /*<<< orphan*/  list; } ;
struct TYPE_28__ {int result; scalar_t__ reply_payload_rcv_len; } ;
struct TYPE_27__ {struct lpfc_rport_data* dd_data; } ;
struct TYPE_26__ {scalar_t__ hostdata; } ;
typedef  TYPE_14__ IOCB_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUFF_TYPE_BLP_64 ; 
 int /*<<< orphan*/  CLASS3 ; 
 int /*<<< orphan*/  CMD_GEN_REQUEST64_CR ; 
 int DISABLE_FCP_RING_INT ; 
 int EAGAIN ; 
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FC_RCTL_DD_UNSOL_CTL ; 
 int /*<<< orphan*/  FC_TYPE_CT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HC_R0INT_ENA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int IOCB_BUSY ; 
 int IOCB_SUCCESS ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int LA ; 
 int /*<<< orphan*/  LOG_LIBDFC ; 
 int LPFC_BPL_SIZE ; 
 int /*<<< orphan*/  LPFC_ELS_RING ; 
 int LPFC_FCP_RING ; 
 int /*<<< orphan*/  LPFC_IO_LIBDFC ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 int NLP_ELS_SND_MASK ; 
 int /*<<< orphan*/  OWN_CHIP ; 
 int SI ; 
 int /*<<< orphan*/  TYPE_IOCB ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_dmabuf*) ; 
 struct lpfc_dmabuf* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct lpfc_dmabuf* FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ,int,struct ulp_bde64*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_dmabuf*,TYPE_15__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  lpfc_bsg_send_mgmt_cmd_cmp ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*,struct lpfc_dmabuf*) ; 
 scalar_t__ FUNC6 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC9 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int*) ; 
 struct lpfc_iocbq* FUNC12 (struct lpfc_hba*) ; 
 int FUNC13 (struct lpfc_hba*,int /*<<< orphan*/ ,struct lpfc_iocbq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct lpfc_hba*,struct lpfc_iocbq*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC19(struct fc_bsg_job *job)
{
	struct lpfc_vport *vport = (struct lpfc_vport *)job->shost->hostdata;
	struct lpfc_hba *phba = vport->phba;
	struct lpfc_rport_data *rdata = job->rport->dd_data;
	struct lpfc_nodelist *ndlp = rdata->pnode;
	struct ulp_bde64 *bpl = NULL;
	uint32_t timeout;
	struct lpfc_iocbq *cmdiocbq = NULL;
	IOCB_t *cmd;
	struct lpfc_dmabuf *bmp = NULL, *cmp = NULL, *rmp = NULL;
	int request_nseg;
	int reply_nseg;
	struct bsg_job_data *dd_data;
	uint32_t creg_val;
	int rc = 0;
	int iocb_stat;

	/* in case no data is transferred */
	job->reply->reply_payload_rcv_len = 0;

	/* allocate our bsg tracking structure */
	dd_data = FUNC2(sizeof(struct bsg_job_data), GFP_KERNEL);
	if (!dd_data) {
		FUNC10(phba, KERN_WARNING, LOG_LIBDFC,
				"2733 Failed allocation of dd_data\n");
		rc = -ENOMEM;
		goto no_dd_data;
	}

	if (!FUNC8(ndlp)) {
		rc = -ENODEV;
		goto no_ndlp;
	}

	if (ndlp->nlp_flag & NLP_ELS_SND_MASK) {
		rc = -ENODEV;
		goto free_ndlp;
	}

	cmdiocbq = FUNC12(phba);
	if (!cmdiocbq) {
		rc = -ENOMEM;
		goto free_ndlp;
	}

	cmd = &cmdiocbq->iocb;

	bmp = FUNC2(sizeof(struct lpfc_dmabuf), GFP_KERNEL);
	if (!bmp) {
		rc = -ENOMEM;
		goto free_cmdiocbq;
	}
	bmp->virt = FUNC6(phba, 0, &bmp->phys);
	if (!bmp->virt) {
		rc = -ENOMEM;
		goto free_bmp;
	}

	FUNC0(&bmp->list);

	bpl = (struct ulp_bde64 *) bmp->virt;
	request_nseg = LPFC_BPL_SIZE/sizeof(struct ulp_bde64);
	cmp = FUNC3(phba, job->request_payload.payload_len,
				     1, bpl, &request_nseg);
	if (!cmp) {
		rc = -ENOMEM;
		goto free_bmp;
	}
	FUNC4(cmp, &job->request_payload,
			   job->request_payload.payload_len, 1);

	bpl += request_nseg;
	reply_nseg = LPFC_BPL_SIZE/sizeof(struct ulp_bde64) - request_nseg;
	rmp = FUNC3(phba, job->reply_payload.payload_len, 0,
				     bpl, &reply_nseg);
	if (!rmp) {
		rc = -ENOMEM;
		goto free_cmp;
	}

	cmd->un.genreq64.bdl.ulpIoTag32 = 0;
	cmd->un.genreq64.bdl.addrHigh = FUNC15(bmp->phys);
	cmd->un.genreq64.bdl.addrLow = FUNC16(bmp->phys);
	cmd->un.genreq64.bdl.bdeFlags = BUFF_TYPE_BLP_64;
	cmd->un.genreq64.bdl.bdeSize =
		(request_nseg + reply_nseg) * sizeof(struct ulp_bde64);
	cmd->ulpCommand = CMD_GEN_REQUEST64_CR;
	cmd->un.genreq64.w5.hcsw.Fctl = (SI | LA);
	cmd->un.genreq64.w5.hcsw.Dfctl = 0;
	cmd->un.genreq64.w5.hcsw.Rctl = FC_RCTL_DD_UNSOL_CTL;
	cmd->un.genreq64.w5.hcsw.Type = FC_TYPE_CT;
	cmd->ulpBdeCount = 1;
	cmd->ulpLe = 1;
	cmd->ulpClass = CLASS3;
	cmd->ulpContext = ndlp->nlp_rpi;
	if (phba->sli_rev == LPFC_SLI_REV4)
		cmd->ulpContext = phba->sli4_hba.rpi_ids[ndlp->nlp_rpi];
	cmd->ulpOwner = OWN_CHIP;
	cmdiocbq->vport = phba->pport;
	cmdiocbq->context3 = bmp;
	cmdiocbq->iocb_flag |= LPFC_IO_LIBDFC;
	timeout = phba->fc_ratov * 2;
	cmd->ulpTimeout = timeout;

	cmdiocbq->iocb_cmpl = lpfc_bsg_send_mgmt_cmd_cmp;
	cmdiocbq->context1 = dd_data;
	cmdiocbq->context2 = cmp;
	cmdiocbq->context3 = bmp;
	cmdiocbq->context_un.ndlp = ndlp;
	dd_data->type = TYPE_IOCB;
	dd_data->set_job = job;
	dd_data->context_un.iocb.cmdiocbq = cmdiocbq;
	dd_data->context_un.iocb.ndlp = ndlp;
	dd_data->context_un.iocb.rmp = rmp;
	job->dd_data = dd_data;

	if (phba->cfg_poll & DISABLE_FCP_RING_INT) {
		if (FUNC11(phba->HCregaddr, &creg_val)) {
			rc = -EIO ;
			goto free_rmp;
		}
		creg_val |= (HC_R0INT_ENA << LPFC_FCP_RING);
		FUNC18(creg_val, phba->HCregaddr);
		FUNC17(phba->HCregaddr); /* flush */
	}

	iocb_stat = FUNC13(phba, LPFC_ELS_RING, cmdiocbq, 0);
	if (iocb_stat == IOCB_SUCCESS)
		return 0; /* done for now */
	else if (iocb_stat == IOCB_BUSY)
		rc = -EAGAIN;
	else
		rc = -EIO;

	/* iocb failed so cleanup */

free_rmp:
	FUNC5(phba, rmp);
free_cmp:
	FUNC5(phba, cmp);
free_bmp:
	if (bmp->virt)
		FUNC7(phba, bmp->virt, bmp->phys);
	FUNC1(bmp);
free_cmdiocbq:
	FUNC14(phba, cmdiocbq);
free_ndlp:
	FUNC9(ndlp);
no_ndlp:
	FUNC1(dd_data);
no_dd_data:
	/* make error code available to userspace */
	job->reply->result = rc;
	job->dd_data = NULL;
	return rc;
}