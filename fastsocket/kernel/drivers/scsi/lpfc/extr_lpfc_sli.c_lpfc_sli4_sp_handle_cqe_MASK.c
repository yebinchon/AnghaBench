#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sli4_wcqe_xri_aborted {int dummy; } ;
struct lpfc_wcqe_release {int dummy; } ;
struct lpfc_wcqe_complete {int dummy; } ;
struct lpfc_rcqe {int dummy; } ;
struct lpfc_queue {int dummy; } ;
struct lpfc_hba {void* last_completion_time; } ;
struct lpfc_cqe {int dummy; } ;

/* Variables and functions */
#define  CQE_CODE_COMPL_WQE 132 
#define  CQE_CODE_RECEIVE 131 
#define  CQE_CODE_RECEIVE_V1 130 
#define  CQE_CODE_RELEASE_WQE 129 
#define  CQE_CODE_XRI_ABORTED 128 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_SLI ; 
 int FUNC0 (int /*<<< orphan*/ ,struct lpfc_cqe*) ; 
 void* jiffies ; 
 int /*<<< orphan*/  lpfc_cqe_code ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct lpfc_hba*,struct lpfc_queue*,struct sli4_wcqe_xri_aborted*) ; 
 int FUNC3 (struct lpfc_hba*,struct lpfc_queue*,struct lpfc_wcqe_complete*) ; 
 int FUNC4 (struct lpfc_hba*,struct lpfc_rcqe*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*,struct lpfc_wcqe_release*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_cqe*,struct lpfc_cqe*,int) ; 

__attribute__((used)) static bool
FUNC7(struct lpfc_hba *phba, struct lpfc_queue *cq,
			 struct lpfc_cqe *cqe)
{
	struct lpfc_cqe cqevt;
	bool workposted = false;

	/* Copy the work queue CQE and convert endian order if needed */
	FUNC6(cqe, &cqevt, sizeof(struct lpfc_cqe));

	/* Check and process for different type of WCQE and dispatch */
	switch (FUNC0(lpfc_cqe_code, &cqevt)) {
	case CQE_CODE_COMPL_WQE:
		/* Process the WQ/RQ complete event */
		phba->last_completion_time = jiffies;
		workposted = FUNC3(phba, cq,
				(struct lpfc_wcqe_complete *)&cqevt);
		break;
	case CQE_CODE_RELEASE_WQE:
		/* Process the WQ release event */
		FUNC5(phba,
				(struct lpfc_wcqe_release *)&cqevt);
		break;
	case CQE_CODE_XRI_ABORTED:
		/* Process the WQ XRI abort event */
		phba->last_completion_time = jiffies;
		workposted = FUNC2(phba, cq,
				(struct sli4_wcqe_xri_aborted *)&cqevt);
		break;
	case CQE_CODE_RECEIVE:
	case CQE_CODE_RECEIVE_V1:
		/* Process the RQ event */
		phba->last_completion_time = jiffies;
		workposted = FUNC4(phba,
				(struct lpfc_rcqe *)&cqevt);
		break;
	default:
		FUNC1(phba, KERN_ERR, LOG_SLI,
				"0388 Not a valid WCQE code: x%x\n",
				FUNC0(lpfc_cqe_code, &cqevt));
		break;
	}
	return workposted;
}