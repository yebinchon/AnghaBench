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
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {int /*<<< orphan*/  tbtt_tasklet; int /*<<< orphan*/  autowake_tasklet; int /*<<< orphan*/  rxdone_tasklet; int /*<<< orphan*/  txstatus_tasklet; int /*<<< orphan*/  irqmask_lock; } ;
typedef  enum dev_state { ____Placeholder_dev_state } dev_state ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MASK_CSR ; 
 int /*<<< orphan*/  INT_MASK_CSR_BEACON_DONE ; 
 int /*<<< orphan*/  INT_MASK_CSR_ENABLE_MITIGATION ; 
 int /*<<< orphan*/  INT_MASK_CSR_MITIGATION_PERIOD ; 
 int /*<<< orphan*/  INT_MASK_CSR_RXDONE ; 
 int /*<<< orphan*/  INT_MASK_CSR_TXDONE ; 
 int /*<<< orphan*/  INT_SOURCE_CSR ; 
 int /*<<< orphan*/  MCU_INT_MASK_CSR ; 
 int /*<<< orphan*/  MCU_INT_MASK_CSR_0 ; 
 int /*<<< orphan*/  MCU_INT_MASK_CSR_1 ; 
 int /*<<< orphan*/  MCU_INT_MASK_CSR_2 ; 
 int /*<<< orphan*/  MCU_INT_MASK_CSR_3 ; 
 int /*<<< orphan*/  MCU_INT_MASK_CSR_4 ; 
 int /*<<< orphan*/  MCU_INT_MASK_CSR_5 ; 
 int /*<<< orphan*/  MCU_INT_MASK_CSR_6 ; 
 int /*<<< orphan*/  MCU_INT_MASK_CSR_7 ; 
 int /*<<< orphan*/  MCU_INT_MASK_CSR_TWAKEUP ; 
 int /*<<< orphan*/  MCU_INT_SOURCE_CSR ; 
 int STATE_RADIO_IRQ_OFF ; 
 int STATE_RADIO_IRQ_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct rt2x00_dev *rt2x00dev,
			       enum dev_state state)
{
	int mask = (state == STATE_RADIO_IRQ_OFF);
	u32 reg;
	unsigned long flags;

	/*
	 * When interrupts are being enabled, the interrupt registers
	 * should clear the register to assure a clean state.
	 */
	if (state == STATE_RADIO_IRQ_ON) {
		FUNC1(rt2x00dev, INT_SOURCE_CSR, &reg);
		FUNC2(rt2x00dev, INT_SOURCE_CSR, reg);

		FUNC1(rt2x00dev, MCU_INT_SOURCE_CSR, &reg);
		FUNC2(rt2x00dev, MCU_INT_SOURCE_CSR, reg);
	}

	/*
	 * Only toggle the interrupts bits we are going to use.
	 * Non-checked interrupt bits are disabled by default.
	 */
	FUNC3(&rt2x00dev->irqmask_lock, flags);

	FUNC1(rt2x00dev, INT_MASK_CSR, &reg);
	FUNC0(&reg, INT_MASK_CSR_TXDONE, mask);
	FUNC0(&reg, INT_MASK_CSR_RXDONE, mask);
	FUNC0(&reg, INT_MASK_CSR_BEACON_DONE, mask);
	FUNC0(&reg, INT_MASK_CSR_ENABLE_MITIGATION, mask);
	FUNC0(&reg, INT_MASK_CSR_MITIGATION_PERIOD, 0xff);
	FUNC2(rt2x00dev, INT_MASK_CSR, reg);

	FUNC1(rt2x00dev, MCU_INT_MASK_CSR, &reg);
	FUNC0(&reg, MCU_INT_MASK_CSR_0, mask);
	FUNC0(&reg, MCU_INT_MASK_CSR_1, mask);
	FUNC0(&reg, MCU_INT_MASK_CSR_2, mask);
	FUNC0(&reg, MCU_INT_MASK_CSR_3, mask);
	FUNC0(&reg, MCU_INT_MASK_CSR_4, mask);
	FUNC0(&reg, MCU_INT_MASK_CSR_5, mask);
	FUNC0(&reg, MCU_INT_MASK_CSR_6, mask);
	FUNC0(&reg, MCU_INT_MASK_CSR_7, mask);
	FUNC0(&reg, MCU_INT_MASK_CSR_TWAKEUP, mask);
	FUNC2(rt2x00dev, MCU_INT_MASK_CSR, reg);

	FUNC4(&rt2x00dev->irqmask_lock, flags);

	if (state == STATE_RADIO_IRQ_OFF) {
		/*
		 * Ensure that all tasklets are finished.
		 */
		FUNC5(&rt2x00dev->txstatus_tasklet);
		FUNC5(&rt2x00dev->rxdone_tasklet);
		FUNC5(&rt2x00dev->autowake_tasklet);
		FUNC5(&rt2x00dev->tbtt_tasklet);
	}
}