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
struct skge_port {int port; struct skge_hw* hw; } ;
struct skge_hw {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {int rx_coalesce_usecs; int tx_coalesce_usecs; } ;

/* Variables and functions */
 int /*<<< orphan*/  B2_IRQM_CTRL ; 
 int /*<<< orphan*/  B2_IRQM_INI ; 
 int /*<<< orphan*/  B2_IRQM_MSK ; 
 int EINVAL ; 
 int TIM_START ; 
 int TIM_STOP ; 
 int FUNC0 (int,int) ; 
 struct skge_port* FUNC1 (struct net_device*) ; 
 int* rxirqmask ; 
 int FUNC2 (struct skge_hw*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct skge_hw*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct skge_hw*,int /*<<< orphan*/ ,int) ; 
 int* txirqmask ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
			     struct ethtool_coalesce *ecmd)
{
	struct skge_port *skge = FUNC1(dev);
	struct skge_hw *hw = skge->hw;
	int port = skge->port;
	u32 msk = FUNC2(hw, B2_IRQM_MSK);
	u32 delay = 25;

	if (ecmd->rx_coalesce_usecs == 0)
		msk &= ~rxirqmask[port];
	else if (ecmd->rx_coalesce_usecs < 25 ||
		 ecmd->rx_coalesce_usecs > 33333)
		return -EINVAL;
	else {
		msk |= rxirqmask[port];
		delay = ecmd->rx_coalesce_usecs;
	}

	if (ecmd->tx_coalesce_usecs == 0)
		msk &= ~txirqmask[port];
	else if (ecmd->tx_coalesce_usecs < 25 ||
		 ecmd->tx_coalesce_usecs > 33333)
		return -EINVAL;
	else {
		msk |= txirqmask[port];
		delay = FUNC0(delay, ecmd->rx_coalesce_usecs);
	}

	FUNC4(hw, B2_IRQM_MSK, msk);
	if (msk == 0)
		FUNC4(hw, B2_IRQM_CTRL, TIM_STOP);
	else {
		FUNC4(hw, B2_IRQM_INI, FUNC3(hw, delay));
		FUNC4(hw, B2_IRQM_CTRL, TIM_START);
	}
	return 0;
}