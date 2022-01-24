#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_9__ ;
typedef  struct TYPE_33__   TYPE_8__ ;
typedef  struct TYPE_32__   TYPE_7__ ;
typedef  struct TYPE_31__   TYPE_6__ ;
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_15__ ;
typedef  struct TYPE_24__   TYPE_14__ ;
typedef  struct TYPE_23__   TYPE_13__ ;
typedef  struct TYPE_22__   TYPE_12__ ;
typedef  struct TYPE_21__   TYPE_11__ ;
typedef  struct TYPE_20__   TYPE_10__ ;

/* Type definitions */
union lpfc_sli4_cfg_shdr {int /*<<< orphan*/  response; } ;
typedef  void* uint32_t ;
struct sli4_link_diag {int timeout; int /*<<< orphan*/  error_action; int /*<<< orphan*/  test_version; int /*<<< orphan*/  loops; int /*<<< orphan*/  test_id; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_sli4_cfg_mhdr {int dummy; } ;
struct lpfc_mbx_set_link_diag_state {int dummy; } ;
struct TYPE_31__ {int /*<<< orphan*/  req; } ;
struct lpfc_mbx_run_link_diag_test {TYPE_6__ u; } ;
struct TYPE_29__ {int /*<<< orphan*/  lnk_tp; int /*<<< orphan*/  lnk_no; } ;
struct TYPE_30__ {TYPE_4__ lnk_info; int /*<<< orphan*/  sli_intf; } ;
struct lpfc_hba {scalar_t__ sli_rev; int /*<<< orphan*/  mbox_mem_pool; TYPE_5__ sli4_hba; } ;
struct fc_bsg_request {int dummy; } ;
struct fc_bsg_job {int request_len; int reply_len; int /*<<< orphan*/  (* job_done ) (struct fc_bsg_job*) ;TYPE_14__* reply; TYPE_3__* request; struct Scsi_Host* shost; } ;
struct diag_status {int mbox_status; void* shdr_add_status; void* shdr_status; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_32__ {int /*<<< orphan*/  cfg_shdr; } ;
struct TYPE_33__ {TYPE_7__ header; } ;
struct TYPE_34__ {TYPE_8__ sli4_config; struct lpfc_mbx_run_link_diag_test link_diag_test; } ;
struct TYPE_26__ {scalar_t__ vendor_cmd; } ;
struct TYPE_27__ {TYPE_1__ h_vendor; } ;
struct TYPE_28__ {TYPE_2__ rqst_data; } ;
struct TYPE_20__ {TYPE_9__ un; } ;
struct TYPE_21__ {TYPE_10__ mqe; } ;
struct TYPE_25__ {TYPE_11__ u; } ;
struct TYPE_22__ {scalar_t__ vendor_rsp; } ;
struct TYPE_23__ {TYPE_12__ vendor_reply; } ;
struct TYPE_24__ {int result; TYPE_13__ reply_data; } ;
typedef  TYPE_15__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_LIBDFC ; 
 int /*<<< orphan*/  LPFC_MBOX_OPCODE_FCOE_LINK_DIAG_STATE ; 
 int /*<<< orphan*/  LPFC_MBOX_SUBSYSTEM_FCOE ; 
 int /*<<< orphan*/  LPFC_SLI4_MBX_EMBED ; 
 scalar_t__ LPFC_SLI_INTF_IF_TYPE_2 ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 int /*<<< orphan*/  MBX_POLL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  lpfc_mbox_hdr_add_status ; 
 int /*<<< orphan*/  lpfc_mbox_hdr_status ; 
 int /*<<< orphan*/  lpfc_mbx_run_diag_test_err_act ; 
 int /*<<< orphan*/  lpfc_mbx_run_diag_test_link_num ; 
 int /*<<< orphan*/  lpfc_mbx_run_diag_test_link_type ; 
 int /*<<< orphan*/  lpfc_mbx_run_diag_test_loops ; 
 int /*<<< orphan*/  lpfc_mbx_run_diag_test_test_id ; 
 int /*<<< orphan*/  lpfc_mbx_run_diag_test_test_ver ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,...) ; 
 int FUNC5 (struct lpfc_hba*,int) ; 
 void* FUNC6 (struct lpfc_hba*,TYPE_15__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_sli_intf_if_type ; 
 int FUNC7 (struct lpfc_hba*,TYPE_15__*,int /*<<< orphan*/ ) ; 
 TYPE_15__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_15__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct fc_bsg_job*) ; 

__attribute__((used)) static int
FUNC11(struct fc_bsg_job *job)
{
	struct Scsi_Host *shost;
	struct lpfc_vport *vport;
	struct lpfc_hba *phba;
	LPFC_MBOXQ_t *pmboxq;
	struct sli4_link_diag *link_diag_test_cmd;
	uint32_t req_len, alloc_len;
	uint32_t timeout;
	struct lpfc_mbx_run_link_diag_test *run_link_diag_test;
	union lpfc_sli4_cfg_shdr *shdr;
	uint32_t shdr_status, shdr_add_status;
	struct diag_status *diag_status_reply;
	int mbxstatus, rc = 0;

	shost = job->shost;
	if (!shost) {
		rc = -ENODEV;
		goto job_error;
	}
	vport = (struct lpfc_vport *)job->shost->hostdata;
	if (!vport) {
		rc = -ENODEV;
		goto job_error;
	}
	phba = vport->phba;
	if (!phba) {
		rc = -ENODEV;
		goto job_error;
	}

	if (phba->sli_rev < LPFC_SLI_REV4) {
		rc = -ENODEV;
		goto job_error;
	}
	if (FUNC0(lpfc_sli_intf_if_type, &phba->sli4_hba.sli_intf) !=
	    LPFC_SLI_INTF_IF_TYPE_2) {
		rc = -ENODEV;
		goto job_error;
	}

	if (job->request_len < sizeof(struct fc_bsg_request) +
	    sizeof(struct sli4_link_diag)) {
		FUNC4(phba, KERN_WARNING, LOG_LIBDFC,
				"3013 Received LINK DIAG TEST request "
				" size:%d below the minimum size:%d\n",
				job->request_len,
				(int)(sizeof(struct fc_bsg_request) +
				sizeof(struct sli4_link_diag)));
		rc = -EINVAL;
		goto job_error;
	}

	rc = FUNC2(phba);
	if (rc)
		goto job_error;

	link_diag_test_cmd = (struct sli4_link_diag *)
			 job->request->rqst_data.h_vendor.vendor_cmd;
	timeout = link_diag_test_cmd->timeout * 100;

	rc = FUNC5(phba, 1);

	if (rc)
		goto job_error;

	pmboxq = FUNC8(phba->mbox_mem_pool, GFP_KERNEL);
	if (!pmboxq) {
		rc = -ENOMEM;
		goto link_diag_test_exit;
	}

	req_len = (sizeof(struct lpfc_mbx_set_link_diag_state) -
		   sizeof(struct lpfc_sli4_cfg_mhdr));
	alloc_len = FUNC6(phba, pmboxq, LPFC_MBOX_SUBSYSTEM_FCOE,
				     LPFC_MBOX_OPCODE_FCOE_LINK_DIAG_STATE,
				     req_len, LPFC_SLI4_MBX_EMBED);
	if (alloc_len != req_len) {
		rc = -ENOMEM;
		goto link_diag_test_exit;
	}
	run_link_diag_test = &pmboxq->u.mqe.un.link_diag_test;
	FUNC1(lpfc_mbx_run_diag_test_link_num, &run_link_diag_test->u.req,
	       phba->sli4_hba.lnk_info.lnk_no);
	FUNC1(lpfc_mbx_run_diag_test_link_type, &run_link_diag_test->u.req,
	       phba->sli4_hba.lnk_info.lnk_tp);
	FUNC1(lpfc_mbx_run_diag_test_test_id, &run_link_diag_test->u.req,
	       link_diag_test_cmd->test_id);
	FUNC1(lpfc_mbx_run_diag_test_loops, &run_link_diag_test->u.req,
	       link_diag_test_cmd->loops);
	FUNC1(lpfc_mbx_run_diag_test_test_ver, &run_link_diag_test->u.req,
	       link_diag_test_cmd->test_version);
	FUNC1(lpfc_mbx_run_diag_test_err_act, &run_link_diag_test->u.req,
	       link_diag_test_cmd->error_action);

	mbxstatus = FUNC7(phba, pmboxq, MBX_POLL);

	shdr = (union lpfc_sli4_cfg_shdr *)
		&pmboxq->u.mqe.un.sli4_config.header.cfg_shdr;
	shdr_status = FUNC0(lpfc_mbox_hdr_status, &shdr->response);
	shdr_add_status = FUNC0(lpfc_mbox_hdr_add_status, &shdr->response);
	if (shdr_status || shdr_add_status || mbxstatus) {
		FUNC4(phba, KERN_ERR, LOG_LIBDFC,
				"3010 Run link diag test mailbox failed with "
				"mbx_status x%x status x%x, add_status x%x\n",
				mbxstatus, shdr_status, shdr_add_status);
	}

	diag_status_reply = (struct diag_status *)
			    job->reply->reply_data.vendor_reply.vendor_rsp;

	if (job->reply_len <
	    sizeof(struct fc_bsg_request) + sizeof(struct diag_status)) {
		FUNC4(phba, KERN_WARNING, LOG_LIBDFC,
				"3012 Received Run link diag test reply "
				"below minimum size (%d): reply_len:%d\n",
				(int)(sizeof(struct fc_bsg_request) +
				sizeof(struct diag_status)),
				job->reply_len);
		rc = -EINVAL;
		goto job_error;
	}

	diag_status_reply->mbox_status = mbxstatus;
	diag_status_reply->shdr_status = shdr_status;
	diag_status_reply->shdr_add_status = shdr_add_status;

link_diag_test_exit:
	rc = FUNC5(phba, 0);

	if (pmboxq)
		FUNC9(pmboxq, phba->mbox_mem_pool);

	FUNC3(phba);

job_error:
	/* make error code available to userspace */
	job->reply->result = rc;
	/* complete the job back to userspace if no error */
	if (rc == 0)
		job->job_done(job);
	return rc;
}