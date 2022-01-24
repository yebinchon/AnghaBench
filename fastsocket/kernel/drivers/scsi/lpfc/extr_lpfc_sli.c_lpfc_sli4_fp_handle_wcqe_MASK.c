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
struct lpfc_queue {int /*<<< orphan*/  CQ_xri_aborted; int /*<<< orphan*/  CQ_release_wqe; int /*<<< orphan*/  CQ_wq; } ;
struct lpfc_hba {void* last_completion_time; } ;
struct lpfc_cqe {int dummy; } ;

/* Variables and functions */
#define  CQE_CODE_COMPL_WQE 130 
#define  CQE_CODE_RELEASE_WQE 129 
#define  CQE_CODE_XRI_ABORTED 128 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_SLI ; 
 int FUNC0 (int /*<<< orphan*/ ,struct lpfc_wcqe_release*) ; 
 void* jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,struct lpfc_queue*,struct lpfc_wcqe_complete*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,struct lpfc_queue*,struct lpfc_wcqe_release*) ; 
 int FUNC4 (struct lpfc_hba*,struct lpfc_queue*,struct sli4_wcqe_xri_aborted*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_cqe*,struct lpfc_wcqe_release*,int) ; 
 int /*<<< orphan*/  lpfc_wcqe_c_code ; 

__attribute__((used)) static int
FUNC6(struct lpfc_hba *phba, struct lpfc_queue *cq,
			 struct lpfc_cqe *cqe)
{
	struct lpfc_wcqe_release wcqe;
	bool workposted = false;

	/* Copy the work queue CQE and convert endian order if needed */
	FUNC5(cqe, &wcqe, sizeof(struct lpfc_cqe));

	/* Check and process for different type of WCQE and dispatch */
	switch (FUNC0(lpfc_wcqe_c_code, &wcqe)) {
	case CQE_CODE_COMPL_WQE:
		cq->CQ_wq++;
		/* Process the WQ complete event */
		phba->last_completion_time = jiffies;
		FUNC2(phba, cq,
				(struct lpfc_wcqe_complete *)&wcqe);
		break;
	case CQE_CODE_RELEASE_WQE:
		cq->CQ_release_wqe++;
		/* Process the WQ release event */
		FUNC3(phba, cq,
				(struct lpfc_wcqe_release *)&wcqe);
		break;
	case CQE_CODE_XRI_ABORTED:
		cq->CQ_xri_aborted++;
		/* Process the WQ XRI abort event */
		phba->last_completion_time = jiffies;
		workposted = FUNC4(phba, cq,
				(struct sli4_wcqe_xri_aborted *)&wcqe);
		break;
	default:
		FUNC1(phba, KERN_ERR, LOG_SLI,
				"0144 Not a valid WCQE code: x%x\n",
				FUNC0(lpfc_wcqe_c_code, &wcqe));
		break;
	}
	return workposted;
}