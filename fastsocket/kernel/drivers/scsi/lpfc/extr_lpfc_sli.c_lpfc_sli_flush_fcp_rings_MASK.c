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
struct lpfc_sli_ring {int /*<<< orphan*/  txcmplq; int /*<<< orphan*/  txq; } ;
struct lpfc_sli {size_t fcp_ring; struct lpfc_sli_ring* ring; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; int /*<<< orphan*/  hba_flag; struct lpfc_sli sli; } ;

/* Variables and functions */
 int /*<<< orphan*/  HBA_FCP_IOQ_FLUSH ; 
 int /*<<< orphan*/  IOERR_SLI_DOWN ; 
 int /*<<< orphan*/  IOSTAT_LOCAL_REJECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txcmplq ; 
 int /*<<< orphan*/  txq ; 

void
FUNC5(struct lpfc_hba *phba)
{
	FUNC0(txq);
	FUNC0(txcmplq);
	struct lpfc_sli *psli = &phba->sli;
	struct lpfc_sli_ring  *pring;

	/* Currently, only one fcp ring */
	pring = &psli->ring[psli->fcp_ring];

	FUNC3(&phba->hbalock);
	/* Retrieve everything on txq */
	FUNC1(&pring->txq, &txq);

	/* Retrieve everything on the txcmplq */
	FUNC1(&pring->txcmplq, &txcmplq);

	/* Indicate the I/O queues are flushed */
	phba->hba_flag |= HBA_FCP_IOQ_FLUSH;
	FUNC4(&phba->hbalock);

	/* Flush the txq */
	FUNC2(phba, &txq, IOSTAT_LOCAL_REJECT,
			      IOERR_SLI_DOWN);

	/* Flush the txcmpq */
	FUNC2(phba, &txcmplq, IOSTAT_LOCAL_REJECT,
			      IOERR_SLI_DOWN);
}