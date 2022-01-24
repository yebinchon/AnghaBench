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
struct sky2_port {struct sky2_hw* hw; } ;
struct sky2_hw {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {scalar_t__ rx_max_coalesced_frames_irq; void* rx_coalesce_usecs_irq; scalar_t__ rx_max_coalesced_frames; void* rx_coalesce_usecs; int /*<<< orphan*/  tx_max_coalesced_frames; void* tx_coalesce_usecs; } ;

/* Variables and functions */
 int /*<<< orphan*/  STAT_FIFO_ISR_WM ; 
 int /*<<< orphan*/  STAT_FIFO_WM ; 
 int /*<<< orphan*/  STAT_ISR_TIMER_CTRL ; 
 int /*<<< orphan*/  STAT_ISR_TIMER_INI ; 
 int /*<<< orphan*/  STAT_LEV_TIMER_CTRL ; 
 int /*<<< orphan*/  STAT_LEV_TIMER_INI ; 
 int /*<<< orphan*/  STAT_TX_IDX_TH ; 
 int /*<<< orphan*/  STAT_TX_TIMER_CTRL ; 
 int /*<<< orphan*/  STAT_TX_TIMER_INI ; 
 scalar_t__ TIM_STOP ; 
 struct sky2_port* FUNC0 (struct net_device*) ; 
 void* FUNC1 (struct sky2_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sky2_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sky2_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sky2_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
			     struct ethtool_coalesce *ecmd)
{
	struct sky2_port *sky2 = FUNC0(dev);
	struct sky2_hw *hw = sky2->hw;

	if (FUNC4(hw, STAT_TX_TIMER_CTRL) == TIM_STOP)
		ecmd->tx_coalesce_usecs = 0;
	else {
		u32 clks = FUNC3(hw, STAT_TX_TIMER_INI);
		ecmd->tx_coalesce_usecs = FUNC1(hw, clks);
	}
	ecmd->tx_max_coalesced_frames = FUNC2(hw, STAT_TX_IDX_TH);

	if (FUNC4(hw, STAT_LEV_TIMER_CTRL) == TIM_STOP)
		ecmd->rx_coalesce_usecs = 0;
	else {
		u32 clks = FUNC3(hw, STAT_LEV_TIMER_INI);
		ecmd->rx_coalesce_usecs = FUNC1(hw, clks);
	}
	ecmd->rx_max_coalesced_frames = FUNC4(hw, STAT_FIFO_WM);

	if (FUNC4(hw, STAT_ISR_TIMER_CTRL) == TIM_STOP)
		ecmd->rx_coalesce_usecs_irq = 0;
	else {
		u32 clks = FUNC3(hw, STAT_ISR_TIMER_INI);
		ecmd->rx_coalesce_usecs_irq = FUNC1(hw, clks);
	}

	ecmd->rx_max_coalesced_frames_irq = FUNC4(hw, STAT_FIFO_ISR_WM);

	return 0;
}