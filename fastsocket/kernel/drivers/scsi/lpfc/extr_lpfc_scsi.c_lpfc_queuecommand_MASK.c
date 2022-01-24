#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {int result; int* cmnd; unsigned char* host_scribble; void (* scsi_done ) (struct scsi_cmnd*) ;int /*<<< orphan*/  request; TYPE_2__* device; } ;
struct lpfc_vport {struct lpfc_hba* phba; scalar_t__ cfg_max_scsicmpl_time; } ;
struct lpfc_scsi_buf {int /*<<< orphan*/  cur_iocbq; int /*<<< orphan*/  start_time; scalar_t__ timeout; struct lpfc_rport_data* rdata; struct scsi_cmnd* pCmd; } ;
struct lpfc_rport_data {struct lpfc_nodelist* pnode; } ;
struct lpfc_nodelist {scalar_t__ cmd_qdepth; int /*<<< orphan*/  cmd_pending; } ;
struct TYPE_3__ {int /*<<< orphan*/ * ring; } ;
struct lpfc_hba {int sli3_options; int cfg_poll; TYPE_1__ sli; scalar_t__ cfg_enable_bg; } ;
struct fc_rport {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; scalar_t__ hostdata; } ;
struct TYPE_4__ {struct lpfc_rport_data* hostdata; struct Scsi_Host* host; } ;

/* Variables and functions */
 int DISABLE_FCP_RING_INT ; 
 int ENABLE_FCP_RING_POLLING ; 
 int /*<<< orphan*/  HA_R0RE_REQ ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_BG ; 
 int /*<<< orphan*/  LOG_FCP ; 
 int /*<<< orphan*/  LOG_SCSI_CMD ; 
 size_t LPFC_FCP_RING ; 
 int LPFC_SLI3_BG_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_nodelist*) ; 
 int SCSI_MLQUEUE_HOST_BUSY ; 
 int SCSI_MLQUEUE_TARGET_BUSY ; 
 size_t SCSI_PROT_NORMAL ; 
 int /*<<< orphan*/  SLI_IOCB_RET_IOCB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * dif_op_str ; 
 int FUNC5 (struct fc_rport*) ; 
 int /*<<< orphan*/  jiffies ; 
 int FUNC6 (struct lpfc_hba*,struct lpfc_scsi_buf*) ; 
 struct lpfc_scsi_buf* FUNC7 (struct lpfc_hba*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC9 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC12 (struct lpfc_hba*,struct lpfc_scsi_buf*) ; 
 int /*<<< orphan*/  FUNC13 (struct lpfc_vport*,struct lpfc_scsi_buf*,struct lpfc_nodelist*) ; 
 int FUNC14 (struct lpfc_hba*,struct lpfc_scsi_buf*) ; 
 int /*<<< orphan*/  FUNC15 (struct lpfc_hba*,struct lpfc_scsi_buf*) ; 
 int /*<<< orphan*/  FUNC16 (struct lpfc_hba*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct lpfc_hba*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct scsi_cmnd*) ; 
 size_t FUNC19 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 struct fc_rport* FUNC23 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC24(struct scsi_cmnd *cmnd, void (*done) (struct scsi_cmnd *))
{
	struct Scsi_Host  *shost = cmnd->device->host;
	struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
	struct lpfc_hba   *phba = vport->phba;
	struct lpfc_rport_data *rdata = cmnd->device->hostdata;
	struct lpfc_nodelist *ndlp;
	struct lpfc_scsi_buf *lpfc_cmd;
	struct fc_rport *rport = FUNC23(FUNC20(cmnd->device));
	int err;

	err = FUNC5(rport);
	if (err) {
		cmnd->result = err;
		goto out_fail_command;
	}
	ndlp = rdata->pnode;

	if ((FUNC19(cmnd) != SCSI_PROT_NORMAL) &&
		(!(phba->sli3_options & LPFC_SLI3_BG_ENABLED))) {

		FUNC9(phba, KERN_ERR, LOG_BG,
				"9058 BLKGRD: ERROR: rcvd protected cmd:%02x"
				" op:%02x str=%s without registering for"
				" BlockGuard - Rejecting command\n",
				cmnd->cmnd[0], FUNC19(cmnd),
				dif_op_str[FUNC19(cmnd)]);
		goto out_fail_command;
	}

	/*
	 * Catch race where our node has transitioned, but the
	 * transport is still transitioning.
	 */
	if (!ndlp || !FUNC0(ndlp))
		goto out_tgt_busy;
	if (vport->cfg_max_scsicmpl_time &&
		(FUNC3(&ndlp->cmd_pending) >= ndlp->cmd_qdepth))
		goto out_tgt_busy;

	lpfc_cmd = FUNC7(phba, ndlp);
	if (lpfc_cmd == NULL) {
		FUNC11(phba);

		FUNC10(vport, KERN_INFO, LOG_FCP,
				 "0707 driver's buffer pool is empty, "
				 "IO busied\n");
		goto out_host_busy;
	}

	/*
	 * Store the midlayer's command structure for the completion phase
	 * and complete the command initialization.
	 */
	lpfc_cmd->pCmd  = cmnd;
	lpfc_cmd->rdata = rdata;
	lpfc_cmd->timeout = 0;
	lpfc_cmd->start_time = jiffies;
	cmnd->host_scribble = (unsigned char *)lpfc_cmd;
	cmnd->scsi_done = done;

	if (FUNC19(cmnd) != SCSI_PROT_NORMAL) {
		if (vport->phba->cfg_enable_bg) {
			FUNC10(vport,
					 KERN_INFO, LOG_SCSI_CMD,
					 "9033 BLKGRD: rcvd %s cmd:x%x "
					 "sector x%llx cnt %u pt %x\n",
					 dif_op_str[FUNC19(cmnd)],
					 cmnd->cmnd[0],
					 (unsigned long long)FUNC18(cmnd),
					 FUNC4(cmnd->request),
					 (cmnd->cmnd[1]>>5));
		}
		err = FUNC6(phba, lpfc_cmd);
	} else {
		if (vport->phba->cfg_enable_bg) {
			FUNC10(vport,
					 KERN_INFO, LOG_SCSI_CMD,
					 "9038 BLKGRD: rcvd PROT_NORMAL cmd: "
					 "x%x sector x%llx cnt %u pt %x\n",
					 cmnd->cmnd[0],
					 (unsigned long long)FUNC18(cmnd),
					 FUNC4(cmnd->request),
					 (cmnd->cmnd[1]>>5));
		}
		err = FUNC14(phba, lpfc_cmd);
	}

	if (err)
		goto out_host_busy_free_buf;

	FUNC13(vport, lpfc_cmd, ndlp);

	FUNC2(&ndlp->cmd_pending);
	err = FUNC17(phba, LPFC_FCP_RING,
				  &lpfc_cmd->cur_iocbq, SLI_IOCB_RET_IOCB);
	if (err) {
		FUNC1(&ndlp->cmd_pending);
		goto out_host_busy_free_buf;
	}
	if (phba->cfg_poll & ENABLE_FCP_RING_POLLING) {
		FUNC22(shost->host_lock);
		FUNC16(phba,
			&phba->sli.ring[LPFC_FCP_RING], HA_R0RE_REQ);

		FUNC21(shost->host_lock);
		if (phba->cfg_poll & DISABLE_FCP_RING_INT)
			FUNC8(phba);
	}

	return 0;

 out_host_busy_free_buf:
	FUNC15(phba, lpfc_cmd);
	FUNC12(phba, lpfc_cmd);
 out_host_busy:
	return SCSI_MLQUEUE_HOST_BUSY;

 out_tgt_busy:
	return SCSI_MLQUEUE_TARGET_BUSY;

 out_fail_command:
	done(cmnd);
	return 0;
}