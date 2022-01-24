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
struct sky2_port {int tx_ring_size; struct sky2_hw* hw; } ;
struct sky2_hw {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {scalar_t__ const tx_coalesce_usecs; scalar_t__ const rx_coalesce_usecs; scalar_t__ const rx_coalesce_usecs_irq; int tx_max_coalesced_frames; scalar_t__ rx_max_coalesced_frames; scalar_t__ rx_max_coalesced_frames_irq; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ RX_MAX_PENDING ; 
 int /*<<< orphan*/  STAT_FIFO_ISR_WM ; 
 int /*<<< orphan*/  STAT_FIFO_WM ; 
 int /*<<< orphan*/  STAT_ISR_TIMER_CTRL ; 
 int /*<<< orphan*/  STAT_ISR_TIMER_INI ; 
 int /*<<< orphan*/  STAT_LEV_TIMER_CTRL ; 
 int /*<<< orphan*/  STAT_LEV_TIMER_INI ; 
 int /*<<< orphan*/  STAT_TX_IDX_TH ; 
 int /*<<< orphan*/  STAT_TX_TIMER_CTRL ; 
 int /*<<< orphan*/  STAT_TX_TIMER_INI ; 
 scalar_t__ TIM_START ; 
 scalar_t__ TIM_STOP ; 
 struct sky2_port* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct sky2_hw*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sky2_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sky2_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sky2_hw*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev,
			     struct ethtool_coalesce *ecmd)
{
	struct sky2_port *sky2 = FUNC0(dev);
	struct sky2_hw *hw = sky2->hw;
	const u32 tmax = FUNC1(hw, 0x0ffffff);

	if (ecmd->tx_coalesce_usecs > tmax ||
	    ecmd->rx_coalesce_usecs > tmax ||
	    ecmd->rx_coalesce_usecs_irq > tmax)
		return -EINVAL;

	if (ecmd->tx_max_coalesced_frames >= sky2->tx_ring_size-1)
		return -EINVAL;
	if (ecmd->rx_max_coalesced_frames > RX_MAX_PENDING)
		return -EINVAL;
	if (ecmd->rx_max_coalesced_frames_irq >RX_MAX_PENDING)
		return -EINVAL;

	if (ecmd->tx_coalesce_usecs == 0)
		FUNC5(hw, STAT_TX_TIMER_CTRL, TIM_STOP);
	else {
		FUNC4(hw, STAT_TX_TIMER_INI,
			     FUNC2(hw, ecmd->tx_coalesce_usecs));
		FUNC5(hw, STAT_TX_TIMER_CTRL, TIM_START);
	}
	FUNC3(hw, STAT_TX_IDX_TH, ecmd->tx_max_coalesced_frames);

	if (ecmd->rx_coalesce_usecs == 0)
		FUNC5(hw, STAT_LEV_TIMER_CTRL, TIM_STOP);
	else {
		FUNC4(hw, STAT_LEV_TIMER_INI,
			     FUNC2(hw, ecmd->rx_coalesce_usecs));
		FUNC5(hw, STAT_LEV_TIMER_CTRL, TIM_START);
	}
	FUNC5(hw, STAT_FIFO_WM, ecmd->rx_max_coalesced_frames);

	if (ecmd->rx_coalesce_usecs_irq == 0)
		FUNC5(hw, STAT_ISR_TIMER_CTRL, TIM_STOP);
	else {
		FUNC4(hw, STAT_ISR_TIMER_INI,
			     FUNC2(hw, ecmd->rx_coalesce_usecs_irq));
		FUNC5(hw, STAT_ISR_TIMER_CTRL, TIM_START);
	}
	FUNC5(hw, STAT_FIFO_ISR_WM, ecmd->rx_max_coalesced_frames_irq);
	return 0;
}