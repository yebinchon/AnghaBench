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
struct net_device {int dummy; } ;
struct e1000_hw {int get_link_status; } ;
struct e1000_adapter {int /*<<< orphan*/  flags; int /*<<< orphan*/  napi; scalar_t__ total_rx_packets; scalar_t__ total_rx_bytes; scalar_t__ total_tx_packets; scalar_t__ total_tx_bytes; int /*<<< orphan*/  watchdog_task; struct e1000_hw hw; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int E1000_ICR_LSC ; 
 int E1000_ICR_RXSEQ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ICR ; 
 int /*<<< orphan*/  IMC ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  __E1000_DOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_adapter*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct e1000_adapter* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *data)
{
	struct net_device *netdev = data;
	struct e1000_adapter *adapter = FUNC7(netdev);
	struct e1000_hw *hw = &adapter->hw;
	u32 icr = FUNC3(ICR);

	if (FUNC10((!icr)))
		return IRQ_NONE;  /* Not our interrupt */

	/*
	 * we might have caused the interrupt, but the above
	 * read cleared it, and just in case the driver is
	 * down there is nothing to do so return handled
	 */
	if (FUNC10(FUNC9(__E1000_DOWN, &adapter->flags)))
		return IRQ_HANDLED;

	if (FUNC10(icr & (E1000_ICR_RXSEQ | E1000_ICR_LSC))) {
		hw->get_link_status = 1;
		/* guard against interrupt when we're going down */
		if (!FUNC9(__E1000_DOWN, &adapter->flags))
			FUNC8(&adapter->watchdog_task, 1);
	}

	/* disable interrupts, without the synchronize_irq bit */
	FUNC4(IMC, ~0);
	FUNC0();

	if (FUNC5(FUNC6(&adapter->napi))) {
		adapter->total_tx_bytes = 0;
		adapter->total_tx_packets = 0;
		adapter->total_rx_bytes = 0;
		adapter->total_rx_packets = 0;
		FUNC1(&adapter->napi);
	} else {
		/* this really should not happen! if it does it is basically a
		 * bug, but not a hard error, so enable ints and continue */
		if (!FUNC9(__E1000_DOWN, &adapter->flags))
			FUNC2(adapter);
	}

	return IRQ_HANDLED;
}