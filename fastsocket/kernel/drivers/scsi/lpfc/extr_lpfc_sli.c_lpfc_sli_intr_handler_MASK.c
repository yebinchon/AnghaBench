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
typedef  int uint32_t ;
struct lpfc_hba {int ha_copy; int hba_flag; int cfg_multi_ring_support; int /*<<< orphan*/  hbalock; int /*<<< orphan*/  HAregaddr; int /*<<< orphan*/  HCregaddr; } ;
typedef  scalar_t__ irqreturn_t ;

/* Variables and functions */
 int DEFER_ERATT ; 
 int HA_ERATT ; 
 int HA_LATT ; 
 int HA_MBATT ; 
 int HA_RXMASK ; 
 int HBA_ERATT_HANDLED ; 
 int HC_ERINT_ENA ; 
 int HC_LAINT_ENA ; 
 int HC_MBINT_ENA ; 
 int HC_R0INT_ENA ; 
 int HC_R1INT_ENA ; 
 int HC_R2INT_ENA ; 
 scalar_t__ IRQ_HANDLED ; 
 scalar_t__ IRQ_NONE ; 
 int LPFC_ELS_RING ; 
 int LPFC_EXTRA_RING ; 
 int LPFC_FCP_RING ; 
 scalar_t__ FUNC0 (struct lpfc_hba*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (int,void*) ; 
 scalar_t__ FUNC3 (int,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

irqreturn_t
FUNC9(int irq, void *dev_id)
{
	struct lpfc_hba  *phba;
	irqreturn_t sp_irq_rc, fp_irq_rc;
	unsigned long status1, status2;
	uint32_t hc_copy;

	/*
	 * Get the driver's phba structure from the dev_id and
	 * assume the HBA is not interrupting.
	 */
	phba = (struct lpfc_hba *) dev_id;

	if (FUNC7(!phba))
		return IRQ_NONE;

	/* Check device state for handling interrupt */
	if (FUNC0(phba))
		return IRQ_NONE;

	FUNC5(&phba->hbalock);
	if (FUNC1(phba->HAregaddr, &phba->ha_copy)) {
		FUNC6(&phba->hbalock);
		return IRQ_HANDLED;
	}

	if (FUNC7(!phba->ha_copy)) {
		FUNC6(&phba->hbalock);
		return IRQ_NONE;
	} else if (phba->ha_copy & HA_ERATT) {
		if (phba->hba_flag & HBA_ERATT_HANDLED)
			/* ERATT polling has handled ERATT */
			phba->ha_copy &= ~HA_ERATT;
		else
			/* Indicate interrupt handler handles ERATT */
			phba->hba_flag |= HBA_ERATT_HANDLED;
	}

	/*
	 * If there is deferred error attention, do not check for any interrupt.
	 */
	if (FUNC7(phba->hba_flag & DEFER_ERATT)) {
		FUNC6(&phba->hbalock);
		return IRQ_NONE;
	}

	/* Clear attention sources except link and error attentions */
	if (FUNC1(phba->HCregaddr, &hc_copy)) {
		FUNC6(&phba->hbalock);
		return IRQ_HANDLED;
	}
	FUNC8(hc_copy & ~(HC_MBINT_ENA | HC_R0INT_ENA | HC_R1INT_ENA
		| HC_R2INT_ENA | HC_LAINT_ENA | HC_ERINT_ENA),
		phba->HCregaddr);
	FUNC8((phba->ha_copy & ~(HA_LATT | HA_ERATT)), phba->HAregaddr);
	FUNC8(hc_copy, phba->HCregaddr);
	FUNC4(phba->HAregaddr); /* flush */
	FUNC6(&phba->hbalock);

	/*
	 * Invokes slow-path host attention interrupt handling as appropriate.
	 */

	/* status of events with mailbox and link attention */
	status1 = phba->ha_copy & (HA_MBATT | HA_LATT | HA_ERATT);

	/* status of events with ELS ring */
	status2 = (phba->ha_copy & (HA_RXMASK  << (4*LPFC_ELS_RING)));
	status2 >>= (4*LPFC_ELS_RING);

	if (status1 || (status2 & HA_RXMASK))
		sp_irq_rc = FUNC3(irq, dev_id);
	else
		sp_irq_rc = IRQ_NONE;

	/*
	 * Invoke fast-path host attention interrupt handling as appropriate.
	 */

	/* status of events with FCP ring */
	status1 = (phba->ha_copy & (HA_RXMASK << (4*LPFC_FCP_RING)));
	status1 >>= (4*LPFC_FCP_RING);

	/* status of events with extra ring */
	if (phba->cfg_multi_ring_support == 2) {
		status2 = (phba->ha_copy & (HA_RXMASK << (4*LPFC_EXTRA_RING)));
		status2 >>= (4*LPFC_EXTRA_RING);
	} else
		status2 = 0;

	if ((status1 & HA_RXMASK) || (status2 & HA_RXMASK))
		fp_irq_rc = FUNC2(irq, dev_id);
	else
		fp_irq_rc = IRQ_NONE;

	/* Return device-level interrupt handling status */
	return (sp_irq_rc == IRQ_HANDLED) ? sp_irq_rc : fp_irq_rc;
}