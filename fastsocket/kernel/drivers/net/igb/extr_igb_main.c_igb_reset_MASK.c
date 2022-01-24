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
typedef  union e1000_adv_tx_desc {int dummy; } e1000_adv_tx_desc ;
typedef  int u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {scalar_t__ func; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* init_thermal_sensor_thresh ) (struct e1000_hw*) ;scalar_t__ (* init_hw ) (struct e1000_hw*) ;int /*<<< orphan*/  (* reset_hw ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {int type; TYPE_3__ ops; int /*<<< orphan*/  autoneg; } ;
struct e1000_fc_info {int high_water; int low_water; int pause_time; int send_xon; int /*<<< orphan*/  requested_mode; int /*<<< orphan*/  current_mode; } ;
struct e1000_hw {TYPE_2__ bus; struct e1000_mac_info mac; struct e1000_fc_info fc; } ;
struct igb_adapter {int max_frame_size; int vfs_allocated_count; int /*<<< orphan*/  netdev; scalar_t__ ets; int /*<<< orphan*/  state; TYPE_1__* vf_data; struct e1000_hw hw; struct pci_dev* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  E1000_PBA ; 
 int E1000_PBA_34K ; 
 int /*<<< orphan*/  E1000_RXPBS ; 
 int E1000_RXPBS_SIZE_MASK_82576 ; 
 int /*<<< orphan*/  E1000_VET ; 
 int /*<<< orphan*/  E1000_VFRE ; 
 int /*<<< orphan*/  E1000_VFTE ; 
 int /*<<< orphan*/  E1000_WUC ; 
 int ETHERNET_IEEE_VLAN_TYPE ; 
 int ETH_FCS_LEN ; 
 int ETH_FRAME_LEN ; 
 int /*<<< orphan*/  IGB_VF_FLAG_PF_SET_MAC ; 
 int /*<<< orphan*/  __IGB_DOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
#define  e1000_82575 134 
#define  e1000_82576 133 
#define  e1000_82580 132 
#define  e1000_i210 131 
#define  e1000_i211 130 
#define  e1000_i350 129 
#define  e1000_i354 128 
 int /*<<< orphan*/  FUNC2 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct igb_adapter*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct igb_adapter*) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct igb_adapter*) ; 
 int FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct e1000_hw*) ; 
 scalar_t__ FUNC14 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC15 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 

void FUNC18(struct igb_adapter *adapter)
{
	struct pci_dev *pdev = adapter->pdev;
	struct e1000_hw *hw = &adapter->hw;
	struct e1000_mac_info *mac = &hw->mac;
	struct e1000_fc_info *fc = &hw->fc;
	u32 pba = 0, tx_space, min_tx_space, min_rx_space, hwm;

	/* Repartition Pba for greater than 9k mtu
	 * To take effect CTRL.RST is required.
	 */
	switch (mac->type) {
	case e1000_i350:
	case e1000_i354:
	case e1000_82580:
		pba = FUNC12(E1000_RXPBS);
		pba = FUNC8(pba);
		break;
	case e1000_82576:
		pba = FUNC12(E1000_RXPBS);
		pba &= E1000_RXPBS_SIZE_MASK_82576;
		break;
	case e1000_82575:
	case e1000_i210:
	case e1000_i211:
	default:
		pba = E1000_PBA_34K;
		break;
	}

	if ((adapter->max_frame_size > ETH_FRAME_LEN + ETH_FCS_LEN) &&
	    (mac->type < e1000_82576)) {
		/* adjust PBA for jumbo frames */
		FUNC17(E1000_PBA, pba);

		/* To maintain wire speed transmits, the Tx FIFO should be
		 * large enough to accommodate two full transmit packets,
		 * rounded up to the next 1KB and expressed in KB.  Likewise,
		 * the Rx FIFO should be large enough to accommodate at least
		 * one full receive packet and is similarly rounded up and
		 * expressed in KB.
		 */
		pba = FUNC12(E1000_PBA);
		/* upper 16 bits has Tx packet buffer allocation size in KB */
		tx_space = pba >> 16;
		/* lower 16 bits has Rx packet buffer allocation size in KB */
		pba &= 0xffff;
		/* the Tx fifo also stores 16 bytes of information about the Tx
		 * but don't include ethernet FCS because hardware appends it
		 */
		min_tx_space = (adapter->max_frame_size +
				sizeof(union e1000_adv_tx_desc) -
				ETH_FCS_LEN) * 2;
		min_tx_space = FUNC0(min_tx_space, 1024);
		min_tx_space >>= 10;
		/* software strips receive CRC, so leave room for it */
		min_rx_space = adapter->max_frame_size;
		min_rx_space = FUNC0(min_rx_space, 1024);
		min_rx_space >>= 10;

		/* If current Tx allocation is less than the min Tx FIFO size,
		 * and the min Tx FIFO size is less than the current Rx FIFO
		 * allocation, take space away from current Rx allocation
		 */
		if (tx_space < min_tx_space &&
		    ((min_tx_space - tx_space) < pba)) {
			pba = pba - (min_tx_space - tx_space);

			/* if short on Rx space, Rx wins and must trump Tx
			 * adjustment
			 */
			if (pba < min_rx_space)
				pba = min_rx_space;
		}
		FUNC17(E1000_PBA, pba);
	}

	/* flow control settings */
	/* The high water mark must be low enough to fit one full frame
	 * (or the size used for early receive) above it in the Rx FIFO.
	 * Set it to the lower of:
	 * - 90% of the Rx FIFO size, or
	 * - the full Rx FIFO size minus one full frame
	 */
	hwm = FUNC10(((pba << 10) * 9 / 10),
			((pba << 10) - 2 * adapter->max_frame_size));

	fc->high_water = hwm & 0xFFFFFFF0;	/* 16-byte granularity */
	fc->low_water = fc->high_water - 16;
	fc->pause_time = 0xFFFF;
	fc->send_xon = 1;
	fc->current_mode = fc->requested_mode;

	/* disable receive for all VFs and wait one second */
	if (adapter->vfs_allocated_count) {
		int i;
		for (i = 0 ; i < adapter->vfs_allocated_count; i++)
			adapter->vf_data[i].flags &= IGB_VF_FLAG_PF_SET_MAC;

		/* ping all the active vfs to let them know we are going down */
		FUNC5(adapter);

		/* disable transmits and receives */
		FUNC17(E1000_VFRE, 0);
		FUNC17(E1000_VFTE, 0);
	}

	/* Allow time for pending master requests to run */
	hw->mac.ops.reset_hw(hw);
	FUNC17(E1000_WUC, 0);

	if (hw->mac.ops.init_hw(hw))
		FUNC1(&pdev->dev, "Hardware Error\n");

	/* Flow control settings reset on hardware reset, so guarantee flow
	 * control is off when forcing speed.
	 */
	if (!hw->mac.autoneg)
		FUNC2(hw);

	FUNC4(adapter, pba);
#ifdef CONFIG_IGB_HWMON
	/* Re-initialize the thermal sensor on i350 devices. */
	if (!test_bit(__IGB_DOWN, &adapter->state)) {
		if (mac->type == e1000_i350 && hw->bus.func == 0) {
			/* If present, re-initialize the external thermal sensor
			 * interface.
			 */
			if (adapter->ets)
				mac->ops.init_thermal_sensor_thresh(hw);
		}
	}
#endif
	if (!FUNC11(adapter->netdev))
		FUNC6(adapter);

	FUNC9(adapter);

	/* Enable h/w to recognize an 802.1Q VLAN Ethernet packet */
	FUNC17(E1000_VET, ETHERNET_IEEE_VLAN_TYPE);

	/* Re-enable PTP, where applicable. */
	FUNC7(adapter);

	FUNC3(hw);
}