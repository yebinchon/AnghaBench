#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct lpfc_vport {int /*<<< orphan*/  fc_prli_sent; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int /*<<< orphan*/  nlp_flag; int /*<<< orphan*/  nlp_DID; } ;
struct lpfc_iocbq {int /*<<< orphan*/  iocb_cmpl; scalar_t__ context2; int /*<<< orphan*/  iocb; } ;
struct TYPE_7__ {int /*<<< orphan*/  elsXmitPRLI; } ;
struct TYPE_5__ {int feaLevelHigh; } ;
struct TYPE_6__ {TYPE_1__ rev; } ;
struct lpfc_hba {TYPE_3__ fc_stat; TYPE_2__ vpd; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
struct TYPE_8__ {int ConfmComplAllowed; int Retry; int TaskRetryIdReq; int estabImagePair; int readXferRdyDis; int initiatorFunc; int /*<<< orphan*/  prliType; } ;
typedef  TYPE_4__ PRLI ;
typedef  int /*<<< orphan*/  IOCB_t ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_CMD_PRLI ; 
 scalar_t__ IOCB_ERROR ; 
 int /*<<< orphan*/  LPFC_DISC_TRC_ELS_CMD ; 
 int /*<<< orphan*/  LPFC_ELS_RING ; 
 int /*<<< orphan*/  NLP_PRLI_SND ; 
 int /*<<< orphan*/  PRLI_FCP_TYPE ; 
 int /*<<< orphan*/  lpfc_cmpl_els_prli ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_vport*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,struct lpfc_iocbq*) ; 
 struct lpfc_iocbq* FUNC2 (struct lpfc_vport*,int,int,int /*<<< orphan*/ ,struct lpfc_nodelist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC3 (struct lpfc_vport*) ; 
 scalar_t__ FUNC4 (struct lpfc_hba*,int /*<<< orphan*/ ,struct lpfc_iocbq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
		    uint8_t retry)
{
	struct Scsi_Host *shost = FUNC3(vport);
	struct lpfc_hba *phba = vport->phba;
	PRLI *npr;
	IOCB_t *icmd;
	struct lpfc_iocbq *elsiocb;
	uint8_t *pcmd;
	uint16_t cmdsize;

	cmdsize = (sizeof(uint32_t) + sizeof(PRLI));
	elsiocb = FUNC2(vport, 1, cmdsize, retry, ndlp,
				     ndlp->nlp_DID, ELS_CMD_PRLI);
	if (!elsiocb)
		return 1;

	icmd = &elsiocb->iocb;
	pcmd = (uint8_t *) (((struct lpfc_dmabuf *) elsiocb->context2)->virt);

	/* For PRLI request, remainder of payload is service parameters */
	FUNC5(pcmd, 0, (sizeof(PRLI) + sizeof(uint32_t)));
	*((uint32_t *) (pcmd)) = ELS_CMD_PRLI;
	pcmd += sizeof(uint32_t);

	/* For PRLI, remainder of payload is PRLI parameter page */
	npr = (PRLI *) pcmd;
	/*
	 * If our firmware version is 3.20 or later,
	 * set the following bits for FC-TAPE support.
	 */
	if (phba->vpd.rev.feaLevelHigh >= 0x02) {
		npr->ConfmComplAllowed = 1;
		npr->Retry = 1;
		npr->TaskRetryIdReq = 1;
	}
	npr->estabImagePair = 1;
	npr->readXferRdyDis = 1;

	/* For FCP support */
	npr->prliType = PRLI_FCP_TYPE;
	npr->initiatorFunc = 1;

	FUNC0(vport, LPFC_DISC_TRC_ELS_CMD,
		"Issue PRLI:      did:x%x",
		ndlp->nlp_DID, 0, 0);

	phba->fc_stat.elsXmitPRLI++;
	elsiocb->iocb_cmpl = lpfc_cmpl_els_prli;
	FUNC6(shost->host_lock);
	ndlp->nlp_flag |= NLP_PRLI_SND;
	FUNC7(shost->host_lock);
	if (FUNC4(phba, LPFC_ELS_RING, elsiocb, 0) ==
	    IOCB_ERROR) {
		FUNC6(shost->host_lock);
		ndlp->nlp_flag &= ~NLP_PRLI_SND;
		FUNC7(shost->host_lock);
		FUNC1(phba, elsiocb);
		return 1;
	}
	vport->fc_prli_sent++;
	return 0;
}