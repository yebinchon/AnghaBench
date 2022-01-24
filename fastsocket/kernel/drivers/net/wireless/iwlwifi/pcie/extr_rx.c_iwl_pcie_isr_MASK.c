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
typedef  int u32 ;
struct iwl_trans_pcie {int inta; int /*<<< orphan*/  status; int /*<<< orphan*/  irq_lock; } ;
struct iwl_trans {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_FH_INT_STATUS ; 
 int /*<<< orphan*/  CSR_INT ; 
 int /*<<< orphan*/  CSR_INT_MASK ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,...) ; 
 int /*<<< orphan*/  IWL_DL_ISR ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,char*,int) ; 
 int /*<<< orphan*/  STATUS_INT_ENABLED ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *data)
{
	struct iwl_trans *trans = data;
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);
	u32 inta, inta_mask;
#ifdef CONFIG_IWLWIFI_DEBUG
	u32 inta_fh;
#endif

	FUNC8(&trans_pcie->irq_lock);

	FUNC10(trans->dev);

	/* Disable (but don't clear!) interrupts here to avoid
	 *    back-to-back ISRs and sporadic interrupts from our NIC.
	 * If we have something to service, the irq thread will re-enable ints.
	 * If we *don't* have something, we'll re-enable before leaving here. */
	inta_mask = FUNC5(trans, CSR_INT_MASK);
	FUNC6(trans, CSR_INT_MASK, 0x00000000);

	/* Discover which interrupts are active/pending */
	inta = FUNC5(trans, CSR_INT);

	if (inta & (~inta_mask)) {
		FUNC0(trans,
			      "We got a masked interrupt (0x%08x)...Ack and ignore\n",
			      inta & (~inta_mask));
		FUNC6(trans, CSR_INT, inta & (~inta_mask));
		inta &= inta_mask;
	}

	/* Ignore interrupt if there's nothing in NIC to service.
	 * This may be due to IRQ shared with another device,
	 * or due to sporadic interrupts thrown from our NIC. */
	if (!inta) {
		FUNC0(trans, "Ignore interrupt, inta == 0\n");
		goto none;
	}

	if ((inta == 0xFFFFFFFF) || ((inta & 0xFFFFFFF0) == 0xa5a5a5a0)) {
		/* Hardware disappeared. It might have already raised
		 * an interrupt */
		FUNC2(trans, "HARDWARE GONE?? INTA == 0x%08x\n", inta);
		return IRQ_HANDLED;
	}

#ifdef CONFIG_IWLWIFI_DEBUG
	if (iwl_have_debug_level(IWL_DL_ISR)) {
		inta_fh = iwl_read32(trans, CSR_FH_INT_STATUS);
		IWL_DEBUG_ISR(trans, "ISR inta 0x%08x, enabled 0x%08x, "
			      "fh 0x%08x\n", inta, inta_mask, inta_fh);
	}
#endif

	trans_pcie->inta |= inta;
	/* the thread will service interrupts and re-enable them */
	if (FUNC7(inta))
		return IRQ_WAKE_THREAD;
	else if (FUNC9(STATUS_INT_ENABLED, &trans_pcie->status) &&
		 !trans_pcie->inta)
		FUNC3(trans);
	return IRQ_HANDLED;

none:
	/* re-enable interrupts here since we don't have anything to service. */
	/* only Re-enable if disabled by irq  and no schedules tasklet. */
	if (FUNC9(STATUS_INT_ENABLED, &trans_pcie->status) &&
	    !trans_pcie->inta)
		FUNC3(trans);

	return IRQ_NONE;
}