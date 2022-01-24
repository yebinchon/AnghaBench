#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int nlp_flag; scalar_t__ nlp_state; } ;
struct lpfc_hba {int /*<<< orphan*/  mbox_mem_pool; } ;
struct lpfc_dmabuf {int /*<<< orphan*/  phys; int /*<<< orphan*/  virt; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
struct TYPE_5__ {int /*<<< orphan*/ * context2; int /*<<< orphan*/ * context1; struct lpfc_vport* vport; } ;
typedef  TYPE_1__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int /*<<< orphan*/  NLP_EVT_CMPL_REG_LOGIN ; 
 int NLP_IGNR_REG_CMPL ; 
 int NLP_REG_LOGIN_SEND ; 
 scalar_t__ NLP_STE_REG_LOGIN_ISSUE ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_dmabuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,struct lpfc_nodelist*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_nodelist*) ; 
 struct Scsi_Host* FUNC4 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
	struct lpfc_vport  *vport = pmb->vport;
	struct lpfc_dmabuf *mp = (struct lpfc_dmabuf *) (pmb->context1);
	struct lpfc_nodelist *ndlp = (struct lpfc_nodelist *) pmb->context2;
	struct Scsi_Host  *shost = FUNC4(vport);

	pmb->context1 = NULL;
	pmb->context2 = NULL;

	if (ndlp->nlp_flag & NLP_REG_LOGIN_SEND)
		ndlp->nlp_flag &= ~NLP_REG_LOGIN_SEND;

	if (ndlp->nlp_flag & NLP_IGNR_REG_CMPL ||
	    ndlp->nlp_state != NLP_STE_REG_LOGIN_ISSUE) {
		/* We rcvd a rscn after issuing this
		 * mbox reg login, we may have cycled
		 * back through the state and be
		 * back at reg login state so this
		 * mbox needs to be ignored becase
		 * there is another reg login in
		 * process.
		 */
		FUNC6(shost->host_lock);
		ndlp->nlp_flag &= ~NLP_IGNR_REG_CMPL;
		FUNC7(shost->host_lock);
	} else
		/* Good status, call state machine */
		FUNC1(vport, ndlp, pmb,
				NLP_EVT_CMPL_REG_LOGIN);

	FUNC2(phba, mp->virt, mp->phys);
	FUNC0(mp);
	FUNC5(pmb, phba->mbox_mem_pool);
	/* decrement the node reference count held for this callback
	 * function.
	 */
	FUNC3(ndlp);

	return;
}