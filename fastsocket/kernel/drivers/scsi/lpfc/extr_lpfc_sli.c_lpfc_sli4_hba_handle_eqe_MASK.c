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
typedef  size_t uint16_t ;
struct lpfc_queue {size_t queue_id; int entry_repost; int CQ_max_cqe; } ;
struct TYPE_4__ {int sli_flag; } ;
struct TYPE_3__ {size_t* fcp_cq_map; struct lpfc_queue** fcp_cq; int /*<<< orphan*/ * hba_eq; } ;
struct lpfc_hba {TYPE_2__ sli; TYPE_1__ sli4_hba; } ;
struct lpfc_eqe {int dummy; } ;
struct lpfc_cqe {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_SLI ; 
 int /*<<< orphan*/  LPFC_QUEUE_NOARM ; 
 int /*<<< orphan*/  LPFC_QUEUE_REARM ; 
 int LPFC_SLI_ACTIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct lpfc_eqe*) ; 
 int /*<<< orphan*/  lpfc_eqe_major_code ; 
 int /*<<< orphan*/  lpfc_eqe_minor_code ; 
 int /*<<< orphan*/  lpfc_eqe_resource_id ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 struct lpfc_cqe* FUNC2 (struct lpfc_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_queue*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct lpfc_hba*,struct lpfc_queue*,struct lpfc_cqe*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*,struct lpfc_eqe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8(struct lpfc_hba *phba, struct lpfc_eqe *eqe,
			uint32_t qidx)
{
	struct lpfc_queue *cq;
	struct lpfc_cqe *cqe;
	bool workposted = false;
	uint16_t cqid;
	int ecount = 0;

	if (FUNC7(FUNC0(lpfc_eqe_major_code, eqe) != 0)) {
		FUNC1(phba, KERN_ERR, LOG_SLI,
				"0366 Not a valid completion "
				"event: majorcode=x%x, minorcode=x%x\n",
				FUNC0(lpfc_eqe_major_code, eqe),
				FUNC0(lpfc_eqe_minor_code, eqe));
		return;
	}

	/* Get the reference to the corresponding CQ */
	cqid = FUNC0(lpfc_eqe_resource_id, eqe);

	/* Check if this is a Slow path event */
	if (FUNC7(cqid != phba->sli4_hba.fcp_cq_map[qidx])) {
		FUNC5(phba, eqe,
			phba->sli4_hba.hba_eq[qidx]);
		return;
	}

	if (FUNC7(!phba->sli4_hba.fcp_cq)) {
		FUNC1(phba, KERN_WARNING, LOG_SLI,
				"3146 Fast-path completion queues "
				"does not exist\n");
		return;
	}
	cq = phba->sli4_hba.fcp_cq[qidx];
	if (FUNC7(!cq)) {
		if (phba->sli.sli_flag & LPFC_SLI_ACTIVE)
			FUNC1(phba, KERN_ERR, LOG_SLI,
					"0367 Fast-path completion queue "
					"(%d) does not exist\n", qidx);
		return;
	}

	if (FUNC7(cqid != cq->queue_id)) {
		FUNC1(phba, KERN_ERR, LOG_SLI,
				"0368 Miss-matched fast-path completion "
				"queue identifier: eqcqid=%d, fcpcqid=%d\n",
				cqid, cq->queue_id);
		return;
	}

	/* Process all the entries to the CQ */
	while ((cqe = FUNC2(cq))) {
		workposted |= FUNC4(phba, cq, cqe);
		if (!(++ecount % cq->entry_repost))
			FUNC3(cq, LPFC_QUEUE_NOARM);
	}

	/* Track the max number of CQEs processed in 1 EQ */
	if (ecount > cq->CQ_max_cqe)
		cq->CQ_max_cqe = ecount;

	/* Catch the no cq entry condition */
	if (FUNC7(ecount == 0))
		FUNC1(phba, KERN_ERR, LOG_SLI,
				"0369 No entry from fast-path completion "
				"queue fcpcqid=%d\n", cq->queue_id);

	/* In any case, flash and re-arm the CQ */
	FUNC3(cq, LPFC_QUEUE_REARM);

	/* wake up worker thread if there are works to be done */
	if (workposted)
		FUNC6(phba);
}