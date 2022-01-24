#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct lpfc_vport {int /*<<< orphan*/  fc_portname; int /*<<< orphan*/  fc_myDID; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int nlp_flag; int /*<<< orphan*/  nlp_DID; } ;
struct lpfc_name {int dummy; } ;
struct lpfc_iocbq {int /*<<< orphan*/  iocb_cmpl; scalar_t__ context2; int /*<<< orphan*/  iocb; } ;
struct TYPE_2__ {int /*<<< orphan*/  elsXmitLOGO; } ;
struct lpfc_hba {TYPE_1__ fc_stat; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
typedef  int /*<<< orphan*/  IOCB_t ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_CMD_LOGO ; 
 int IOCB_ERROR ; 
 int /*<<< orphan*/  LPFC_DISC_TRC_ELS_CMD ; 
 int /*<<< orphan*/  LPFC_ELS_RING ; 
 int NLP_ISSUE_LOGO ; 
 int NLP_LOGO_SND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_cmpl_els_logo ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,struct lpfc_iocbq*) ; 
 struct lpfc_iocbq* FUNC3 (struct lpfc_vport*,int,int,int /*<<< orphan*/ ,struct lpfc_nodelist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC4 (struct lpfc_vport*) ; 
 int FUNC5 (struct lpfc_hba*,int /*<<< orphan*/ ,struct lpfc_iocbq*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct lpfc_vport*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

int
FUNC10(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
		    uint8_t retry)
{
	struct Scsi_Host *shost = FUNC4(vport);
	struct lpfc_hba  *phba = vport->phba;
	IOCB_t *icmd;
	struct lpfc_iocbq *elsiocb;
	uint8_t *pcmd;
	uint16_t cmdsize;
	int rc;

	FUNC8(shost->host_lock);
	if (ndlp->nlp_flag & NLP_LOGO_SND) {
		FUNC9(shost->host_lock);
		return 0;
	}
	FUNC9(shost->host_lock);

	cmdsize = (2 * sizeof(uint32_t)) + sizeof(struct lpfc_name);
	elsiocb = FUNC3(vport, 1, cmdsize, retry, ndlp,
				     ndlp->nlp_DID, ELS_CMD_LOGO);
	if (!elsiocb)
		return 1;

	icmd = &elsiocb->iocb;
	pcmd = (uint8_t *) (((struct lpfc_dmabuf *) elsiocb->context2)->virt);
	*((uint32_t *) (pcmd)) = ELS_CMD_LOGO;
	pcmd += sizeof(uint32_t);

	/* Fill in LOGO payload */
	*((uint32_t *) (pcmd)) = FUNC0(vport->fc_myDID);
	pcmd += sizeof(uint32_t);
	FUNC7(pcmd, &vport->fc_portname, sizeof(struct lpfc_name));

	FUNC1(vport, LPFC_DISC_TRC_ELS_CMD,
		"Issue LOGO:      did:x%x",
		ndlp->nlp_DID, 0, 0);

	/*
	 * If we are issuing a LOGO, we may try to recover the remote NPort
	 * by issuing a PLOGI later. Even though we issue ELS cmds by the
	 * VPI, if we have a valid RPI, and that RPI gets unreg'ed while
	 * that ELS command is in-flight, the HBA returns a IOERR_INVALID_RPI
	 * for that ELS cmd. To avoid this situation, lets get rid of the
	 * RPI right now, before any ELS cmds are sent.
	 */
	FUNC8(shost->host_lock);
	ndlp->nlp_flag |= NLP_ISSUE_LOGO;
	FUNC9(shost->host_lock);
	if (FUNC6(vport, ndlp)) {
		FUNC2(phba, elsiocb);
		return 0;
	}

	phba->fc_stat.elsXmitLOGO++;
	elsiocb->iocb_cmpl = lpfc_cmpl_els_logo;
	FUNC8(shost->host_lock);
	ndlp->nlp_flag |= NLP_LOGO_SND;
	ndlp->nlp_flag &= ~NLP_ISSUE_LOGO;
	FUNC9(shost->host_lock);
	rc = FUNC5(phba, LPFC_ELS_RING, elsiocb, 0);

	if (rc == IOCB_ERROR) {
		FUNC8(shost->host_lock);
		ndlp->nlp_flag &= ~NLP_LOGO_SND;
		FUNC9(shost->host_lock);
		FUNC2(phba, elsiocb);
		return 1;
	}
	return 0;
}