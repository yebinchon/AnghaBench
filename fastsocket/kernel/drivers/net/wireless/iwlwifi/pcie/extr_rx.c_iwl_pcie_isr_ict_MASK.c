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
struct iwl_trans_pcie {size_t ict_index; int inta_mask; int inta; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  status; scalar_t__* ict_tbl; int /*<<< orphan*/  use_ict; } ;
struct iwl_trans {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_INT_MASK ; 
 int /*<<< orphan*/  ICT_COUNT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,...) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  STATUS_INT_ENABLED ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC3 (int,void*) ; 
 size_t FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 

irqreturn_t FUNC15(int irq, void *data)
{
	struct iwl_trans *trans = data;
	struct iwl_trans_pcie *trans_pcie;
	u32 inta, inta_mask;
	u32 val = 0;
	u32 read;
	unsigned long flags;

	if (!trans)
		return IRQ_NONE;

	trans_pcie = FUNC1(trans);

	FUNC9(&trans_pcie->irq_lock, flags);

	/* dram interrupt table not set yet,
	 * use legacy interrupt.
	 */
	if (FUNC14(!trans_pcie->use_ict)) {
		irqreturn_t ret = FUNC3(irq, data);
		FUNC10(&trans_pcie->irq_lock, flags);
		return ret;
	}

	FUNC13(trans->dev);

	/* Disable (but don't clear!) interrupts here to avoid
	 * back-to-back ISRs and sporadic interrupts from our NIC.
	 * If we have something to service, the tasklet will re-enable ints.
	 * If we *don't* have something, we'll re-enable before leaving here.
	 */
	inta_mask = FUNC5(trans, CSR_INT_MASK);
	FUNC6(trans, CSR_INT_MASK, 0x00000000);

	/* Ignore interrupt if there's nothing in NIC to service.
	 * This may be due to IRQ shared with another device,
	 * or due to sporadic interrupts thrown from our NIC. */
	read = FUNC7(trans_pcie->ict_tbl[trans_pcie->ict_index]);
	FUNC12(trans->dev, trans_pcie->ict_index, read);
	if (!read) {
		FUNC0(trans, "Ignore interrupt, inta == 0\n");
		goto none;
	}

	/*
	 * Collect all entries up to the first 0, starting from ict_index;
	 * note we already read at ict_index.
	 */
	do {
		val |= read;
		FUNC0(trans, "ICT index %d value 0x%08X\n",
				trans_pcie->ict_index, read);
		trans_pcie->ict_tbl[trans_pcie->ict_index] = 0;
		trans_pcie->ict_index =
			FUNC4(trans_pcie->ict_index, ICT_COUNT);

		read = FUNC7(trans_pcie->ict_tbl[trans_pcie->ict_index]);
		FUNC12(trans->dev, trans_pcie->ict_index,
					   read);
	} while (read);

	/* We should not get this value, just ignore it. */
	if (val == 0xffffffff)
		val = 0;

	/*
	 * this is a w/a for a h/w bug. the h/w bug may cause the Rx bit
	 * (bit 15 before shifting it to 31) to clear when using interrupt
	 * coalescing. fortunately, bits 18 and 19 stay set when this happens
	 * so we use them to decide on the real state of the Rx bit.
	 * In order words, bit 15 is set if bit 18 or bit 19 are set.
	 */
	if (val & 0xC0000)
		val |= 0x8000;

	inta = (0xff & val) | ((0xff00 & val) << 16);
	FUNC0(trans, "ISR inta 0x%08x, enabled 0x%08x ict 0x%08x\n",
		      inta, inta_mask, val);

	inta &= trans_pcie->inta_mask;
	trans_pcie->inta |= inta;

	/* iwl_pcie_tasklet() will service interrupts and re-enable them */
	if (FUNC8(inta)) {
		FUNC10(&trans_pcie->irq_lock, flags);
		return IRQ_WAKE_THREAD;
	} else if (FUNC11(STATUS_INT_ENABLED, &trans_pcie->status) &&
		 !trans_pcie->inta) {
		/* Allow interrupt if was disabled by this handler and
		 * no tasklet was schedules, We should not enable interrupt,
		 * tasklet will enable it.
		 */
		FUNC2(trans);
	}

	FUNC10(&trans_pcie->irq_lock, flags);
	return IRQ_HANDLED;

 none:
	/* re-enable interrupts here since we don't have anything to service.
	 * only Re-enable if disabled by irq.
	 */
	if (FUNC11(STATUS_INT_ENABLED, &trans_pcie->status) &&
	    !trans_pcie->inta)
		FUNC2(trans);

	FUNC10(&trans_pcie->irq_lock, flags);
	return IRQ_NONE;
}