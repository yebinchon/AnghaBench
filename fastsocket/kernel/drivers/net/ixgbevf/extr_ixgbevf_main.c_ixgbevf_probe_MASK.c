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
struct pci_device_id {size_t driver_data; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int addr_len; int features; int vlan_features; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  name; int /*<<< orphan*/ * perm_addr; } ;
struct ixgbevf_info {int /*<<< orphan*/  mac; int /*<<< orphan*/ * mac_ops; } ;
struct TYPE_6__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct TYPE_5__ {int /*<<< orphan*/  type; int /*<<< orphan*/ * addr; int /*<<< orphan*/  ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  ops; } ;
struct ixgbe_hw {int /*<<< orphan*/  hw_addr; TYPE_2__ mac; TYPE_1__ mbx; struct ixgbevf_adapter* back; } ;
struct ixgbevf_adapter {int bd_number; int /*<<< orphan*/  watchdog_task; int /*<<< orphan*/  reset_task; TYPE_3__ watchdog_timer; struct ixgbe_hw hw; int /*<<< orphan*/  msg_enable; struct pci_dev* pdev; struct net_device* netdev; } ;
struct ixgbe_mbx_operations {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_MSG_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_TX_QUEUES ; 
 int NETIF_F_GRO ; 
 int NETIF_F_HIGHDMA ; 
 int NETIF_F_HW_VLAN_FILTER ; 
 int NETIF_F_HW_VLAN_RX ; 
 int NETIF_F_HW_VLAN_TX ; 
 int NETIF_F_IPV6_CSUM ; 
 int NETIF_F_IP_CSUM ; 
 int NETIF_F_SG ; 
 int NETIF_F_TSO ; 
 int NETIF_F_TSO6 ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_hw*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  ixgbevf_driver_name ; 
 struct ixgbevf_info** ixgbevf_info_tbl ; 
 int FUNC15 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC16 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  ixgbevf_mbx_ops ; 
 int /*<<< orphan*/  FUNC17 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  ixgbevf_reset_task ; 
 int FUNC18 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  ixgbevf_watchdog ; 
 int /*<<< orphan*/  ixgbevf_watchdog_task ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct ixgbevf_adapter* FUNC20 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*) ; 
 int FUNC24 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC25 (struct pci_dev*) ; 
 int FUNC26 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC30 (struct pci_dev*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC31 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC32 (char*) ; 
 int FUNC33 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC35(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	struct net_device *netdev;
	struct ixgbevf_adapter *adapter = NULL;
	struct ixgbe_hw *hw = NULL;
	const struct ixgbevf_info *ii = ixgbevf_info_tbl[ent->driver_data];
	static int cards_found;
	int err, pci_using_dac;

	err = FUNC24(pdev);
	if (err)
		return err;

	if (!FUNC6(&pdev->dev, FUNC0(64)) &&
	    !FUNC5(&pdev->dev, FUNC0(64))) {
		pci_using_dac = 1;
	} else {
		err = FUNC6(&pdev->dev, FUNC0(32));
		if (err) {
			err = FUNC5(&pdev->dev,
						    FUNC0(32));
			if (err) {
				FUNC4(&pdev->dev, "No usable DMA "
					"configuration, aborting\n");
				goto err_dma;
			}
		}
		pci_using_dac = 0;
	}

	err = FUNC26(pdev, ixgbevf_driver_name);
	if (err) {
		FUNC4(&pdev->dev, "pci_request_regions failed 0x%x\n", err);
		goto err_pci_reg;
	}

	FUNC31(pdev);

	netdev = FUNC3(sizeof(struct ixgbevf_adapter),
				   MAX_TX_QUEUES);
	if (!netdev) {
		err = -ENOMEM;
		goto err_alloc_etherdev;
	}

	FUNC2(netdev, &pdev->dev);

	FUNC30(pdev, netdev);
	adapter = FUNC20(netdev);

	adapter->netdev = netdev;
	adapter->pdev = pdev;
	hw = &adapter->hw;
	hw->back = adapter;
	adapter->msg_enable = FUNC22(debug, DEFAULT_MSG_ENABLE);

	/*
	 * call save state here in standalone driver because it relies on
	 * adapter struct to exist, and needs to call netdev_priv
	 */
	FUNC29(pdev);

	hw->hw_addr = FUNC10(FUNC28(pdev, 0),
			      FUNC27(pdev, 0));
	if (!hw->hw_addr) {
		err = -EIO;
		goto err_ioremap;
	}

	FUNC13(netdev);

	adapter->bd_number = cards_found;

	/* Setup hw api */
	FUNC19(&hw->mac.ops, ii->mac_ops, sizeof(hw->mac.ops));
	hw->mac.type  = ii->mac;

	FUNC19(&hw->mbx.ops, &ixgbevf_mbx_ops,
	       sizeof(struct ixgbe_mbx_operations));

	/* setup the private structure */
	err = FUNC18(adapter);
	if (err)
		goto err_sw_init;

	/* The HW MAC address was set and/or determined in sw_init */
	FUNC19(netdev->perm_addr, adapter->hw.mac.addr, netdev->addr_len);

	if (!FUNC12(netdev->dev_addr)) {
		FUNC32("invalid MAC address\n");
		err = -EIO;
		goto err_sw_init;
	}

	netdev->features = NETIF_F_SG |
			   NETIF_F_IP_CSUM |
			   NETIF_F_HW_VLAN_TX |
			   NETIF_F_HW_VLAN_RX |
			   NETIF_F_HW_VLAN_FILTER;

	netdev->features |= NETIF_F_IPV6_CSUM;
	netdev->features |= NETIF_F_TSO;
	netdev->features |= NETIF_F_TSO6;
	netdev->features |= NETIF_F_GRO;
	netdev->vlan_features |= NETIF_F_TSO;
	netdev->vlan_features |= NETIF_F_TSO6;
	netdev->vlan_features |= NETIF_F_IP_CSUM;
	netdev->vlan_features |= NETIF_F_IPV6_CSUM;
	netdev->vlan_features |= NETIF_F_SG;

	if (pci_using_dac)
		netdev->features |= NETIF_F_HIGHDMA;

	FUNC9(&adapter->watchdog_timer);
	adapter->watchdog_timer.function = ixgbevf_watchdog;
	adapter->watchdog_timer.data = (unsigned long)adapter;

	FUNC1(&adapter->reset_task, ixgbevf_reset_task);
	FUNC1(&adapter->watchdog_task, ixgbevf_watchdog_task);

	err = FUNC15(adapter);
	if (err)
		goto err_sw_init;

	FUNC34(netdev->name, "eth%d");

	err = FUNC33(netdev);
	if (err)
		goto err_register;

	FUNC21(netdev);

	FUNC16(adapter);

	/* print the MAC address */
	FUNC8(hw, "%pM\n", netdev->dev_addr);

	FUNC8(hw, "MAC: %d\n", hw->mac.type);

	FUNC8(hw, "Intel(R) 82599 Virtual Function\n");
	cards_found++;
	return 0;

err_register:
	FUNC14(adapter);
err_sw_init:
	FUNC17(adapter);
	FUNC11(hw->hw_addr);
err_ioremap:
	FUNC7(netdev);
err_alloc_etherdev:
	FUNC25(pdev);
err_pci_reg:
err_dma:
	FUNC23(pdev);
	return err;
}