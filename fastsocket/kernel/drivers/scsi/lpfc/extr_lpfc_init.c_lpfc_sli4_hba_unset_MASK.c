#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct TYPE_11__ {int sli_flag; TYPE_6__* mbox_active; } ;
struct TYPE_8__ {scalar_t__ intr_enable; } ;
struct lpfc_hba {TYPE_5__* pport; int /*<<< orphan*/  worker_thread; scalar_t__ cfg_sriov_nr_virtfn; int /*<<< orphan*/  hbalock; TYPE_4__ sli; TYPE_1__ sli4_hba; struct pci_dev* pcidev; } ;
struct TYPE_9__ {int /*<<< orphan*/  mbxStatus; } ;
struct TYPE_10__ {TYPE_2__ mb; } ;
struct TYPE_13__ {TYPE_3__ u; } ;
struct TYPE_12__ {scalar_t__ work_port_events; } ;
typedef  TYPE_6__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int LPFC_ACTIVE_MBOX_WAIT_CNT ; 
 int LPFC_SLI_ASYNC_MBX_BLK ; 
 int LPFC_SLI_MBOX_ACTIVE ; 
 int /*<<< orphan*/  MBX_NOT_FINISHED ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(struct lpfc_hba *phba)
{
	int wait_cnt = 0;
	LPFC_MBOXQ_t *mboxq;
	struct pci_dev *pdev = phba->pcidev;

	FUNC7(phba);
	phba->sli4_hba.intr_enable = 0;

	/*
	 * Gracefully wait out the potential current outstanding asynchronous
	 * mailbox command.
	 */

	/* First, block any pending async mailbox command from posted */
	FUNC10(&phba->hbalock);
	phba->sli.sli_flag |= LPFC_SLI_ASYNC_MBX_BLK;
	FUNC11(&phba->hbalock);
	/* Now, trying to wait it out if we can */
	while (phba->sli.sli_flag & LPFC_SLI_MBOX_ACTIVE) {
		FUNC8(10);
		if (++wait_cnt > LPFC_ACTIVE_MBOX_WAIT_CNT)
			break;
	}
	/* Forcefully release the outstanding mailbox command if timed out */
	if (phba->sli.sli_flag & LPFC_SLI_MBOX_ACTIVE) {
		FUNC10(&phba->hbalock);
		mboxq = phba->sli.mbox_active;
		mboxq->u.mb.mbxStatus = MBX_NOT_FINISHED;
		FUNC0(phba, mboxq);
		phba->sli.sli_flag &= ~LPFC_SLI_MBOX_ACTIVE;
		phba->sli.mbox_active = NULL;
		FUNC11(&phba->hbalock);
	}

	/* Abort all iocbs associated with the hba */
	FUNC6(phba);

	/* Wait for completion of device XRI exchange busy */
	FUNC5(phba);

	/* Disable PCI subsystem interrupt */
	FUNC3(phba);

	/* Disable SR-IOV if enabled */
	if (phba->cfg_sriov_nr_virtfn)
		FUNC9(pdev);

	/* Stop kthread signal shall trigger work_done one more time */
	FUNC1(phba->worker_thread);

	/* Reset SLI4 HBA FCoE function */
	FUNC2(phba);
	FUNC4(phba);

	/* Stop the SLI4 device port */
	phba->pport->work_port_events = 0;
}