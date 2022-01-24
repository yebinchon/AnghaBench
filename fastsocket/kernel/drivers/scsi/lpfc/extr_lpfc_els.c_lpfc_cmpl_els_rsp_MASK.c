#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int nlp_flag; int /*<<< orphan*/  nlp_rpi; int /*<<< orphan*/  nlp_state; int /*<<< orphan*/  nlp_DID; int /*<<< orphan*/  nlp_prev_state; struct lpfc_vport* vport; } ;
struct TYPE_10__ {int /*<<< orphan*/  remoteID; } ;
struct TYPE_11__ {int /*<<< orphan*/ * ulpWord; TYPE_2__ elsreq64; } ;
struct TYPE_13__ {scalar_t__ ulpStatus; int /*<<< orphan*/  ulpTimeout; TYPE_3__ un; int /*<<< orphan*/  ulpIoTag; } ;
struct TYPE_9__ {TYPE_4__* mbox; } ;
struct lpfc_iocbq {int /*<<< orphan*/ * context1; TYPE_5__ iocb; scalar_t__ context2; TYPE_1__ context_un; } ;
struct lpfc_hba {int /*<<< orphan*/  mbox_mem_pool; } ;
struct lpfc_dmabuf {int /*<<< orphan*/  phys; scalar_t__ virt; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
struct TYPE_12__ {scalar_t__ context1; int /*<<< orphan*/  mbox_cmpl; int /*<<< orphan*/  mbox_flag; struct lpfc_vport* vport; int /*<<< orphan*/  context2; } ;
typedef  TYPE_4__ LPFC_MBOXQ_t ;
typedef  TYPE_5__ IOCB_t ;

/* Variables and functions */
 scalar_t__ ELS_CMD_LS_RJT ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_ELS ; 
 int /*<<< orphan*/  LPFC_DISC_TRC_ELS_RSP ; 
 int /*<<< orphan*/  LPFC_MBX_IMED_UNREG ; 
 scalar_t__ MBX_NOT_FINISHED ; 
 int /*<<< orphan*/  MBX_NOWAIT ; 
 int NLP_ACC_REGLOGIN ; 
 scalar_t__ FUNC0 (struct lpfc_nodelist*) ; 
 int NLP_RM_DFLT_RPI ; 
 int /*<<< orphan*/  NLP_STE_REG_LOGIN_ISSUE ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_dmabuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*,int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,struct lpfc_iocbq*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_mbx_cmpl_dflt_rpi ; 
 int /*<<< orphan*/  lpfc_mbx_cmpl_reg_login ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_nodelist*) ; 
 scalar_t__ FUNC8 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC9 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 struct Scsi_Host* FUNC12 (struct lpfc_vport*) ; 
 scalar_t__ FUNC13 (struct lpfc_hba*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct lpfc_vport*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC18(struct lpfc_hba *phba, struct lpfc_iocbq *cmdiocb,
		  struct lpfc_iocbq *rspiocb)
{
	struct lpfc_nodelist *ndlp = (struct lpfc_nodelist *) cmdiocb->context1;
	struct lpfc_vport *vport = ndlp ? ndlp->vport : NULL;
	struct Scsi_Host  *shost = vport ? FUNC12(vport) : NULL;
	IOCB_t  *irsp;
	uint8_t *pcmd;
	LPFC_MBOXQ_t *mbox = NULL;
	struct lpfc_dmabuf *mp = NULL;
	uint32_t ls_rjt = 0;

	irsp = &rspiocb->iocb;

	if (cmdiocb->context_un.mbox)
		mbox = cmdiocb->context_un.mbox;

	/* First determine if this is a LS_RJT cmpl. Note, this callback
	 * function can have cmdiocb->contest1 (ndlp) field set to NULL.
	 */
	pcmd = (uint8_t *) (((struct lpfc_dmabuf *) cmdiocb->context2)->virt);
	if (ndlp && FUNC0(ndlp) &&
	    (*((uint32_t *) (pcmd)) == ELS_CMD_LS_RJT)) {
		/* A LS_RJT associated with Default RPI cleanup has its own
		 * separate code path.
		 */
		if (!(ndlp->nlp_flag & NLP_RM_DFLT_RPI))
			ls_rjt = 1;
	}

	/* Check to see if link went down during discovery */
	if (!ndlp || !FUNC0(ndlp) || FUNC3(vport)) {
		if (mbox) {
			mp = (struct lpfc_dmabuf *) mbox->context1;
			if (mp) {
				FUNC6(phba, mp->virt, mp->phys);
				FUNC1(mp);
			}
			FUNC15(mbox, phba->mbox_mem_pool);
		}
		if (ndlp && FUNC0(ndlp) &&
		    (ndlp->nlp_flag & NLP_RM_DFLT_RPI))
			if (FUNC8(ndlp)) {
				ndlp = NULL;
				/* Indicate the node has already released,
				 * should not reference to it from within
				 * the routine lpfc_els_free_iocb.
				 */
				cmdiocb->context1 = NULL;
			}
		goto out;
	}

	FUNC2(vport, LPFC_DISC_TRC_ELS_RSP,
		"ELS rsp cmpl:    status:x%x/x%x did:x%x",
		irsp->ulpStatus, irsp->un.ulpWord[4],
		cmdiocb->iocb.un.elsreq64.remoteID);
	/* ELS response tag <ulpIoTag> completes */
	FUNC11(vport, KERN_INFO, LOG_ELS,
			 "0110 ELS response tag x%x completes "
			 "Data: x%x x%x x%x x%x x%x x%x x%x\n",
			 cmdiocb->iocb.ulpIoTag, rspiocb->iocb.ulpStatus,
			 rspiocb->iocb.un.ulpWord[4], rspiocb->iocb.ulpTimeout,
			 ndlp->nlp_DID, ndlp->nlp_flag, ndlp->nlp_state,
			 ndlp->nlp_rpi);
	if (mbox) {
		if ((rspiocb->iocb.ulpStatus == 0)
		    && (ndlp->nlp_flag & NLP_ACC_REGLOGIN)) {
			FUNC14(vport, ndlp);
			/* Increment reference count to ndlp to hold the
			 * reference to ndlp for the callback function.
			 */
			mbox->context2 = FUNC7(ndlp);
			mbox->vport = vport;
			if (ndlp->nlp_flag & NLP_RM_DFLT_RPI) {
				mbox->mbox_flag |= LPFC_MBX_IMED_UNREG;
				mbox->mbox_cmpl = lpfc_mbx_cmpl_dflt_rpi;
			}
			else {
				mbox->mbox_cmpl = lpfc_mbx_cmpl_reg_login;
				ndlp->nlp_prev_state = ndlp->nlp_state;
				FUNC10(vport, ndlp,
					   NLP_STE_REG_LOGIN_ISSUE);
			}
			if (FUNC13(phba, mbox, MBX_NOWAIT)
			    != MBX_NOT_FINISHED)
				goto out;
			else
				/* Decrement the ndlp reference count we
				 * set for this failed mailbox command.
				 */
				FUNC9(ndlp);

			/* ELS rsp: Cannot issue reg_login for <NPortid> */
			FUNC11(vport, KERN_ERR, LOG_ELS,
				"0138 ELS rsp: Cannot issue reg_login for x%x "
				"Data: x%x x%x x%x\n",
				ndlp->nlp_DID, ndlp->nlp_flag, ndlp->nlp_state,
				ndlp->nlp_rpi);

			if (FUNC8(ndlp)) {
				ndlp = NULL;
				/* Indicate node has already been released,
				 * should not reference to it from within
				 * the routine lpfc_els_free_iocb.
				 */
				cmdiocb->context1 = NULL;
			}
		} else {
			/* Do not drop node for lpfc_els_abort'ed ELS cmds */
			if (!FUNC5(irsp) &&
			    ndlp->nlp_flag & NLP_ACC_REGLOGIN) {
				if (FUNC8(ndlp)) {
					ndlp = NULL;
					/* Indicate node has already been
					 * released, should not reference
					 * to it from within the routine
					 * lpfc_els_free_iocb.
					 */
					cmdiocb->context1 = NULL;
				}
			}
		}
		mp = (struct lpfc_dmabuf *) mbox->context1;
		if (mp) {
			FUNC6(phba, mp->virt, mp->phys);
			FUNC1(mp);
		}
		FUNC15(mbox, phba->mbox_mem_pool);
	}
out:
	if (ndlp && FUNC0(ndlp)) {
		FUNC16(shost->host_lock);
		ndlp->nlp_flag &= ~(NLP_ACC_REGLOGIN | NLP_RM_DFLT_RPI);
		FUNC17(shost->host_lock);

		/* If the node is not being used by another discovery thread,
		 * and we are sending a reject, we are done with it.
		 * Release driver reference count here and free associated
		 * resources.
		 */
		if (ls_rjt)
			if (FUNC8(ndlp))
				/* Indicate node has already been released,
				 * should not reference to it from within
				 * the routine lpfc_els_free_iocb.
				 */
				cmdiocb->context1 = NULL;
	}

	FUNC4(phba, cmdiocb);
	return;
}