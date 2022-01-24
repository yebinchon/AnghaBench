#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct lpfc_wcqe_complete {int dummy; } ;
struct lpfc_sli_ring {int /*<<< orphan*/  txcmplq; int /*<<< orphan*/  txq; } ;
struct lpfc_queue {struct lpfc_sli_ring* pring; } ;
struct TYPE_8__ {int /*<<< orphan*/  wcqe_cmpl; } ;
struct TYPE_9__ {int /*<<< orphan*/  list; TYPE_3__ cqe; } ;
struct lpfc_iocbq {TYPE_4__ cq_event; } ;
struct TYPE_10__ {int /*<<< orphan*/  sp_queue_event; } ;
struct TYPE_7__ {TYPE_1__* ring; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; int /*<<< orphan*/  hba_flag; TYPE_5__ sli4_hba; int /*<<< orphan*/  iocb_cnt; TYPE_2__ sli; } ;
struct TYPE_6__ {int /*<<< orphan*/  txcmplq; } ;

/* Variables and functions */
 int /*<<< orphan*/  HBA_SP_QUEUE_EVT ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_SLI ; 
 size_t LPFC_FCP_RING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int,int) ; 
 struct lpfc_iocbq* FUNC3 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct lpfc_wcqe_complete*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool
FUNC7(struct lpfc_hba *phba, struct lpfc_queue *cq,
			     struct lpfc_wcqe_complete *wcqe)
{
	struct lpfc_iocbq *irspiocbq;
	unsigned long iflags;
	struct lpfc_sli_ring *pring = cq->pring;
	int txq_cnt = 0;
	int txcmplq_cnt = 0;
	int fcp_txcmplq_cnt = 0;

	/* Get an irspiocbq for later ELS response processing use */
	irspiocbq = FUNC3(phba);
	if (!irspiocbq) {
		if (!FUNC1(&pring->txq))
			txq_cnt++;
		if (!FUNC1(&pring->txcmplq))
			txcmplq_cnt++;
		if (!FUNC1(&phba->sli.ring[LPFC_FCP_RING].txcmplq))
			fcp_txcmplq_cnt++;
		FUNC2(phba, KERN_ERR, LOG_SLI,
			"0387 NO IOCBQ data: txq_cnt=%d iocb_cnt=%d "
			"fcp_txcmplq_cnt=%d, els_txcmplq_cnt=%d\n",
			txq_cnt, phba->iocb_cnt,
			fcp_txcmplq_cnt,
			txcmplq_cnt);
		return false;
	}

	/* Save off the slow-path queue event for work thread to process */
	FUNC4(&irspiocbq->cq_event.cqe.wcqe_cmpl, wcqe, sizeof(*wcqe));
	FUNC5(&phba->hbalock, iflags);
	FUNC0(&irspiocbq->cq_event.list,
		      &phba->sli4_hba.sp_queue_event);
	phba->hba_flag |= HBA_SP_QUEUE_EVT;
	FUNC6(&phba->hbalock, iflags);

	return true;
}