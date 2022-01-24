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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct net_device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* disable_tx_laser ) (struct ixgbe_hw*) ;} ;
struct TYPE_8__ {int type; TYPE_3__ ops; } ;
struct ixgbe_hw {TYPE_4__ mac; } ;
struct ixgbe_adapter {int num_rx_queues; int flags2; int num_vfs; int num_tx_queues; int /*<<< orphan*/  pdev; TYPE_2__** tx_ring; TYPE_1__* vfinfo; struct ixgbe_hw hw; int /*<<< orphan*/  service_timer; int /*<<< orphan*/  flags; int /*<<< orphan*/ * rx_ring; int /*<<< orphan*/  state; struct net_device* netdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  reg_idx; } ;
struct TYPE_5__ {int clear_to_send; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_DMATXCTL ; 
 int IXGBE_DMATXCTL_TE ; 
 int /*<<< orphan*/  IXGBE_EITRSEL ; 
 int IXGBE_FLAG2_FDIR_REQUIRES_REINIT ; 
 int IXGBE_FLAG2_RESET_REQUESTED ; 
 int /*<<< orphan*/  IXGBE_FLAG_NEED_LINK_UPDATE ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IXGBE_RXCTRL ; 
 int IXGBE_RXCTRL_RXEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int IXGBE_TXDCTL_SWFLSH ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  __IXGBE_DOWN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_adapter*) ; 
#define  ixgbe_mac_82599EB 129 
#define  ixgbe_mac_X540 128 
 int /*<<< orphan*/  FUNC9 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC12 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  FUNC19 (int,int) ; 

void FUNC20(struct ixgbe_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	struct ixgbe_hw *hw = &adapter->hw;
	u32 rxctrl;
	int i;

	/* signal that we are down to the interrupt handler */
	FUNC17(__IXGBE_DOWN, &adapter->state);

	/* disable receives */
	rxctrl = FUNC0(hw, IXGBE_RXCTRL);
	FUNC2(hw, IXGBE_RXCTRL, rxctrl & ~IXGBE_RXCTRL_RXEN);

	/* disable all enabled rx queues */
	for (i = 0; i < adapter->num_rx_queues; i++)
		/* this call also flushes the previous write */
		FUNC6(adapter, adapter->rx_ring[i]);

	FUNC19(10000, 20000);

	FUNC15(netdev);

	/* call carrier off first to avoid false dev_watchdog timeouts */
	FUNC13(netdev);
	FUNC14(netdev);

	FUNC8(adapter);

	FUNC9(adapter);

	adapter->flags2 &= ~(IXGBE_FLAG2_FDIR_REQUIRES_REINIT |
			     IXGBE_FLAG2_RESET_REQUESTED);
	adapter->flags &= ~IXGBE_FLAG_NEED_LINK_UPDATE;

	FUNC3(&adapter->service_timer);

	if (adapter->num_vfs) {
		/* Clear EITR Select mapping */
		FUNC2(&adapter->hw, IXGBE_EITRSEL, 0);

		/* Mark all the VFs as inactive */
		for (i = 0 ; i < adapter->num_vfs; i++)
			adapter->vfinfo[i].clear_to_send = false;

		/* ping all the active vfs to let them know we are going down */
		FUNC10(adapter);

		/* Disable all VFTE/VFRE TX/RX */
		FUNC7(adapter);
	}

	/* disable transmits in the hardware now that interrupts are off */
	for (i = 0; i < adapter->num_tx_queues; i++) {
		u8 reg_idx = adapter->tx_ring[i]->reg_idx;
		FUNC2(hw, FUNC1(reg_idx), IXGBE_TXDCTL_SWFLSH);
	}

	/* Disable the Tx DMA engine on 82599 and X540 */
	switch (hw->mac.type) {
	case ixgbe_mac_82599EB:
	case ixgbe_mac_X540:
		FUNC2(hw, IXGBE_DMATXCTL,
				(FUNC0(hw, IXGBE_DMATXCTL) &
				 ~IXGBE_DMATXCTL_TE));
		break;
	default:
		break;
	}

	if (!FUNC16(adapter->pdev))
		FUNC11(adapter);

	/* power down the optics for 82599 SFP+ fiber */
	if (hw->mac.ops.disable_tx_laser)
		hw->mac.ops.disable_tx_laser(hw);

	FUNC5(adapter);
	FUNC4(adapter);

#ifdef CONFIG_IXGBE_DCA
	/* since we reset the hardware DCA settings were cleared */
	ixgbe_setup_dca(adapter);
#endif
}