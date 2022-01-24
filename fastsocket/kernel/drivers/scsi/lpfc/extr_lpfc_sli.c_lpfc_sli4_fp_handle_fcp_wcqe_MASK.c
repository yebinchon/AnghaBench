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
struct lpfc_wcqe_complete {int parameter; int /*<<< orphan*/  word3; int /*<<< orphan*/  total_data_placed; } ;
struct TYPE_2__ {int /*<<< orphan*/  iocb_event; } ;
struct lpfc_sli_ring {int /*<<< orphan*/  ring_lock; TYPE_1__ stats; } ;
struct lpfc_queue {struct lpfc_sli_ring* pring; } ;
struct lpfc_iocbq {int iocb_flag; int /*<<< orphan*/  (* iocb_cmpl ) (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*) ;} ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; int /*<<< orphan*/  (* lpfc_rampdown_queue_depth ) (struct lpfc_hba*) ;} ;

/* Variables and functions */
 int IOERR_NO_RESOURCES ; 
 int IOERR_PARAM_MASK ; 
 scalar_t__ IOSTAT_LOCAL_REJECT ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  LOG_SLI ; 
 int LPFC_DRIVER_ABORTED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct lpfc_wcqe_complete*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*,struct lpfc_wcqe_complete*) ; 
 struct lpfc_iocbq* FUNC3 (struct lpfc_hba*,struct lpfc_sli_ring*,scalar_t__) ; 
 int /*<<< orphan*/  lpfc_wcqe_c_hw_status ; 
 int /*<<< orphan*/  lpfc_wcqe_c_request_tag ; 
 int /*<<< orphan*/  lpfc_wcqe_c_status ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*,struct lpfc_iocbq*,struct lpfc_iocbq*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(struct lpfc_hba *phba, struct lpfc_queue *cq,
			     struct lpfc_wcqe_complete *wcqe)
{
	struct lpfc_sli_ring *pring = cq->pring;
	struct lpfc_iocbq *cmdiocbq;
	struct lpfc_iocbq irspiocbq;
	unsigned long iflags;

	/* Check for response status */
	if (FUNC8(FUNC0(lpfc_wcqe_c_status, wcqe))) {
		/* If resource errors reported from HBA, reduce queue
		 * depth of the SCSI device.
		 */
		if (((FUNC0(lpfc_wcqe_c_status, wcqe) ==
		     IOSTAT_LOCAL_REJECT)) &&
		    ((wcqe->parameter & IOERR_PARAM_MASK) ==
		     IOERR_NO_RESOURCES))
			phba->lpfc_rampdown_queue_depth(phba);

		/* Log the error status */
		FUNC1(phba, KERN_WARNING, LOG_SLI,
				"0373 FCP complete error: status=x%x, "
				"hw_status=x%x, total_data_specified=%d, "
				"parameter=x%x, word3=x%x\n",
				FUNC0(lpfc_wcqe_c_status, wcqe),
				FUNC0(lpfc_wcqe_c_hw_status, wcqe),
				wcqe->total_data_placed, wcqe->parameter,
				wcqe->word3);
	}

	/* Look up the FCP command IOCB and create pseudo response IOCB */
	FUNC4(&pring->ring_lock, iflags);
	pring->stats.iocb_event++;
	cmdiocbq = FUNC3(phba, pring,
				FUNC0(lpfc_wcqe_c_request_tag, wcqe));
	FUNC5(&pring->ring_lock, iflags);
	if (FUNC8(!cmdiocbq)) {
		FUNC1(phba, KERN_WARNING, LOG_SLI,
				"0374 FCP complete with no corresponding "
				"cmdiocb: iotag (%d)\n",
				FUNC0(lpfc_wcqe_c_request_tag, wcqe));
		return;
	}
	if (FUNC8(!cmdiocbq->iocb_cmpl)) {
		FUNC1(phba, KERN_WARNING, LOG_SLI,
				"0375 FCP cmdiocb not callback function "
				"iotag: (%d)\n",
				FUNC0(lpfc_wcqe_c_request_tag, wcqe));
		return;
	}

	/* Fake the irspiocb and copy necessary response information */
	FUNC2(phba, &irspiocbq, cmdiocbq, wcqe);

	if (cmdiocbq->iocb_flag & LPFC_DRIVER_ABORTED) {
		FUNC4(&phba->hbalock, iflags);
		cmdiocbq->iocb_flag &= ~LPFC_DRIVER_ABORTED;
		FUNC5(&phba->hbalock, iflags);
	}

	/* Pass the cmd_iocb and the rsp state to the upper layer */
	(cmdiocbq->iocb_cmpl)(phba, cmdiocbq, &irspiocbq);
}