#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct lpfc_sli_ring {int dummy; } ;
struct lpfc_sli {size_t fcp_ring; struct lpfc_sli_ring* ring; int /*<<< orphan*/  sli_flag; TYPE_4__* mbox_active; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; int /*<<< orphan*/  link_state; TYPE_2__* pport; struct lpfc_sli sli; } ;
struct TYPE_7__ {int /*<<< orphan*/  mbxCommand; } ;
struct TYPE_5__ {TYPE_3__ mb; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
struct TYPE_6__ {int /*<<< orphan*/  work_port_lock; int /*<<< orphan*/  work_port_events; int /*<<< orphan*/  port_state; } ;
typedef  TYPE_3__ MAILBOX_t ;
typedef  TYPE_4__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int LOG_MBOX ; 
 int LOG_SLI ; 
 int /*<<< orphan*/  LPFC_LINK_UNKNOWN ; 
 int /*<<< orphan*/  LPFC_SLI_ACTIVE ; 
 int /*<<< orphan*/  WORKER_MBOX_TMO ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,struct lpfc_sli_ring*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct lpfc_hba *phba)
{
	LPFC_MBOXQ_t *pmbox = phba->sli.mbox_active;
	MAILBOX_t *mb = &pmbox->u.mb;
	struct lpfc_sli *psli = &phba->sli;
	struct lpfc_sli_ring *pring;

	/* Check the pmbox pointer first.  There is a race condition
	 * between the mbox timeout handler getting executed in the
	 * worklist and the mailbox actually completing. When this
	 * race condition occurs, the mbox_active will be NULL.
	 */
	FUNC3(&phba->hbalock);
	if (pmbox == NULL) {
		FUNC0(phba, KERN_WARNING,
				LOG_MBOX | LOG_SLI,
				"0353 Active Mailbox cleared - mailbox timeout "
				"exiting\n");
		FUNC4(&phba->hbalock);
		return;
	}

	/* Mbox cmd <mbxCommand> timeout */
	FUNC0(phba, KERN_ERR, LOG_MBOX | LOG_SLI,
			"0310 Mailbox command x%x timeout Data: x%x x%x x%p\n",
			mb->mbxCommand,
			phba->pport->port_state,
			phba->sli.sli_flag,
			phba->sli.mbox_active);
	FUNC4(&phba->hbalock);

	/* Setting state unknown so lpfc_sli_abort_iocb_ring
	 * would get IOCB_ERROR from lpfc_sli_issue_iocb, allowing
	 * it to fail all outstanding SCSI IO.
	 */
	FUNC3(&phba->pport->work_port_lock);
	phba->pport->work_port_events &= ~WORKER_MBOX_TMO;
	FUNC4(&phba->pport->work_port_lock);
	FUNC3(&phba->hbalock);
	phba->link_state = LPFC_LINK_UNKNOWN;
	psli->sli_flag &= ~LPFC_SLI_ACTIVE;
	FUNC4(&phba->hbalock);

	pring = &psli->ring[psli->fcp_ring];
	FUNC2(phba, pring);

	FUNC0(phba, KERN_ERR, LOG_MBOX | LOG_SLI,
			"0345 Resetting board due to mailbox timeout\n");

	/* Reset the HBA device */
	FUNC1(phba);
}