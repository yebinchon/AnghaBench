#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct lpfc_vport {int /*<<< orphan*/  vpi; } ;
struct TYPE_12__ {int /*<<< orphan*/ * varWords; } ;
struct lpfc_nodelist {scalar_t__ mbxOwner; TYPE_3__ un; scalar_t__ mbxStatus; int /*<<< orphan*/  mbxCommand; } ;
struct TYPE_10__ {scalar_t__ sli_intr; } ;
struct TYPE_14__ {int sli_flag; TYPE_6__* mbox_active; int /*<<< orphan*/  mbox_tmo; TYPE_1__ slistat; } ;
struct lpfc_hba {scalar_t__ intr_type; int link_flag; int hba_flag; int ha_copy; int work_ha_mask; int work_ha; int work_hs; int /*<<< orphan*/  hbalock; TYPE_5__ sli; TYPE_4__* pport; struct lpfc_nodelist* mbox_ext; int /*<<< orphan*/  last_completion_time; struct lpfc_nodelist* mbox; int /*<<< orphan*/  HCregaddr; int /*<<< orphan*/  work_waitq; int /*<<< orphan*/  HAregaddr; } ;
struct lpfc_dmabuf {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_11__ {struct lpfc_nodelist mb; } ;
struct TYPE_15__ {int out_ext_byte_len; int mbox_flag; struct lpfc_vport* vport; struct lpfc_nodelist* context2; struct lpfc_dmabuf* context1; scalar_t__ mbox_cmpl; TYPE_2__ u; } ;
struct TYPE_13__ {int /*<<< orphan*/  work_port_lock; int /*<<< orphan*/  work_port_events; } ;
typedef  struct lpfc_nodelist MAILBOX_t ;
typedef  TYPE_6__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int DEFER_ERATT ; 
 int HA_ERATT ; 
 int HA_LATT ; 
 int HA_MBATT ; 
 int HA_R2_CLR_MSK ; 
 int HA_RXMASK ; 
 int HBA_ERATT_HANDLED ; 
 int HC_ERINT_ENA ; 
 int HC_LAINT_ENA ; 
 int HC_MBINT_ENA ; 
 int HC_R0INT_ENA ; 
 int HC_R2INT_ENA ; 
 int HS_FFER1 ; 
 int HS_FFER2 ; 
 int HS_FFER3 ; 
 int HS_FFER4 ; 
 int HS_FFER5 ; 
 int HS_FFER6 ; 
 int HS_FFER7 ; 
 int HS_FFER8 ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int LOG_MBOX ; 
 int LOG_SLI ; 
 int /*<<< orphan*/  LPFC_DISC_TRC_MBOX_VPORT ; 
 int LPFC_ELS_RING ; 
 int LPFC_MBX_IMED_UNREG ; 
 int LPFC_PROCESS_LA ; 
 int LS_IGNORE_ERATT ; 
 int MAILBOX_CMD_SIZE ; 
 int MBX_BUSY ; 
 int MBX_NOT_FINISHED ; 
 int /*<<< orphan*/  MBX_NOWAIT ; 
 int MBX_SUCCESS ; 
 scalar_t__ MSIX ; 
 scalar_t__ OWN_HOST ; 
 int /*<<< orphan*/  WORKER_MBOX_TMO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,char*,int,int,int) ; 
 scalar_t__ FUNC3 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,TYPE_6__*) ; 
 scalar_t__ lpfc_mbx_cmpl_dflt_rpi ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*,int /*<<< orphan*/ ,int,char*,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (struct lpfc_hba*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_nodelist*,struct lpfc_nodelist*,int) ; 
 scalar_t__ FUNC9 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ) ; 

irqreturn_t
FUNC17(int irq, void *dev_id)
{
	struct lpfc_hba  *phba;
	uint32_t ha_copy, hc_copy;
	uint32_t work_ha_copy;
	unsigned long status;
	unsigned long iflag;
	uint32_t control;

	MAILBOX_t *mbox, *pmbox;
	struct lpfc_vport *vport;
	struct lpfc_nodelist *ndlp;
	struct lpfc_dmabuf *mp;
	LPFC_MBOXQ_t *pmb;
	int rc;

	/*
	 * Get the driver's phba structure from the dev_id and
	 * assume the HBA is not interrupting.
	 */
	phba = (struct lpfc_hba *)dev_id;

	if (FUNC15(!phba))
		return IRQ_NONE;

	/*
	 * Stuff needs to be attented to when this function is invoked as an
	 * individual interrupt handler in MSI-X multi-message interrupt mode
	 */
	if (phba->intr_type == MSIX) {
		/* Check device state for handling interrupt */
		if (FUNC3(phba))
			return IRQ_NONE;
		/* Need to read HA REG for slow-path events */
		FUNC13(&phba->hbalock, iflag);
		if (FUNC6(phba->HAregaddr, &ha_copy))
			goto unplug_error;
		/* If somebody is waiting to handle an eratt don't process it
		 * here. The brdkill function will do this.
		 */
		if (phba->link_flag & LS_IGNORE_ERATT)
			ha_copy &= ~HA_ERATT;
		/* Check the need for handling ERATT in interrupt handler */
		if (ha_copy & HA_ERATT) {
			if (phba->hba_flag & HBA_ERATT_HANDLED)
				/* ERATT polling has handled ERATT */
				ha_copy &= ~HA_ERATT;
			else
				/* Indicate interrupt handler handles ERATT */
				phba->hba_flag |= HBA_ERATT_HANDLED;
		}

		/*
		 * If there is deferred error attention, do not check for any
		 * interrupt.
		 */
		if (FUNC15(phba->hba_flag & DEFER_ERATT)) {
			FUNC14(&phba->hbalock, iflag);
			return IRQ_NONE;
		}

		/* Clear up only attention source related to slow-path */
		if (FUNC6(phba->HCregaddr, &hc_copy))
			goto unplug_error;

		FUNC16(hc_copy & ~(HC_MBINT_ENA | HC_R2INT_ENA |
			HC_LAINT_ENA | HC_ERINT_ENA),
			phba->HCregaddr);
		FUNC16((ha_copy & (HA_MBATT | HA_R2_CLR_MSK)),
			phba->HAregaddr);
		FUNC16(hc_copy, phba->HCregaddr);
		FUNC12(phba->HAregaddr); /* flush */
		FUNC14(&phba->hbalock, iflag);
	} else
		ha_copy = phba->ha_copy;

	work_ha_copy = ha_copy & phba->work_ha_mask;

	if (work_ha_copy) {
		if (work_ha_copy & HA_LATT) {
			if (phba->sli.sli_flag & LPFC_PROCESS_LA) {
				/*
				 * Turn off Link Attention interrupts
				 * until CLEAR_LA done
				 */
				FUNC13(&phba->hbalock, iflag);
				phba->sli.sli_flag &= ~LPFC_PROCESS_LA;
				if (FUNC6(phba->HCregaddr, &control))
					goto unplug_error;
				control &= ~HC_LAINT_ENA;
				FUNC16(control, phba->HCregaddr);
				FUNC12(phba->HCregaddr); /* flush */
				FUNC14(&phba->hbalock, iflag);
			}
			else
				work_ha_copy &= ~HA_LATT;
		}

		if (work_ha_copy & ~(HA_ERATT | HA_MBATT | HA_LATT)) {
			/*
			 * Turn off Slow Rings interrupts, LPFC_ELS_RING is
			 * the only slow ring.
			 */
			status = (work_ha_copy &
				(HA_RXMASK  << (4*LPFC_ELS_RING)));
			status >>= (4*LPFC_ELS_RING);
			if (status & HA_RXMASK) {
				FUNC13(&phba->hbalock, iflag);
				if (FUNC6(phba->HCregaddr, &control))
					goto unplug_error;

				FUNC2(phba,
				"ISR slow ring:   ctl:x%x stat:x%x isrcnt:x%x",
				control, status,
				(uint32_t)phba->sli.slistat.sli_intr);

				if (control & (HC_R0INT_ENA << LPFC_ELS_RING)) {
					FUNC2(phba,
						"ISR Disable ring:"
						"pwork:x%x hawork:x%x wait:x%x",
						phba->work_ha, work_ha_copy,
						(uint32_t)((unsigned long)
						&phba->work_waitq));

					control &=
					    ~(HC_R0INT_ENA << LPFC_ELS_RING);
					FUNC16(control, phba->HCregaddr);
					FUNC12(phba->HCregaddr); /* flush */
				}
				else {
					FUNC2(phba,
						"ISR slow ring:   pwork:"
						"x%x hawork:x%x wait:x%x",
						phba->work_ha, work_ha_copy,
						(uint32_t)((unsigned long)
						&phba->work_waitq));
				}
				FUNC14(&phba->hbalock, iflag);
			}
		}
		FUNC13(&phba->hbalock, iflag);
		if (work_ha_copy & HA_ERATT) {
			if (FUNC9(phba))
				goto unplug_error;
			/*
			 * Check if there is a deferred error condition
			 * is active
			 */
			if ((HS_FFER1 & phba->work_hs) &&
				((HS_FFER2 | HS_FFER3 | HS_FFER4 | HS_FFER5 |
				  HS_FFER6 | HS_FFER7 | HS_FFER8) &
				  phba->work_hs)) {
				phba->hba_flag |= DEFER_ERATT;
				/* Clear all interrupt enable conditions */
				FUNC16(0, phba->HCregaddr);
				FUNC12(phba->HCregaddr);
			}
		}

		if ((work_ha_copy & HA_MBATT) && (phba->sli.mbox_active)) {
			pmb = phba->sli.mbox_active;
			pmbox = &pmb->u.mb;
			mbox = phba->mbox;
			vport = pmb->vport;

			/* First check out the status word */
			FUNC8(mbox, pmbox, sizeof(uint32_t));
			if (pmbox->mbxOwner != OWN_HOST) {
				FUNC14(&phba->hbalock, iflag);
				/*
				 * Stray Mailbox Interrupt, mbxCommand <cmd>
				 * mbxStatus <status>
				 */
				FUNC5(phba, KERN_ERR, LOG_MBOX |
						LOG_SLI,
						"(%d):0304 Stray Mailbox "
						"Interrupt mbxCommand x%x "
						"mbxStatus x%x\n",
						(vport ? vport->vpi : 0),
						pmbox->mbxCommand,
						pmbox->mbxStatus);
				/* clear mailbox attention bit */
				work_ha_copy &= ~HA_MBATT;
			} else {
				phba->sli.mbox_active = NULL;
				FUNC14(&phba->hbalock, iflag);
				phba->last_completion_time = jiffies;
				FUNC0(&phba->sli.mbox_tmo);
				if (pmb->mbox_cmpl) {
					FUNC8(mbox, pmbox,
							MAILBOX_CMD_SIZE);
					if (pmb->out_ext_byte_len &&
						pmb->context2)
						FUNC8(
						phba->mbox_ext,
						pmb->context2,
						pmb->out_ext_byte_len);
				}
				if (pmb->mbox_flag & LPFC_MBX_IMED_UNREG) {
					pmb->mbox_flag &= ~LPFC_MBX_IMED_UNREG;

					FUNC1(vport,
						LPFC_DISC_TRC_MBOX_VPORT,
						"MBOX dflt rpi: : "
						"status:x%x rpi:x%x",
						(uint32_t)pmbox->mbxStatus,
						pmbox->un.varWords[0], 0);

					if (!pmbox->mbxStatus) {
						mp = (struct lpfc_dmabuf *)
							(pmb->context1);
						ndlp = (struct lpfc_nodelist *)
							pmb->context2;

						/* Reg_LOGIN of dflt RPI was
						 * successful. new lets get
						 * rid of the RPI using the
						 * same mbox buffer.
						 */
						FUNC10(phba,
							vport->vpi,
							pmbox->un.varWords[0],
							pmb);
						pmb->mbox_cmpl =
							lpfc_mbx_cmpl_dflt_rpi;
						pmb->context1 = mp;
						pmb->context2 = ndlp;
						pmb->vport = vport;
						rc = FUNC7(phba,
								pmb,
								MBX_NOWAIT);
						if (rc != MBX_BUSY)
							FUNC5(phba,
							KERN_ERR,
							LOG_MBOX | LOG_SLI,
							"0350 rc should have"
							"been MBX_BUSY\n");
						if (rc != MBX_NOT_FINISHED)
							goto send_current_mbox;
					}
				}
				FUNC13(
						&phba->pport->work_port_lock,
						iflag);
				phba->pport->work_port_events &=
					~WORKER_MBOX_TMO;
				FUNC14(
						&phba->pport->work_port_lock,
						iflag);
				FUNC4(phba, pmb);
			}
		} else
			FUNC14(&phba->hbalock, iflag);

		if ((work_ha_copy & HA_MBATT) &&
		    (phba->sli.mbox_active == NULL)) {
send_current_mbox:
			/* Process next mailbox command if there is one */
			do {
				rc = FUNC7(phba, NULL,
							 MBX_NOWAIT);
			} while (rc == MBX_NOT_FINISHED);
			if (rc != MBX_SUCCESS)
				FUNC5(phba, KERN_ERR, LOG_MBOX |
						LOG_SLI, "0349 rc should be "
						"MBX_SUCCESS\n");
		}

		FUNC13(&phba->hbalock, iflag);
		phba->work_ha |= work_ha_copy;
		FUNC14(&phba->hbalock, iflag);
		FUNC11(phba);
	}
	return IRQ_HANDLED;
unplug_error:
	FUNC14(&phba->hbalock, iflag);
	return IRQ_HANDLED;

}