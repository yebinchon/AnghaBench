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
typedef  union lpfc_wqe {int dummy; } lpfc_wqe ;
typedef  size_t uint32_t ;
struct lpfc_sli_ring {int /*<<< orphan*/  txq; } ;
struct lpfc_sglq {scalar_t__ sli4_xritag; int /*<<< orphan*/  sli4_lxritag; } ;
struct TYPE_5__ {scalar_t__ ulpCommand; } ;
struct lpfc_iocbq {scalar_t__ sli4_xritag; int iocb_flag; size_t fcp_wqidx; int /*<<< orphan*/  sli4_lxritag; TYPE_2__ iocb; } ;
struct TYPE_6__ {int /*<<< orphan*/  els_wq; int /*<<< orphan*/ * fcp_wq; } ;
struct TYPE_4__ {struct lpfc_sli_ring* ring; } ;
struct lpfc_hba {TYPE_3__ sli4_hba; TYPE_1__ sli; } ;

/* Variables and functions */
 scalar_t__ CMD_ABORT_XRI_CN ; 
 scalar_t__ CMD_CLOSE_XRI_CN ; 
 int IOCB_BUSY ; 
 int IOCB_ERROR ; 
 int IOCB_SUCCESS ; 
 int LPFC_IO_FCP ; 
 int LPFC_USE_FCPWQIDX ; 
 scalar_t__ NO_XRI ; 
 size_t SLI_IOCB_RET_IOCB ; 
 struct lpfc_sglq* FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 struct lpfc_sglq* FUNC1 (struct lpfc_hba*,struct lpfc_iocbq*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,struct lpfc_sli_ring*,struct lpfc_iocbq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_sglq*) ; 
 scalar_t__ FUNC5 (struct lpfc_hba*,struct lpfc_iocbq*,union lpfc_wqe*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,union lpfc_wqe*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*,struct lpfc_sli_ring*,struct lpfc_iocbq*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int
FUNC9(struct lpfc_hba *phba, uint32_t ring_number,
			 struct lpfc_iocbq *piocb, uint32_t flag)
{
	struct lpfc_sglq *sglq;
	union lpfc_wqe wqe;
	struct lpfc_sli_ring *pring = &phba->sli.ring[ring_number];

	if (piocb->sli4_xritag == NO_XRI) {
		if (piocb->iocb.ulpCommand == CMD_ABORT_XRI_CN ||
		    piocb->iocb.ulpCommand == CMD_CLOSE_XRI_CN)
			sglq = NULL;
		else {
			if (!FUNC3(&pring->txq)) {
				if (!(flag & SLI_IOCB_RET_IOCB)) {
					FUNC2(phba,
						pring, piocb);
					return IOCB_SUCCESS;
				} else {
					return IOCB_BUSY;
				}
			} else {
				sglq = FUNC1(phba, piocb);
				if (!sglq) {
					if (!(flag & SLI_IOCB_RET_IOCB)) {
						FUNC2(phba,
								pring,
								piocb);
						return IOCB_SUCCESS;
					} else
						return IOCB_BUSY;
				}
			}
		}
	} else if (piocb->iocb_flag &  LPFC_IO_FCP) {
		/* These IO's already have an XRI and a mapped sgl. */
		sglq = NULL;
	} else {
		/*
		 * This is a continuation of a commandi,(CX) so this
		 * sglq is on the active list
		 */
		sglq = FUNC0(phba, piocb->sli4_lxritag);
		if (!sglq)
			return IOCB_ERROR;
	}

	if (sglq) {
		piocb->sli4_lxritag = sglq->sli4_lxritag;
		piocb->sli4_xritag = sglq->sli4_xritag;
		if (NO_XRI == FUNC4(phba, piocb, sglq))
			return IOCB_ERROR;
	}

	if (FUNC5(phba, piocb, &wqe))
		return IOCB_ERROR;

	if ((piocb->iocb_flag & LPFC_IO_FCP) ||
		(piocb->iocb_flag & LPFC_USE_FCPWQIDX)) {
		if (FUNC8(!phba->sli4_hba.fcp_wq))
			return IOCB_ERROR;
		if (FUNC6(phba->sli4_hba.fcp_wq[piocb->fcp_wqidx],
				     &wqe))
			return IOCB_ERROR;
	} else {
		if (FUNC8(!phba->sli4_hba.els_wq))
			return IOCB_ERROR;
		if (FUNC6(phba->sli4_hba.els_wq, &wqe))
			return IOCB_ERROR;
	}
	FUNC7(phba, pring, piocb);

	return 0;
}