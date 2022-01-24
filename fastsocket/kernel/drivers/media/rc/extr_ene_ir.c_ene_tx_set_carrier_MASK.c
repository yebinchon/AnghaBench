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
typedef  int u8 ;
struct ene_device {int tx_period; int tx_duty_cycle; int /*<<< orphan*/  hw_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ENE_CIRCFG ; 
 int /*<<< orphan*/  ENE_CIRCFG_TX_CARR ; 
 int /*<<< orphan*/  ENE_CIRMOD_HPRD ; 
 int /*<<< orphan*/  ENE_CIRMOD_PRD ; 
 int ENE_CIRMOD_PRD_POL ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ene_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ene_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct ene_device *dev)
{
	u8 tx_puls_width;
	unsigned long flags;

	FUNC4(&dev->hw_lock, flags);

	FUNC2(dev, ENE_CIRCFG,
		ENE_CIRCFG_TX_CARR, dev->tx_period > 0);

	if (!dev->tx_period)
		goto unlock;

	FUNC0(dev->tx_duty_cycle >= 100 || dev->tx_duty_cycle <= 0);

	tx_puls_width = dev->tx_period / (100 / dev->tx_duty_cycle);

	if (!tx_puls_width)
		tx_puls_width = 1;

	FUNC1("TX: pulse distance = %d * 500 ns", dev->tx_period);
	FUNC1("TX: pulse width = %d * 500 ns", tx_puls_width);

	FUNC3(dev, ENE_CIRMOD_PRD, dev->tx_period | ENE_CIRMOD_PRD_POL);
	FUNC3(dev, ENE_CIRMOD_HPRD, tx_puls_width);
unlock:
	FUNC5(&dev->hw_lock, flags);
}