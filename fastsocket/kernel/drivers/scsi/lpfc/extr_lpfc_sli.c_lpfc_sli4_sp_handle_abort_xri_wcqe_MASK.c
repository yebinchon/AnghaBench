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
struct sli4_wcqe_xri_aborted {int dummy; } ;
struct lpfc_queue {int subtype; } ;
struct TYPE_2__ {int /*<<< orphan*/  sp_els_xri_aborted_work_queue; int /*<<< orphan*/  sp_fcp_xri_aborted_work_queue; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; int /*<<< orphan*/  hba_flag; TYPE_1__ sli4_hba; } ;
struct lpfc_cq_event {int /*<<< orphan*/  list; int /*<<< orphan*/  cqe; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_XRI_ABORT_EVENT ; 
 int /*<<< orphan*/  FCP_XRI_ABORT_EVENT ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_SLI ; 
#define  LPFC_ELS 129 
#define  LPFC_FCP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 struct lpfc_cq_event* FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sli4_wcqe_xri_aborted*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool
FUNC6(struct lpfc_hba *phba,
				   struct lpfc_queue *cq,
				   struct sli4_wcqe_xri_aborted *wcqe)
{
	bool workposted = false;
	struct lpfc_cq_event *cq_event;
	unsigned long iflags;

	/* Allocate a new internal CQ_EVENT entry */
	cq_event = FUNC2(phba);
	if (!cq_event) {
		FUNC1(phba, KERN_ERR, LOG_SLI,
				"0602 Failed to allocate CQ_EVENT entry\n");
		return false;
	}

	/* Move the CQE into the proper xri abort event list */
	FUNC3(&cq_event->cqe, wcqe, sizeof(struct sli4_wcqe_xri_aborted));
	switch (cq->subtype) {
	case LPFC_FCP:
		FUNC4(&phba->hbalock, iflags);
		FUNC0(&cq_event->list,
			      &phba->sli4_hba.sp_fcp_xri_aborted_work_queue);
		/* Set the fcp xri abort event flag */
		phba->hba_flag |= FCP_XRI_ABORT_EVENT;
		FUNC5(&phba->hbalock, iflags);
		workposted = true;
		break;
	case LPFC_ELS:
		FUNC4(&phba->hbalock, iflags);
		FUNC0(&cq_event->list,
			      &phba->sli4_hba.sp_els_xri_aborted_work_queue);
		/* Set the els xri abort event flag */
		phba->hba_flag |= ELS_XRI_ABORT_EVENT;
		FUNC5(&phba->hbalock, iflags);
		workposted = true;
		break;
	default:
		FUNC1(phba, KERN_ERR, LOG_SLI,
				"0603 Invalid work queue CQE subtype (x%x)\n",
				cq->subtype);
		workposted = false;
		break;
	}
	return workposted;
}