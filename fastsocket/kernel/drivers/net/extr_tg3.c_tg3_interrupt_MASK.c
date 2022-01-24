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
struct tg3_napi {size_t rx_rcb_ptr; int /*<<< orphan*/  napi; int /*<<< orphan*/ * rx_rcb; struct tg3_hw_status* hw_status; struct tg3* tp; } ;
struct tg3_hw_status {int status; } ;
struct tg3 {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHIP_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ MAILBOX_INTERRUPT_0 ; 
 int PCISTATE_INT_NOT_ACTIVE ; 
 int SD_STATUS_UPDATED ; 
 int /*<<< orphan*/  TG3PCI_PCISTATE ; 
 scalar_t__ TG3_64BIT_REG_LOW ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct tg3_napi*) ; 
 scalar_t__ FUNC6 (struct tg3*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dev_id)
{
	struct tg3_napi *tnapi = dev_id;
	struct tg3 *tp = tnapi->tp;
	struct tg3_hw_status *sblk = tnapi->hw_status;
	unsigned int handled = 1;

	/* In INTx mode, it is possible for the interrupt to arrive at
	 * the CPU before the status block posted prior to the interrupt.
	 * Reading the PCI State register will confirm whether the
	 * interrupt is ours and will flush the status block.
	 */
	if (FUNC9(!(sblk->status & SD_STATUS_UPDATED))) {
		if (FUNC4(tp, CHIP_RESETTING) ||
		    (FUNC7(TG3PCI_PCISTATE) & PCISTATE_INT_NOT_ACTIVE)) {
			handled = 0;
			goto out;
		}
	}

	/*
	 * Writing any value to intr-mbox-0 clears PCI INTA# and
	 * chip-internal interrupt pending events.
	 * Writing non-zero to intr-mbox-0 additional tells the
	 * NIC to stop sending us irqs, engaging "in-intr-handler"
	 * event coalescing.
	 *
	 * Flush the mailbox to de-assert the IRQ immediately to prevent
	 * spurious interrupts.  The flush impacts performance but
	 * excessive spurious interrupts can be worse in some cases.
	 */
	FUNC8(MAILBOX_INTERRUPT_0 + TG3_64BIT_REG_LOW, 0x00000001);
	if (FUNC6(tp))
		goto out;
	sblk->status &= ~SD_STATUS_UPDATED;
	if (FUNC1(FUNC5(tnapi))) {
		FUNC3(&tnapi->rx_rcb[tnapi->rx_rcb_ptr]);
		FUNC2(&tnapi->napi);
	} else {
		/* No work, shared interrupt perhaps?  re-enable
		 * interrupts, and flush that PCI write
		 */
		FUNC8(MAILBOX_INTERRUPT_0 + TG3_64BIT_REG_LOW,
			       0x00000000);
	}
out:
	return FUNC0(handled);
}