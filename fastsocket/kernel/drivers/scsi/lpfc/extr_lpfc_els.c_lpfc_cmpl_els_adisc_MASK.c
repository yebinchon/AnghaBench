#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct lpfc_vport {scalar_t__ num_disc_nodes; } ;
struct lpfc_nodelist {int nlp_flag; int /*<<< orphan*/  nlp_DID; } ;
struct TYPE_6__ {int /*<<< orphan*/ * ulpWord; } ;
struct TYPE_7__ {TYPE_2__ un; scalar_t__ ulpStatus; int /*<<< orphan*/  ulpTimeout; } ;
struct TYPE_5__ {struct lpfc_iocbq* rsp_iocb; } ;
struct lpfc_iocbq {scalar_t__ context1; TYPE_3__ iocb; TYPE_1__ context_un; struct lpfc_vport* vport; } ;
struct lpfc_hba {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
typedef  TYPE_3__ IOCB_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_ELS ; 
 int /*<<< orphan*/  LPFC_DISC_TRC_ELS_CMD ; 
 int NLP_ADISC_SND ; 
 int /*<<< orphan*/  NLP_EVT_CMPL_ADISC ; 
 int NLP_NPR_2B_DISC ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_vport*,int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,struct lpfc_nodelist*,struct lpfc_iocbq*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,struct lpfc_iocbq*) ; 
 scalar_t__ FUNC4 (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_vport*) ; 
 struct Scsi_Host* FUNC9 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(struct lpfc_hba *phba, struct lpfc_iocbq *cmdiocb,
		    struct lpfc_iocbq *rspiocb)
{
	struct lpfc_vport *vport = cmdiocb->vport;
	struct Scsi_Host  *shost = FUNC9(vport);
	IOCB_t *irsp;
	struct lpfc_nodelist *ndlp;
	int  disc;

	/* we pass cmdiocb to state machine which needs rspiocb as well */
	cmdiocb->context_un.rsp_iocb = rspiocb;

	irsp = &(rspiocb->iocb);
	ndlp = (struct lpfc_nodelist *) cmdiocb->context1;

	FUNC0(vport, LPFC_DISC_TRC_ELS_CMD,
		"ADISC cmpl:      status:x%x/x%x did:x%x",
		irsp->ulpStatus, irsp->un.ulpWord[4],
		ndlp->nlp_DID);

	/* Since ndlp can be freed in the disc state machine, note if this node
	 * is being used during discovery.
	 */
	FUNC10(shost->host_lock);
	disc = (ndlp->nlp_flag & NLP_NPR_2B_DISC);
	ndlp->nlp_flag &= ~(NLP_ADISC_SND | NLP_NPR_2B_DISC);
	FUNC11(shost->host_lock);
	/* ADISC completes to NPort <nlp_DID> */
	FUNC7(vport, KERN_INFO, LOG_ELS,
			 "0104 ADISC completes to NPort x%x "
			 "Data: x%x x%x x%x x%x x%x\n",
			 ndlp->nlp_DID, irsp->ulpStatus, irsp->un.ulpWord[4],
			 irsp->ulpTimeout, disc, vport->num_disc_nodes);
	/* Check to see if link went down during discovery */
	if (FUNC2(vport)) {
		FUNC10(shost->host_lock);
		ndlp->nlp_flag |= NLP_NPR_2B_DISC;
		FUNC11(shost->host_lock);
		goto out;
	}

	if (irsp->ulpStatus) {
		/* Check for retry */
		if (FUNC4(phba, cmdiocb, rspiocb)) {
			/* ELS command is being retried */
			if (disc) {
				FUNC10(shost->host_lock);
				ndlp->nlp_flag |= NLP_NPR_2B_DISC;
				FUNC11(shost->host_lock);
				FUNC8(vport);
			}
			goto out;
		}
		/* ADISC failed */
		FUNC7(vport, KERN_ERR, LOG_ELS,
				 "2755 ADISC failure DID:%06X Status:x%x/x%x\n",
				 ndlp->nlp_DID, irsp->ulpStatus,
				 irsp->un.ulpWord[4]);
		/* Do not call DSM for lpfc_els_abort'ed ELS cmds */
		if (!FUNC5(irsp))
			FUNC1(vport, ndlp, cmdiocb,
						NLP_EVT_CMPL_ADISC);
	} else
		/* Good status, call state machine */
		FUNC1(vport, ndlp, cmdiocb,
					NLP_EVT_CMPL_ADISC);

	/* Check to see if there are more ADISCs to be sent */
	if (disc && vport->num_disc_nodes)
		FUNC6(vport);
out:
	FUNC3(phba, cmdiocb);
	return;
}