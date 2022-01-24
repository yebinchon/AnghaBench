#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct lpfc_vport {int dummy; } ;
struct lpfc_sli_ring {int /*<<< orphan*/  ringno; int /*<<< orphan*/  ring_lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  abortContextTag; int /*<<< orphan*/  abortIoTag; int /*<<< orphan*/  abortType; } ;
struct TYPE_5__ {TYPE_1__ acxri; } ;
struct TYPE_6__ {scalar_t__ ulpCommand; int ulpLe; TYPE_2__ un; int /*<<< orphan*/  ulpClass; int /*<<< orphan*/  ulpIoTag; int /*<<< orphan*/  ulpContext; } ;
struct lpfc_iocbq {int iocb_flag; int /*<<< orphan*/  iotag; int /*<<< orphan*/  iocb_cmpl; int /*<<< orphan*/  fcp_wqidx; int /*<<< orphan*/  sli4_xritag; TYPE_3__ iocb; struct lpfc_vport* vport; } ;
struct lpfc_hba {scalar_t__ sli_rev; scalar_t__ link_state; } ;
typedef  TYPE_3__ IOCB_t ;

/* Variables and functions */
 int /*<<< orphan*/  ABORT_TYPE_ABTS ; 
 scalar_t__ CMD_ABORT_XRI_CN ; 
 scalar_t__ CMD_CLOSE_XRI_CN ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_SLI ; 
 int LPFC_DRIVER_ABORTED ; 
 int LPFC_IO_FCP ; 
 scalar_t__ LPFC_LINK_UP ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 int LPFC_USE_FCPWQIDX ; 
 struct lpfc_iocbq* FUNC0 (struct lpfc_hba*) ; 
 int FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,struct lpfc_iocbq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,struct lpfc_iocbq*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_sli_abort_els_cmpl ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC6(struct lpfc_hba *phba, struct lpfc_sli_ring *pring,
			   struct lpfc_iocbq *cmdiocb)
{
	struct lpfc_vport *vport = cmdiocb->vport;
	struct lpfc_iocbq *abtsiocbp;
	IOCB_t *icmd = NULL;
	IOCB_t *iabt = NULL;
	int retval;
	unsigned long iflags;

	/*
	 * There are certain command types we don't want to abort.  And we
	 * don't want to abort commands that are already in the process of
	 * being aborted.
	 */
	icmd = &cmdiocb->iocb;
	if (icmd->ulpCommand == CMD_ABORT_XRI_CN ||
	    icmd->ulpCommand == CMD_CLOSE_XRI_CN ||
	    (cmdiocb->iocb_flag & LPFC_DRIVER_ABORTED) != 0)
		return 0;

	/* issue ABTS for this IOCB based on iotag */
	abtsiocbp = FUNC0(phba);
	if (abtsiocbp == NULL)
		return 0;

	/* This signals the response to set the correct status
	 * before calling the completion handler
	 */
	cmdiocb->iocb_flag |= LPFC_DRIVER_ABORTED;

	iabt = &abtsiocbp->iocb;
	iabt->un.acxri.abortType = ABORT_TYPE_ABTS;
	iabt->un.acxri.abortContextTag = icmd->ulpContext;
	if (phba->sli_rev == LPFC_SLI_REV4) {
		iabt->un.acxri.abortIoTag = cmdiocb->sli4_xritag;
		iabt->un.acxri.abortContextTag = cmdiocb->iotag;
	}
	else
		iabt->un.acxri.abortIoTag = icmd->ulpIoTag;
	iabt->ulpLe = 1;
	iabt->ulpClass = icmd->ulpClass;

	/* ABTS WQE must go to the same WQ as the WQE to be aborted */
	abtsiocbp->fcp_wqidx = cmdiocb->fcp_wqidx;
	if (cmdiocb->iocb_flag & LPFC_IO_FCP)
		abtsiocbp->iocb_flag |= LPFC_USE_FCPWQIDX;

	if (phba->link_state >= LPFC_LINK_UP)
		iabt->ulpCommand = CMD_ABORT_XRI_CN;
	else
		iabt->ulpCommand = CMD_CLOSE_XRI_CN;

	abtsiocbp->iocb_cmpl = lpfc_sli_abort_els_cmpl;

	FUNC3(vport, KERN_INFO, LOG_SLI,
			 "0339 Abort xri x%x, original iotag x%x, "
			 "abort cmd iotag x%x\n",
			 iabt->un.acxri.abortIoTag,
			 iabt->un.acxri.abortContextTag,
			 abtsiocbp->iotag);

	if (phba->sli_rev == LPFC_SLI_REV4) {
		/* Note: both hbalock and ring_lock need to be set here */
		FUNC4(&pring->ring_lock, iflags);
		retval = FUNC1(phba, pring->ringno,
			abtsiocbp, 0);
		FUNC5(&pring->ring_lock, iflags);
	} else {
		retval = FUNC1(phba, pring->ringno,
			abtsiocbp, 0);
	}

	if (retval)
		FUNC2(phba, abtsiocbp);

	/*
	 * Caller to this routine should check for IOCB_ERROR
	 * and handle it properly.  This routine no longer removes
	 * iocb off txcmplq and call compl in case of IOCB_ERROR.
	 */
	return retval;
}