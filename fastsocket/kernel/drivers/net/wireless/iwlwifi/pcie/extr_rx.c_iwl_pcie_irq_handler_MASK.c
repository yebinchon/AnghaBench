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
typedef  int u32 ;
struct isr_statistics {int /*<<< orphan*/  unhandled; int /*<<< orphan*/  tx; int /*<<< orphan*/  rx; int /*<<< orphan*/  wakeup; int /*<<< orphan*/  sw; int /*<<< orphan*/  ctkill; int /*<<< orphan*/  rfkill; int /*<<< orphan*/  alive; int /*<<< orphan*/  sch; int /*<<< orphan*/  hw; } ;
struct iwl_trans_pcie {int inta; int inta_mask; int ucode_write_complete; int /*<<< orphan*/  status; int /*<<< orphan*/  ucode_write_waitq; int /*<<< orphan*/ * txq; int /*<<< orphan*/  rxq; int /*<<< orphan*/  wait_command_queue; int /*<<< orphan*/  irq_lock; struct isr_statistics isr_stats; } ;
struct iwl_trans {int /*<<< orphan*/  sync_cmd_lockdep_map; TYPE_2__* cfg; int /*<<< orphan*/  op_mode; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {TYPE_1__* base_params; } ;
struct TYPE_3__ {int num_of_queues; } ;

/* Variables and functions */
 int CSR_FH_INT_RX_MASK ; 
 int /*<<< orphan*/  CSR_FH_INT_STATUS ; 
 int CSR_FH_INT_TX_MASK ; 
 int /*<<< orphan*/  CSR_INT ; 
 int CSR_INT_BIT_ALIVE ; 
 int CSR_INT_BIT_CT_KILL ; 
 int CSR_INT_BIT_FH_RX ; 
 int CSR_INT_BIT_FH_TX ; 
 int CSR_INT_BIT_HW_ERR ; 
 int CSR_INT_BIT_RF_KILL ; 
 int CSR_INT_BIT_RX_PERIODIC ; 
 int CSR_INT_BIT_SCD ; 
 int CSR_INT_BIT_SW_ERR ; 
 int CSR_INT_BIT_SW_RX ; 
 int CSR_INT_BIT_WAKEUP ; 
 int /*<<< orphan*/  CSR_INT_MASK ; 
 int /*<<< orphan*/  CSR_INT_PERIODIC_DIS ; 
 int /*<<< orphan*/  CSR_INT_PERIODIC_ENA ; 
 int /*<<< orphan*/  CSR_INT_PERIODIC_REG ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*) ; 
 int /*<<< orphan*/  IWL_DL_ISR ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,char*,...) ; 
 struct iwl_trans_pcie* FUNC3 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*,char*,...) ; 
 int /*<<< orphan*/  STATUS_HCMD_ACTIVE ; 
 int /*<<< orphan*/  STATUS_INT_ENABLED ; 
 int /*<<< orphan*/  STATUS_RFKILL ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_trans*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC13 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC14 (struct iwl_trans*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct iwl_trans*,int /*<<< orphan*/ *) ; 
 int FUNC16 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 

irqreturn_t FUNC27(int irq, void *dev_id)
{
	struct iwl_trans *trans = dev_id;
	struct iwl_trans_pcie *trans_pcie = FUNC3(trans);
	struct isr_statistics *isr_stats = &trans_pcie->isr_stats;
	u32 inta = 0;
	u32 handled = 0;
	unsigned long flags;
	u32 i;
#ifdef CONFIG_IWLWIFI_DEBUG
	u32 inta_mask;
#endif

	FUNC19(&trans->sync_cmd_lockdep_map);

	FUNC22(&trans_pcie->irq_lock, flags);

	/* Ack/clear/reset pending uCode interrupts.
	 * Note:  Some bits in CSR_INT are "OR" of bits in CSR_FH_INT_STATUS,
	 */
	/* There is a hardware bug in the interrupt mask function that some
	 * interrupts (i.e. CSR_INT_BIT_SCD) can still be generated even if
	 * they are disabled in the CSR_INT_MASK register. Furthermore the
	 * ICT interrupt handling mechanism has another bug that might cause
	 * these unmasked interrupts fail to be detected. We workaround the
	 * hardware bugs here by ACKing all the possible interrupts so that
	 * interrupt coalescing can still be achieved.
	 */
	FUNC17(trans, CSR_INT,
		    trans_pcie->inta | ~trans_pcie->inta_mask);

	inta = trans_pcie->inta;

#ifdef CONFIG_IWLWIFI_DEBUG
	if (iwl_have_debug_level(IWL_DL_ISR)) {
		/* just for debug */
		inta_mask = iwl_read32(trans, CSR_INT_MASK);
		IWL_DEBUG_ISR(trans, "inta 0x%08x, enabled 0x%08x\n",
			      inta, inta_mask);
	}
#endif

	/* saved interrupt in inta variable now we can reset trans_pcie->inta */
	trans_pcie->inta = 0;

	FUNC23(&trans_pcie->irq_lock, flags);

	/* Now service all interrupt bits discovered above. */
	if (inta & CSR_INT_BIT_HW_ERR) {
		FUNC2(trans, "Hardware error detected.  Restarting.\n");

		/* Tell the device to stop sending interrupts */
		FUNC6(trans);

		isr_stats->hw++;
		FUNC12(trans);

		handled |= CSR_INT_BIT_HW_ERR;

		goto out;
	}

#ifdef CONFIG_IWLWIFI_DEBUG
	if (iwl_have_debug_level(IWL_DL_ISR)) {
		/* NIC fires this, but we don't use it, redundant with WAKEUP */
		if (inta & CSR_INT_BIT_SCD) {
			IWL_DEBUG_ISR(trans, "Scheduler finished to transmit "
				      "the frame/frames.\n");
			isr_stats->sch++;
		}

		/* Alive notification via Rx interrupt will do the real work */
		if (inta & CSR_INT_BIT_ALIVE) {
			IWL_DEBUG_ISR(trans, "Alive interrupt\n");
			isr_stats->alive++;
		}
	}
#endif
	/* Safely ignore these bits for debug checks below */
	inta &= ~(CSR_INT_BIT_SCD | CSR_INT_BIT_ALIVE);

	/* HW RF KILL switch toggled */
	if (inta & CSR_INT_BIT_RF_KILL) {
		bool hw_rfkill;

		hw_rfkill = FUNC10(trans);
		FUNC4(trans, "RF_KILL bit toggled to %s.\n",
			 hw_rfkill ? "disable radio" : "enable radio");

		isr_stats->rfkill++;

		FUNC11(trans->op_mode, hw_rfkill);
		if (hw_rfkill) {
			FUNC21(STATUS_RFKILL, &trans_pcie->status);
			if (FUNC24(STATUS_HCMD_ACTIVE,
					       &trans_pcie->status))
				FUNC1(trans,
						  "Rfkill while SYNC HCMD in flight\n");
			FUNC26(&trans_pcie->wait_command_queue);
		} else {
			FUNC5(STATUS_RFKILL, &trans_pcie->status);
		}

		handled |= CSR_INT_BIT_RF_KILL;
	}

	/* Chip got too hot and stopped itself */
	if (inta & CSR_INT_BIT_CT_KILL) {
		FUNC2(trans, "Microcode CT kill error detected.\n");
		isr_stats->ctkill++;
		handled |= CSR_INT_BIT_CT_KILL;
	}

	/* Error detected by uCode */
	if (inta & CSR_INT_BIT_SW_ERR) {
		FUNC2(trans, "Microcode SW error detected. "
			" Restarting 0x%X.\n", inta);
		isr_stats->sw++;
		FUNC12(trans);
		handled |= CSR_INT_BIT_SW_ERR;
	}

	/* uCode wakes up after power-down sleep */
	if (inta & CSR_INT_BIT_WAKEUP) {
		FUNC0(trans, "Wakeup interrupt\n");
		FUNC14(trans, &trans_pcie->rxq);
		for (i = 0; i < trans->cfg->base_params->num_of_queues; i++)
			FUNC15(trans, &trans_pcie->txq[i]);

		isr_stats->wakeup++;

		handled |= CSR_INT_BIT_WAKEUP;
	}

	/* All uCode command responses, including Tx command responses,
	 * Rx "responses" (frame-received notification), and other
	 * notifications from uCode come through here*/
	if (inta & (CSR_INT_BIT_FH_RX | CSR_INT_BIT_SW_RX |
		    CSR_INT_BIT_RX_PERIODIC)) {
		FUNC0(trans, "Rx interrupt\n");
		if (inta & (CSR_INT_BIT_FH_RX | CSR_INT_BIT_SW_RX)) {
			handled |= (CSR_INT_BIT_FH_RX | CSR_INT_BIT_SW_RX);
			FUNC17(trans, CSR_FH_INT_STATUS,
					CSR_FH_INT_RX_MASK);
		}
		if (inta & CSR_INT_BIT_RX_PERIODIC) {
			handled |= CSR_INT_BIT_RX_PERIODIC;
			FUNC17(trans,
				CSR_INT, CSR_INT_BIT_RX_PERIODIC);
		}
		/* Sending RX interrupt require many steps to be done in the
		 * the device:
		 * 1- write interrupt to current index in ICT table.
		 * 2- dma RX frame.
		 * 3- update RX shared data to indicate last write index.
		 * 4- send interrupt.
		 * This could lead to RX race, driver could receive RX interrupt
		 * but the shared data changes does not reflect this;
		 * periodic interrupt will detect any dangling Rx activity.
		 */

		/* Disable periodic interrupt; we use it as just a one-shot. */
		FUNC18(trans, CSR_INT_PERIODIC_REG,
			    CSR_INT_PERIODIC_DIS);

		FUNC13(trans);

		/*
		 * Enable periodic interrupt in 8 msec only if we received
		 * real RX interrupt (instead of just periodic int), to catch
		 * any dangling Rx interrupt.  If it was just the periodic
		 * interrupt, there was no dangling Rx activity, and no need
		 * to extend the periodic interrupt; one-shot is enough.
		 */
		if (inta & (CSR_INT_BIT_FH_RX | CSR_INT_BIT_SW_RX))
			FUNC18(trans, CSR_INT_PERIODIC_REG,
				   CSR_INT_PERIODIC_ENA);

		isr_stats->rx++;
	}

	/* This "Tx" DMA channel is used only for loading uCode */
	if (inta & CSR_INT_BIT_FH_TX) {
		FUNC17(trans, CSR_FH_INT_STATUS, CSR_FH_INT_TX_MASK);
		FUNC0(trans, "uCode load interrupt\n");
		isr_stats->tx++;
		handled |= CSR_INT_BIT_FH_TX;
		/* Wake up uCode load routine, now that load is complete */
		trans_pcie->ucode_write_complete = true;
		FUNC26(&trans_pcie->ucode_write_waitq);
	}

	if (inta & ~handled) {
		FUNC2(trans, "Unhandled INTA bits 0x%08x\n", inta & ~handled);
		isr_stats->unhandled++;
	}

	if (inta & ~(trans_pcie->inta_mask)) {
		FUNC4(trans, "Disabled INTA bits 0x%08x were pending\n",
			 inta & ~trans_pcie->inta_mask);
	}

	/* Re-enable all interrupts */
	/* only Re-enable if disabled by irq */
	if (FUNC25(STATUS_INT_ENABLED, &trans_pcie->status))
		FUNC7(trans);
	/* Re-enable RF_KILL if it occurred */
	else if (handled & CSR_INT_BIT_RF_KILL)
		FUNC8(trans);

out:
	FUNC20(&trans->sync_cmd_lockdep_map);
	return IRQ_HANDLED;
}