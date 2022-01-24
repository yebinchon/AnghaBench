#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct net_device {int mtu; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* set_rar ) (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_8__ {scalar_t__ type; int get_link_status; int /*<<< orphan*/  perm_addr; TYPE_3__ ops; int /*<<< orphan*/  addr; } ;
struct ixgbe_hw {TYPE_4__ mac; } ;
struct ixgbevf_adapter {int num_rx_queues; int num_tx_queues; int /*<<< orphan*/  watchdog_timer; int /*<<< orphan*/  state; int /*<<< orphan*/  mbx_lock; TYPE_2__* rx_ring; TYPE_1__* tx_ring; struct ixgbe_hw hw; struct net_device* netdev; } ;
struct TYPE_6__ {int reg_idx; } ;
struct TYPE_5__ {int reg_idx; } ;

/* Variables and functions */
 int ETH_FCS_LEN ; 
 int ETH_HLEN ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int IXGBE_RXDCTL_ENABLE ; 
 int IXGBE_RXDCTL_RLPMLMASK ; 
 int IXGBE_RXDCTL_RLPML_EN ; 
 int IXGBE_TXDCTL_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  __IXGBEVF_DOWN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ ixgbe_mac_X540_vf ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct ixgbevf_adapter*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ixgbe_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(struct ixgbevf_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	struct ixgbe_hw *hw = &adapter->hw;
	int i, j = 0;
	int num_rx_rings = adapter->num_rx_queues;
	u32 txdctl, rxdctl;

	for (i = 0; i < adapter->num_tx_queues; i++) {
		j = adapter->tx_ring[i].reg_idx;
		txdctl = FUNC0(hw, FUNC2(j));
		/* enable WTHRESH=8 descriptors, to encourage burst writeback */
		txdctl |= (8 << 16);
		FUNC3(hw, FUNC2(j), txdctl);
	}

	for (i = 0; i < adapter->num_tx_queues; i++) {
		j = adapter->tx_ring[i].reg_idx;
		txdctl = FUNC0(hw, FUNC2(j));
		txdctl |= IXGBE_TXDCTL_ENABLE;
		FUNC3(hw, FUNC2(j), txdctl);
	}

	for (i = 0; i < num_rx_rings; i++) {
		j = adapter->rx_ring[i].reg_idx;
		rxdctl = FUNC0(hw, FUNC1(j));
		rxdctl |= IXGBE_RXDCTL_ENABLE;
		if (hw->mac.type == ixgbe_mac_X540_vf) {
			rxdctl &= ~IXGBE_RXDCTL_RLPMLMASK;
			rxdctl |= ((netdev->mtu + ETH_HLEN + ETH_FCS_LEN) |
				   IXGBE_RXDCTL_RLPML_EN);
		}
		FUNC3(hw, FUNC1(j), rxdctl);
		FUNC9(adapter, i);
	}

	FUNC6(adapter);

	FUNC13(&adapter->mbx_lock);

	if (FUNC5(hw->mac.addr))
		hw->mac.ops.set_rar(hw, 0, hw->mac.addr, 0);
	else
		hw->mac.ops.set_rar(hw, 0, hw->mac.perm_addr, 0);

	FUNC14(&adapter->mbx_lock);

	FUNC4(__IXGBEVF_DOWN, &adapter->state);
	FUNC8(adapter);

	/* enable transmits */
	FUNC12(netdev);

	FUNC10(adapter);
	FUNC7(adapter);

	hw->mac.get_link_status = 1;
	FUNC11(&adapter->watchdog_timer, jiffies);
}