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
typedef  size_t uint32_t ;
struct lpfc_sli_ring {int /*<<< orphan*/  ring_lock; } ;
struct lpfc_queue {int /*<<< orphan*/  EQ_processed; } ;
struct lpfc_iocbq {int iocb_flag; int fcp_wqidx; } ;
struct TYPE_4__ {struct lpfc_sli_ring* ring; } ;
struct TYPE_3__ {struct lpfc_queue** hba_eq; struct lpfc_fcp_eq_hdl* fcp_eq_hdl; int /*<<< orphan*/  fcp_wq; } ;
struct lpfc_hba {scalar_t__ sli_rev; int /*<<< orphan*/  hbalock; TYPE_2__ sli; TYPE_1__ sli4_hba; } ;
struct lpfc_fcp_eq_hdl {int /*<<< orphan*/  fcp_eq_in_use; } ;
struct lpfc_eqe {int dummy; } ;

/* Variables and functions */
 int IOCB_ERROR ; 
 int LPFC_IO_FCP ; 
 int /*<<< orphan*/  LPFC_QUEUE_REARM ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 size_t MAX_SLI3_CONFIGURED_RINGS ; 
 int FUNC0 (struct lpfc_hba*,size_t,struct lpfc_iocbq*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ lpfc_fcp_look_ahead ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_queue*) ; 
 struct lpfc_eqe* FUNC4 (struct lpfc_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*,struct lpfc_eqe*,int) ; 
 int FUNC7 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC10 (int) ; 

int
FUNC11(struct lpfc_hba *phba, uint32_t ring_number,
		    struct lpfc_iocbq *piocb, uint32_t flag)
{
	struct lpfc_fcp_eq_hdl *fcp_eq_hdl;
	struct lpfc_sli_ring *pring;
	struct lpfc_queue *fpeq;
	struct lpfc_eqe *eqe;
	unsigned long iflags;
	int rc, idx;

	if (phba->sli_rev == LPFC_SLI_REV4) {
		if (piocb->iocb_flag &  LPFC_IO_FCP) {
			if (FUNC10(!phba->sli4_hba.fcp_wq))
				return IOCB_ERROR;
			idx = FUNC7(phba);
			piocb->fcp_wqidx = idx;
			ring_number = MAX_SLI3_CONFIGURED_RINGS + idx;

			pring = &phba->sli.ring[ring_number];
			FUNC8(&pring->ring_lock, iflags);
			rc = FUNC0(phba, ring_number, piocb,
				flag);
			FUNC9(&pring->ring_lock, iflags);

			if (lpfc_fcp_look_ahead) {
				fcp_eq_hdl = &phba->sli4_hba.fcp_eq_hdl[idx];

				if (FUNC1(&fcp_eq_hdl->
					fcp_eq_in_use)) {

					/* Get associated EQ with this index */
					fpeq = phba->sli4_hba.hba_eq[idx];

					/* Turn off interrupts from this EQ */
					FUNC3(fpeq);

					/*
					 * Process all the events on FCP EQ
					 */
					while ((eqe = FUNC4(fpeq))) {
						FUNC6(phba,
							eqe, idx);
						fpeq->EQ_processed++;
					}

					/* Always clear and re-arm the EQ */
					FUNC5(fpeq,
						LPFC_QUEUE_REARM);
				}
				FUNC2(&fcp_eq_hdl->fcp_eq_in_use);
			}
		} else {
			pring = &phba->sli.ring[ring_number];
			FUNC8(&pring->ring_lock, iflags);
			rc = FUNC0(phba, ring_number, piocb,
				flag);
			FUNC9(&pring->ring_lock, iflags);

		}
	} else {
		/* For now, SLI2/3 will still use hbalock */
		FUNC8(&phba->hbalock, iflags);
		rc = FUNC0(phba, ring_number, piocb, flag);
		FUNC9(&phba->hbalock, iflags);
	}
	return rc;
}