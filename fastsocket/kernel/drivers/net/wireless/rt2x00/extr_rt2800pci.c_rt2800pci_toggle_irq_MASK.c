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
typedef  scalar_t__ u32 ;
struct rt2x00_dev {int /*<<< orphan*/  pretbtt_tasklet; int /*<<< orphan*/  tbtt_tasklet; int /*<<< orphan*/  autowake_tasklet; int /*<<< orphan*/  rxdone_tasklet; int /*<<< orphan*/  txstatus_tasklet; int /*<<< orphan*/  irqmask_lock; } ;
typedef  enum dev_state { ____Placeholder_dev_state } dev_state ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MASK_CSR ; 
 int /*<<< orphan*/  INT_MASK_CSR_AUTO_WAKEUP ; 
 int /*<<< orphan*/  INT_MASK_CSR_PRE_TBTT ; 
 int /*<<< orphan*/  INT_MASK_CSR_RX_DONE ; 
 int /*<<< orphan*/  INT_MASK_CSR_TBTT ; 
 int /*<<< orphan*/  INT_MASK_CSR_TX_FIFO_STATUS ; 
 int /*<<< orphan*/  INT_SOURCE_CSR ; 
 int STATE_RADIO_IRQ_OFF ; 
 int STATE_RADIO_IRQ_ON ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct rt2x00_dev *rt2x00dev,
				 enum dev_state state)
{
	u32 reg;
	unsigned long flags;

	/*
	 * When interrupts are being enabled, the interrupt registers
	 * should clear the register to assure a clean state.
	 */
	if (state == STATE_RADIO_IRQ_ON) {
		FUNC1(rt2x00dev, INT_SOURCE_CSR, &reg);
		FUNC2(rt2x00dev, INT_SOURCE_CSR, reg);
	}

	FUNC3(&rt2x00dev->irqmask_lock, flags);
	reg = 0;
	if (state == STATE_RADIO_IRQ_ON) {
		FUNC0(&reg, INT_MASK_CSR_RX_DONE, 1);
		FUNC0(&reg, INT_MASK_CSR_TBTT, 1);
		FUNC0(&reg, INT_MASK_CSR_PRE_TBTT, 1);
		FUNC0(&reg, INT_MASK_CSR_TX_FIFO_STATUS, 1);
		FUNC0(&reg, INT_MASK_CSR_AUTO_WAKEUP, 1);
	}
	FUNC2(rt2x00dev, INT_MASK_CSR, reg);
	FUNC4(&rt2x00dev->irqmask_lock, flags);

	if (state == STATE_RADIO_IRQ_OFF) {
		/*
		 * Wait for possibly running tasklets to finish.
		 */
		FUNC5(&rt2x00dev->txstatus_tasklet);
		FUNC5(&rt2x00dev->rxdone_tasklet);
		FUNC5(&rt2x00dev->autowake_tasklet);
		FUNC5(&rt2x00dev->tbtt_tasklet);
		FUNC5(&rt2x00dev->pretbtt_tasklet);
	}
}