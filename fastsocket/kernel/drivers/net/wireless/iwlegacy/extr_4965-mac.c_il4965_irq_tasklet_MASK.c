#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {int /*<<< orphan*/  unhandled; int /*<<< orphan*/  tx; int /*<<< orphan*/  rx; int /*<<< orphan*/  wakeup; int /*<<< orphan*/  sw; int /*<<< orphan*/  ctkill; int /*<<< orphan*/  rfkill; int /*<<< orphan*/  alive; int /*<<< orphan*/  sch; int /*<<< orphan*/  hw; } ;
struct TYPE_5__ {int max_txq_num; } ;
struct il_priv {int ucode_write_complete; int inta_mask; int /*<<< orphan*/  status; TYPE_3__ isr_stats; int /*<<< orphan*/  wait_command_queue; int /*<<< orphan*/ * txq; TYPE_2__ hw_params; int /*<<< orphan*/  rxq; TYPE_1__* hw; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int CSR49_FH_INT_RX_MASK ; 
 int CSR49_FH_INT_TX_MASK ; 
 int /*<<< orphan*/  CSR_FH_INT_STATUS ; 
 int /*<<< orphan*/  CSR_GP_CNTRL ; 
 int CSR_GP_CNTRL_REG_FLAG_HW_RF_KILL_SW ; 
 int /*<<< orphan*/  CSR_INT ; 
 int CSR_INT_BIT_ALIVE ; 
 int CSR_INT_BIT_CT_KILL ; 
 int CSR_INT_BIT_FH_RX ; 
 int CSR_INT_BIT_FH_TX ; 
 int CSR_INT_BIT_HW_ERR ; 
 int CSR_INT_BIT_RF_KILL ; 
 int CSR_INT_BIT_SCD ; 
 int CSR_INT_BIT_SW_ERR ; 
 int CSR_INT_BIT_SW_RX ; 
 int CSR_INT_BIT_WAKEUP ; 
 int /*<<< orphan*/  CSR_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int IL_DL_ISR ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  S_INT_ENABLED ; 
 int /*<<< orphan*/  S_RFKILL ; 
 int FUNC3 (struct il_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct il_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct il_priv*,int) ; 
 int FUNC11 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC12 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC13 (struct il_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct il_priv*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC21(struct il_priv *il)
{
	u32 inta, handled = 0;
	u32 inta_fh;
	unsigned long flags;
	u32 i;
#ifdef CONFIG_IWLEGACY_DEBUG
	u32 inta_mask;
#endif

	FUNC16(&il->lock, flags);

	/* Ack/clear/reset pending uCode interrupts.
	 * Note:  Some bits in CSR_INT are "OR" of bits in CSR_FH_INT_STATUS,
	 *  and will clear only when CSR_FH_INT_STATUS gets cleared. */
	inta = FUNC3(il, CSR_INT);
	FUNC4(il, CSR_INT, inta);

	/* Ack/clear/reset pending flow-handler (DMA) interrupts.
	 * Any new interrupts that happen after this, either while we're
	 * in this tasklet, or later, will show up in next ISR/tasklet. */
	inta_fh = FUNC3(il, CSR_FH_INT_STATUS);
	FUNC4(il, CSR_FH_INT_STATUS, inta_fh);

#ifdef CONFIG_IWLEGACY_DEBUG
	if (il_get_debug_level(il) & IL_DL_ISR) {
		/* just for debug */
		inta_mask = _il_rd(il, CSR_INT_MASK);
		D_ISR("inta 0x%08x, enabled 0x%08x, fh 0x%08x\n", inta,
		      inta_mask, inta_fh);
	}
#endif

	FUNC17(&il->lock, flags);

	/* Since CSR_INT and CSR_FH_INT_STATUS reads and clears are not
	 * atomic, make sure that inta covers all the interrupts that
	 * we've discovered, even if FH interrupt came in just after
	 * reading CSR_INT. */
	if (inta_fh & CSR49_FH_INT_RX_MASK)
		inta |= CSR_INT_BIT_FH_RX;
	if (inta_fh & CSR49_FH_INT_TX_MASK)
		inta |= CSR_INT_BIT_FH_TX;

	/* Now service all interrupt bits discovered above. */
	if (inta & CSR_INT_BIT_HW_ERR) {
		FUNC1("Hardware error detected.  Restarting.\n");

		/* Tell the device to stop sending interrupts */
		FUNC7(il);

		il->isr_stats.hw++;
		FUNC12(il);

		handled |= CSR_INT_BIT_HW_ERR;

		return;
	}
#ifdef CONFIG_IWLEGACY_DEBUG
	if (il_get_debug_level(il) & (IL_DL_ISR)) {
		/* NIC fires this, but we don't use it, redundant with WAKEUP */
		if (inta & CSR_INT_BIT_SCD) {
			D_ISR("Scheduler finished to transmit "
			      "the frame/frames.\n");
			il->isr_stats.sch++;
		}

		/* Alive notification via Rx interrupt will do the real work */
		if (inta & CSR_INT_BIT_ALIVE) {
			D_ISR("Alive interrupt\n");
			il->isr_stats.alive++;
		}
	}
#endif
	/* Safely ignore these bits for debug checks below */
	inta &= ~(CSR_INT_BIT_SCD | CSR_INT_BIT_ALIVE);

	/* HW RF KILL switch toggled */
	if (inta & CSR_INT_BIT_RF_KILL) {
		int hw_rf_kill = 0;

		if (!(FUNC3(il, CSR_GP_CNTRL) & CSR_GP_CNTRL_REG_FLAG_HW_RF_KILL_SW))
			hw_rf_kill = 1;

		FUNC2("RF_KILL bit toggled to %s.\n",
			hw_rf_kill ? "disable radio" : "enable radio");

		il->isr_stats.rfkill++;

		/* driver only loads ucode once setting the interface up.
		 * the driver allows loading the ucode even if the radio
		 * is killed. Hence update the killswitch state here. The
		 * rfkill handler will care about restarting if needed.
		 */
		if (hw_rf_kill) {
			FUNC15(S_RFKILL, &il->status);
		} else {
			FUNC5(S_RFKILL, &il->status);
			FUNC10(il, true);
		}
		FUNC20(il->hw->wiphy, hw_rf_kill);

		handled |= CSR_INT_BIT_RF_KILL;
	}

	/* Chip got too hot and stopped itself */
	if (inta & CSR_INT_BIT_CT_KILL) {
		FUNC1("Microcode CT kill error detected.\n");
		il->isr_stats.ctkill++;
		handled |= CSR_INT_BIT_CT_KILL;
	}

	/* Error detected by uCode */
	if (inta & CSR_INT_BIT_SW_ERR) {
		FUNC1("Microcode SW error detected. " " Restarting 0x%X.\n",
		       inta);
		il->isr_stats.sw++;
		FUNC12(il);
		handled |= CSR_INT_BIT_SW_ERR;
	}

	/*
	 * uCode wakes up after power-down sleep.
	 * Tell device about any new tx or host commands enqueued,
	 * and about any Rx buffers made available while asleep.
	 */
	if (inta & CSR_INT_BIT_WAKEUP) {
		FUNC0("Wakeup interrupt\n");
		FUNC13(il, &il->rxq);
		for (i = 0; i < il->hw_params.max_txq_num; i++)
			FUNC14(il, &il->txq[i]);
		il->isr_stats.wakeup++;
		handled |= CSR_INT_BIT_WAKEUP;
	}

	/* All uCode command responses, including Tx command responses,
	 * Rx "responses" (frame-received notification), and other
	 * notifications from uCode come through here*/
	if (inta & (CSR_INT_BIT_FH_RX | CSR_INT_BIT_SW_RX)) {
		FUNC6(il);
		il->isr_stats.rx++;
		handled |= (CSR_INT_BIT_FH_RX | CSR_INT_BIT_SW_RX);
	}

	/* This "Tx" DMA channel is used only for loading uCode */
	if (inta & CSR_INT_BIT_FH_TX) {
		FUNC0("uCode load interrupt\n");
		il->isr_stats.tx++;
		handled |= CSR_INT_BIT_FH_TX;
		/* Wake up uCode load routine, now that load is complete */
		il->ucode_write_complete = 1;
		FUNC19(&il->wait_command_queue);
	}

	if (inta & ~handled) {
		FUNC1("Unhandled INTA bits 0x%08x\n", inta & ~handled);
		il->isr_stats.unhandled++;
	}

	if (inta & ~(il->inta_mask)) {
		FUNC2("Disabled INTA bits 0x%08x were pending\n",
			inta & ~il->inta_mask);
		FUNC2("   with FH49_INT = 0x%08x\n", inta_fh);
	}

	/* Re-enable all interrupts */
	/* only Re-enable if disabled by irq */
	if (FUNC18(S_INT_ENABLED, &il->status))
		FUNC8(il);
	/* Re-enable RF_KILL if it occurred */
	else if (handled & CSR_INT_BIT_RF_KILL)
		FUNC9(il);

#ifdef CONFIG_IWLEGACY_DEBUG
	if (il_get_debug_level(il) & (IL_DL_ISR)) {
		inta = _il_rd(il, CSR_INT);
		inta_mask = _il_rd(il, CSR_INT_MASK);
		inta_fh = _il_rd(il, CSR_FH_INT_STATUS);
		D_ISR("End inta 0x%08x, enabled 0x%08x, fh 0x%08x, "
		      "flags 0x%08lx\n", inta, inta_mask, inta_fh, flags);
	}
#endif
}