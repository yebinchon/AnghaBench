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
struct lpfc_mcqe {int /*<<< orphan*/  trailer; int /*<<< orphan*/  mcqe_tag1; int /*<<< orphan*/  mcqe_tag0; int /*<<< orphan*/  word0; } ;
struct TYPE_2__ {int /*<<< orphan*/  sp_asynce_work_queue; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; int /*<<< orphan*/  hba_flag; TYPE_1__ sli4_hba; } ;
struct lpfc_cq_event {int /*<<< orphan*/  list; int /*<<< orphan*/  cqe; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC_EVENT ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_SLI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 struct lpfc_cq_event* FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct lpfc_mcqe*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool
FUNC6(struct lpfc_hba *phba, struct lpfc_mcqe *mcqe)
{
	struct lpfc_cq_event *cq_event;
	unsigned long iflags;

	FUNC1(phba, KERN_INFO, LOG_SLI,
			"0392 Async Event: word0:x%x, word1:x%x, "
			"word2:x%x, word3:x%x\n", mcqe->word0,
			mcqe->mcqe_tag0, mcqe->mcqe_tag1, mcqe->trailer);

	/* Allocate a new internal CQ_EVENT entry */
	cq_event = FUNC2(phba);
	if (!cq_event) {
		FUNC1(phba, KERN_ERR, LOG_SLI,
				"0394 Failed to allocate CQ_EVENT entry\n");
		return false;
	}

	/* Move the CQE into an asynchronous event entry */
	FUNC3(&cq_event->cqe, mcqe, sizeof(struct lpfc_mcqe));
	FUNC4(&phba->hbalock, iflags);
	FUNC0(&cq_event->list, &phba->sli4_hba.sp_asynce_work_queue);
	/* Set the async event flag */
	phba->hba_flag |= ASYNC_EVENT;
	FUNC5(&phba->hbalock, iflags);

	return true;
}