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
struct TYPE_2__ {int /*<<< orphan*/ * hba_eq; int /*<<< orphan*/ * fcp_cq; int /*<<< orphan*/  els_cq; int /*<<< orphan*/  mbx_cq; int /*<<< orphan*/ * fcp_wq; int /*<<< orphan*/  dat_rq; int /*<<< orphan*/  hdr_rq; int /*<<< orphan*/  els_wq; int /*<<< orphan*/  mbx_wq; } ;
struct lpfc_hba {int cfg_fcp_io_channel; TYPE_1__ sli4_hba; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 

void
FUNC5(struct lpfc_hba *phba)
{
	int fcp_qidx;

	/* Unset mailbox command work queue */
	FUNC2(phba, phba->sli4_hba.mbx_wq);
	/* Unset ELS work queue */
	FUNC4(phba, phba->sli4_hba.els_wq);
	/* Unset unsolicited receive queue */
	FUNC3(phba, phba->sli4_hba.hdr_rq, phba->sli4_hba.dat_rq);
	/* Unset FCP work queue */
	if (phba->sli4_hba.fcp_wq) {
		for (fcp_qidx = 0; fcp_qidx < phba->cfg_fcp_io_channel;
		     fcp_qidx++)
			FUNC4(phba, phba->sli4_hba.fcp_wq[fcp_qidx]);
	}
	/* Unset mailbox command complete queue */
	FUNC0(phba, phba->sli4_hba.mbx_cq);
	/* Unset ELS complete queue */
	FUNC0(phba, phba->sli4_hba.els_cq);
	/* Unset FCP response complete queue */
	if (phba->sli4_hba.fcp_cq) {
		for (fcp_qidx = 0; fcp_qidx < phba->cfg_fcp_io_channel;
		     fcp_qidx++)
			FUNC0(phba, phba->sli4_hba.fcp_cq[fcp_qidx]);
	}
	/* Unset fast-path event queue */
	if (phba->sli4_hba.hba_eq) {
		for (fcp_qidx = 0; fcp_qidx < phba->cfg_fcp_io_channel;
		     fcp_qidx++)
			FUNC1(phba, phba->sli4_hba.hba_eq[fcp_qidx]);
	}
}