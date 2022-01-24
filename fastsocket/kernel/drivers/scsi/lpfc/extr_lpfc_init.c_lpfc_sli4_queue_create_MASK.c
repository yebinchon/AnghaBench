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
typedef  int /*<<< orphan*/  uint16_t ;
struct lpfc_queue {int dummy; } ;
struct TYPE_2__ {struct lpfc_queue* dat_rq; int /*<<< orphan*/  rq_ecount; int /*<<< orphan*/  rq_esize; struct lpfc_queue* hdr_rq; struct lpfc_queue* els_wq; int /*<<< orphan*/  wq_ecount; int /*<<< orphan*/  wq_esize; struct lpfc_queue* mbx_wq; int /*<<< orphan*/  mq_ecount; int /*<<< orphan*/  mq_esize; struct lpfc_queue* els_cq; int /*<<< orphan*/  cq_ecount; int /*<<< orphan*/  cq_esize; struct lpfc_queue* mbx_cq; struct lpfc_queue** fcp_wq; struct lpfc_queue** fcp_cq; struct lpfc_queue** hba_eq; int /*<<< orphan*/  eq_ecount; int /*<<< orphan*/  eq_esize; void* fcp_cq_map; } ;
struct lpfc_hba {int cfg_fcp_io_channel; TYPE_1__ sli4_hba; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ERANGE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_INIT ; 
 int /*<<< orphan*/  LPFC_MQE_DEF_COUNT ; 
 int /*<<< orphan*/  LPFC_MQE_SIZE ; 
 int /*<<< orphan*/  LPFC_RQE_DEF_COUNT ; 
 int /*<<< orphan*/  LPFC_RQE_SIZE ; 
 int /*<<< orphan*/  LPFC_WQE_DEF_COUNT ; 
 int /*<<< orphan*/  LPFC_WQE_SIZE ; 
 void* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 struct lpfc_queue* FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*) ; 

int
FUNC4(struct lpfc_hba *phba)
{
	struct lpfc_queue *qdesc;
	int idx;

	/*
	 * Create HBA Record arrays.
	 */
	if (!phba->cfg_fcp_io_channel)
		return -ERANGE;

	phba->sli4_hba.mq_esize = LPFC_MQE_SIZE;
	phba->sli4_hba.mq_ecount = LPFC_MQE_DEF_COUNT;
	phba->sli4_hba.wq_esize = LPFC_WQE_SIZE;
	phba->sli4_hba.wq_ecount = LPFC_WQE_DEF_COUNT;
	phba->sli4_hba.rq_esize = LPFC_RQE_SIZE;
	phba->sli4_hba.rq_ecount = LPFC_RQE_DEF_COUNT;

	phba->sli4_hba.hba_eq =  FUNC0((sizeof(struct lpfc_queue *) *
				phba->cfg_fcp_io_channel), GFP_KERNEL);
	if (!phba->sli4_hba.hba_eq) {
		FUNC1(phba, KERN_ERR, LOG_INIT,
			"2576 Failed allocate memory for "
			"fast-path EQ record array\n");
		goto out_error;
	}

	phba->sli4_hba.fcp_cq = FUNC0((sizeof(struct lpfc_queue *) *
				phba->cfg_fcp_io_channel), GFP_KERNEL);
	if (!phba->sli4_hba.fcp_cq) {
		FUNC1(phba, KERN_ERR, LOG_INIT,
				"2577 Failed allocate memory for fast-path "
				"CQ record array\n");
		goto out_error;
	}

	phba->sli4_hba.fcp_wq = FUNC0((sizeof(struct lpfc_queue *) *
				phba->cfg_fcp_io_channel), GFP_KERNEL);
	if (!phba->sli4_hba.fcp_wq) {
		FUNC1(phba, KERN_ERR, LOG_INIT,
				"2578 Failed allocate memory for fast-path "
				"WQ record array\n");
		goto out_error;
	}

	/*
	 * Since the first EQ can have multiple CQs associated with it,
	 * this array is used to quickly see if we have a FCP fast-path
	 * CQ match.
	 */
	phba->sli4_hba.fcp_cq_map = FUNC0((sizeof(uint16_t) *
					 phba->cfg_fcp_io_channel), GFP_KERNEL);
	if (!phba->sli4_hba.fcp_cq_map) {
		FUNC1(phba, KERN_ERR, LOG_INIT,
				"2545 Failed allocate memory for fast-path "
				"CQ map\n");
		goto out_error;
	}

	/*
	 * Create HBA Event Queues (EQs).  The cfg_fcp_io_channel specifies
	 * how many EQs to create.
	 */
	for (idx = 0; idx < phba->cfg_fcp_io_channel; idx++) {

		/* Create EQs */
		qdesc = FUNC2(phba, phba->sli4_hba.eq_esize,
					      phba->sli4_hba.eq_ecount);
		if (!qdesc) {
			FUNC1(phba, KERN_ERR, LOG_INIT,
					"0497 Failed allocate EQ (%d)\n", idx);
			goto out_error;
		}
		phba->sli4_hba.hba_eq[idx] = qdesc;

		/* Create Fast Path FCP CQs */
		qdesc = FUNC2(phba, phba->sli4_hba.cq_esize,
					      phba->sli4_hba.cq_ecount);
		if (!qdesc) {
			FUNC1(phba, KERN_ERR, LOG_INIT,
					"0499 Failed allocate fast-path FCP "
					"CQ (%d)\n", idx);
			goto out_error;
		}
		phba->sli4_hba.fcp_cq[idx] = qdesc;

		/* Create Fast Path FCP WQs */
		qdesc = FUNC2(phba, phba->sli4_hba.wq_esize,
					      phba->sli4_hba.wq_ecount);
		if (!qdesc) {
			FUNC1(phba, KERN_ERR, LOG_INIT,
					"0503 Failed allocate fast-path FCP "
					"WQ (%d)\n", idx);
			goto out_error;
		}
		phba->sli4_hba.fcp_wq[idx] = qdesc;
	}


	/*
	 * Create Slow Path Completion Queues (CQs)
	 */

	/* Create slow-path Mailbox Command Complete Queue */
	qdesc = FUNC2(phba, phba->sli4_hba.cq_esize,
				      phba->sli4_hba.cq_ecount);
	if (!qdesc) {
		FUNC1(phba, KERN_ERR, LOG_INIT,
				"0500 Failed allocate slow-path mailbox CQ\n");
		goto out_error;
	}
	phba->sli4_hba.mbx_cq = qdesc;

	/* Create slow-path ELS Complete Queue */
	qdesc = FUNC2(phba, phba->sli4_hba.cq_esize,
				      phba->sli4_hba.cq_ecount);
	if (!qdesc) {
		FUNC1(phba, KERN_ERR, LOG_INIT,
				"0501 Failed allocate slow-path ELS CQ\n");
		goto out_error;
	}
	phba->sli4_hba.els_cq = qdesc;


	/*
	 * Create Slow Path Work Queues (WQs)
	 */

	/* Create Mailbox Command Queue */

	qdesc = FUNC2(phba, phba->sli4_hba.mq_esize,
				      phba->sli4_hba.mq_ecount);
	if (!qdesc) {
		FUNC1(phba, KERN_ERR, LOG_INIT,
				"0505 Failed allocate slow-path MQ\n");
		goto out_error;
	}
	phba->sli4_hba.mbx_wq = qdesc;

	/*
	 * Create ELS Work Queues
	 */

	/* Create slow-path ELS Work Queue */
	qdesc = FUNC2(phba, phba->sli4_hba.wq_esize,
				      phba->sli4_hba.wq_ecount);
	if (!qdesc) {
		FUNC1(phba, KERN_ERR, LOG_INIT,
				"0504 Failed allocate slow-path ELS WQ\n");
		goto out_error;
	}
	phba->sli4_hba.els_wq = qdesc;

	/*
	 * Create Receive Queue (RQ)
	 */

	/* Create Receive Queue for header */
	qdesc = FUNC2(phba, phba->sli4_hba.rq_esize,
				      phba->sli4_hba.rq_ecount);
	if (!qdesc) {
		FUNC1(phba, KERN_ERR, LOG_INIT,
				"0506 Failed allocate receive HRQ\n");
		goto out_error;
	}
	phba->sli4_hba.hdr_rq = qdesc;

	/* Create Receive Queue for data */
	qdesc = FUNC2(phba, phba->sli4_hba.rq_esize,
				      phba->sli4_hba.rq_ecount);
	if (!qdesc) {
		FUNC1(phba, KERN_ERR, LOG_INIT,
				"0507 Failed allocate receive DRQ\n");
		goto out_error;
	}
	phba->sli4_hba.dat_rq = qdesc;

	return 0;

out_error:
	FUNC3(phba);
	return -ENOMEM;
}