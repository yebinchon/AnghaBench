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
struct TYPE_2__ {int /*<<< orphan*/ * hba_eq; int /*<<< orphan*/ * fcp_cq; int /*<<< orphan*/  els_cq; int /*<<< orphan*/  mbx_cq; } ;
struct lpfc_hba {int cfg_fcp_io_channel; TYPE_1__ sli4_hba; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPFC_QUEUE_REARM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct lpfc_hba *phba)
{
	int fcp_eqidx;

	FUNC0(phba->sli4_hba.mbx_cq, LPFC_QUEUE_REARM);
	FUNC0(phba->sli4_hba.els_cq, LPFC_QUEUE_REARM);
	fcp_eqidx = 0;
	if (phba->sli4_hba.fcp_cq) {
		do {
			FUNC0(phba->sli4_hba.fcp_cq[fcp_eqidx],
					     LPFC_QUEUE_REARM);
		} while (++fcp_eqidx < phba->cfg_fcp_io_channel);
	}
	if (phba->sli4_hba.hba_eq) {
		for (fcp_eqidx = 0; fcp_eqidx < phba->cfg_fcp_io_channel;
		     fcp_eqidx++)
			FUNC1(phba->sli4_hba.hba_eq[fcp_eqidx],
					     LPFC_QUEUE_REARM);
	}
}