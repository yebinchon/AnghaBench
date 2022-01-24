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
struct TYPE_2__ {int /*<<< orphan*/ * fcp_eq_hdl; } ;
struct lpfc_hba {int cfg_fcp_io_channel; TYPE_1__ sli4_hba; } ;
typedef  scalar_t__ irqreturn_t ;

/* Variables and functions */
 scalar_t__ IRQ_HANDLED ; 
 scalar_t__ IRQ_NONE ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 

irqreturn_t
FUNC2(int irq, void *dev_id)
{
	struct lpfc_hba  *phba;
	irqreturn_t hba_irq_rc;
	bool hba_handled = false;
	int fcp_eqidx;

	/* Get the driver's phba structure from the dev_id */
	phba = (struct lpfc_hba *)dev_id;

	if (FUNC1(!phba))
		return IRQ_NONE;

	/*
	 * Invoke fast-path host attention interrupt handling as appropriate.
	 */
	for (fcp_eqidx = 0; fcp_eqidx < phba->cfg_fcp_io_channel; fcp_eqidx++) {
		hba_irq_rc = FUNC0(irq,
					&phba->sli4_hba.fcp_eq_hdl[fcp_eqidx]);
		if (hba_irq_rc == IRQ_HANDLED)
			hba_handled |= true;
	}

	return (hba_handled == true) ? IRQ_HANDLED : IRQ_NONE;
}