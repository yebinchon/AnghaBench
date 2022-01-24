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
struct lpfc_wcqe_complete {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  iocb_event; } ;
struct lpfc_sli_ring {int /*<<< orphan*/  ring_lock; TYPE_3__ stats; } ;
struct TYPE_5__ {struct lpfc_wcqe_complete wcqe_cmpl; } ;
struct TYPE_6__ {TYPE_1__ cqe; } ;
struct lpfc_iocbq {TYPE_2__ cq_event; } ;
struct TYPE_8__ {struct lpfc_sli_ring* ring; } ;
struct lpfc_hba {TYPE_4__ sli; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_SLI ; 
 size_t LPFC_ELS_RING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct lpfc_wcqe_complete*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*,struct lpfc_wcqe_complete*) ; 
 struct lpfc_iocbq* FUNC3 (struct lpfc_hba*,struct lpfc_sli_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,struct lpfc_iocbq*) ; 
 int /*<<< orphan*/  lpfc_wcqe_c_request_tag ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static struct lpfc_iocbq *
FUNC8(struct lpfc_hba *phba,
			       struct lpfc_iocbq *irspiocbq)
{
	struct lpfc_sli_ring *pring = &phba->sli.ring[LPFC_ELS_RING];
	struct lpfc_iocbq *cmdiocbq;
	struct lpfc_wcqe_complete *wcqe;
	unsigned long iflags;

	wcqe = &irspiocbq->cq_event.cqe.wcqe_cmpl;
	FUNC5(&pring->ring_lock, iflags);
	pring->stats.iocb_event++;
	/* Look up the ELS command IOCB and create pseudo response IOCB */
	cmdiocbq = FUNC3(phba, pring,
				FUNC0(lpfc_wcqe_c_request_tag, wcqe));
	FUNC6(&pring->ring_lock, iflags);

	if (FUNC7(!cmdiocbq)) {
		FUNC1(phba, KERN_WARNING, LOG_SLI,
				"0386 ELS complete with no corresponding "
				"cmdiocb: iotag (%d)\n",
				FUNC0(lpfc_wcqe_c_request_tag, wcqe));
		FUNC4(phba, irspiocbq);
		return NULL;
	}

	/* Fake the irspiocbq and copy necessary response information */
	FUNC2(phba, irspiocbq, cmdiocbq, wcqe);

	return irspiocbq;
}