#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct lpfc_vport {int work_port_events; int /*<<< orphan*/  work_port_lock; } ;
struct lpfc_sli_ring {int flag; int /*<<< orphan*/  txq; } ;
struct TYPE_4__ {struct lpfc_sli_ring* ring; } ;
struct TYPE_3__ {int fcf_flag; } ;
struct lpfc_hba {int work_ha; scalar_t__ pci_dev_grp; int hba_flag; int max_vports; scalar_t__ link_state; scalar_t__ sli_rev; int /*<<< orphan*/  hbalock; int /*<<< orphan*/  HCregaddr; int /*<<< orphan*/  data_flags; TYPE_2__ sli; struct lpfc_vport* pport; TYPE_1__ fcf; } ;

/* Variables and functions */
 int ASYNC_EVENT ; 
 int ELS_XRI_ABORT_EVENT ; 
 int FCF_REDISC_EVT ; 
 int FCP_XRI_ABORT_EVENT ; 
 int HA_ERATT ; 
 int HA_LATT ; 
 int HA_MBATT ; 
 int HA_RXMASK ; 
 int HBA_POST_RECEIVE_BUFFER ; 
 int HBA_RRQ_ACTIVE ; 
 int HBA_SP_QUEUE_EVT ; 
 size_t HC_R0INT_ENA ; 
 int /*<<< orphan*/  LPFC_DATA_READY ; 
 int LPFC_DEFERRED_RING_EVENT ; 
 int /*<<< orphan*/  LPFC_ELS_HBQ ; 
 size_t LPFC_ELS_RING ; 
 scalar_t__ LPFC_LINK_UP ; 
 scalar_t__ LPFC_PCI_DEV_OC ; 
 scalar_t__ LPFC_SLI_REV3 ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 int LPFC_STOP_IOCB_EVENT ; 
 int WORKER_DELAYED_DISC_TMO ; 
 int WORKER_DISC_TMO ; 
 int WORKER_ELS_TMO ; 
 int WORKER_FABRIC_BLOCK_TMO ; 
 int WORKER_FDMI_TMO ; 
 int WORKER_HB_TMO ; 
 int WORKER_MBOX_TMO ; 
 int WORKER_RAMP_DOWN_QUEUE ; 
 int WORKER_RAMP_UP_QUEUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct lpfc_vport** FUNC1 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,struct lpfc_vport**) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC9 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC11 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC12 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC13 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC14 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC15 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC16 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC17 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC18 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC19 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC20 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC21 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC22 (struct lpfc_hba*,struct lpfc_sli_ring*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct lpfc_hba*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC25 (struct lpfc_hba*) ; 
 int FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC31(struct lpfc_hba *phba)
{
	struct lpfc_sli_ring *pring;
	uint32_t ha_copy, status, control, work_port_events;
	struct lpfc_vport **vports;
	struct lpfc_vport *vport;
	int i;

	FUNC28(&phba->hbalock);
	ha_copy = phba->work_ha;
	phba->work_ha = 0;
	FUNC29(&phba->hbalock);

	/* First, try to post the next mailbox command to SLI4 device */
	if (phba->pci_dev_grp == LPFC_PCI_DEV_OC)
		FUNC20(phba);

	if (ha_copy & HA_ERATT)
		/* Handle the error attention event */
		FUNC9(phba);

	if (ha_copy & HA_MBATT)
		FUNC21(phba);

	if (ha_copy & HA_LATT)
		FUNC10(phba);

	/* Process SLI4 events */
	if (phba->pci_dev_grp == LPFC_PCI_DEV_OC) {
		if (phba->hba_flag & HBA_RRQ_ACTIVE)
			FUNC11(phba);
		if (phba->hba_flag & FCP_XRI_ABORT_EVENT)
			FUNC19(phba);
		if (phba->hba_flag & ELS_XRI_ABORT_EVENT)
			FUNC17(phba);
		if (phba->hba_flag & ASYNC_EVENT)
			FUNC16(phba);
		if (phba->hba_flag & HBA_POST_RECEIVE_BUFFER) {
			FUNC28(&phba->hbalock);
			phba->hba_flag &= ~HBA_POST_RECEIVE_BUFFER;
			FUNC29(&phba->hbalock);
			FUNC23(phba, LPFC_ELS_HBQ);
		}
		if (phba->fcf.fcf_flag & FCF_REDISC_EVT)
			FUNC18(phba);
	}

	vports = FUNC1(phba);
	if (vports != NULL)
		for (i = 0; i <= phba->max_vports; i++) {
			/*
			 * We could have no vports in array if unloading, so if
			 * this happens then just use the pport
			 */
			if (vports[i] == NULL && i == 0)
				vport = phba->pport;
			else
				vport = vports[i];
			if (vport == NULL)
				break;
			FUNC28(&vport->work_port_lock);
			work_port_events = vport->work_port_events;
			vport->work_port_events &= ~work_port_events;
			FUNC29(&vport->work_port_lock);
			if (work_port_events & WORKER_DISC_TMO)
				FUNC5(vport);
			if (work_port_events & WORKER_ELS_TMO)
				FUNC7(vport);
			if (work_port_events & WORKER_HB_TMO)
				FUNC12(phba);
			if (work_port_events & WORKER_MBOX_TMO)
				FUNC13(phba);
			if (work_port_events & WORKER_FABRIC_BLOCK_TMO)
				FUNC24(phba);
			if (work_port_events & WORKER_FDMI_TMO)
				FUNC8(vport);
			if (work_port_events & WORKER_RAMP_DOWN_QUEUE)
				FUNC14(phba);
			if (work_port_events & WORKER_RAMP_UP_QUEUE)
				FUNC15(phba);
			if (work_port_events & WORKER_DELAYED_DISC_TMO)
				FUNC3(vport);
		}
	FUNC4(phba, vports);

	pring = &phba->sli.ring[LPFC_ELS_RING];
	status = (ha_copy & (HA_RXMASK  << (4*LPFC_ELS_RING)));
	status >>= (4*LPFC_ELS_RING);
	if ((status & HA_RXMASK) ||
	    (pring->flag & LPFC_DEFERRED_RING_EVENT) ||
	    (phba->hba_flag & HBA_SP_QUEUE_EVT)) {
		if (pring->flag & LPFC_STOP_IOCB_EVENT) {
			pring->flag |= LPFC_DEFERRED_RING_EVENT;
			/* Set the lpfc data pending flag */
			FUNC27(LPFC_DATA_READY, &phba->data_flags);
		} else {
			if (phba->link_state >= LPFC_LINK_UP) {
				pring->flag &= ~LPFC_DEFERRED_RING_EVENT;
				FUNC22(phba, pring,
								(status &
								HA_RXMASK));
			}
		}
		if ((phba->sli_rev == LPFC_SLI_REV4) &
				 (!FUNC0(&pring->txq)))
			FUNC6(phba);
		/*
		 * Turn on Ring interrupts
		 */
		if (phba->sli_rev <= LPFC_SLI_REV3) {
			FUNC28(&phba->hbalock);
			control = FUNC26(phba->HCregaddr);
			if (!(control & (HC_R0INT_ENA << LPFC_ELS_RING))) {
				FUNC2(phba,
					"WRK Enable ring: cntl:x%x hacopy:x%x",
					control, ha_copy, 0);

				control |= (HC_R0INT_ENA << LPFC_ELS_RING);
				FUNC30(control, phba->HCregaddr);
				FUNC26(phba->HCregaddr); /* flush */
			} else {
				FUNC2(phba,
					"WRK Ring ok:     cntl:x%x hacopy:x%x",
					control, ha_copy, 0);
			}
			FUNC29(&phba->hbalock);
		}
	}
	FUNC25(phba);
}