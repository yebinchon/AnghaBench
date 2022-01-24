#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  addr; } ;
struct TYPE_8__ {int /*<<< orphan*/  reg; TYPE_1__ mac; struct pch_gbe_adapter* back; } ;
struct pch_gbe_adapter {TYPE_2__ hw; int /*<<< orphan*/  rx_ring; int /*<<< orphan*/  tx_ring; int /*<<< orphan*/  wake_up_evt; int /*<<< orphan*/  reset_task; int /*<<< orphan*/  watchdog_timer; int /*<<< orphan*/  napi; struct pci_dev* pdev; struct net_device* netdev; } ;
struct net_device {int features; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  addr_len; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/ * netdev_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int NETIF_F_IPV6_CSUM ; 
 int NETIF_F_IP_CSUM ; 
 int NETIF_F_RXCSUM ; 
 int /*<<< orphan*/  PCH_GBE_PCI_BAR ; 
 int /*<<< orphan*/  PCH_GBE_RX_WEIGHT ; 
 int /*<<< orphan*/  PCH_GBE_WATCHDOG_PERIOD ; 
 int /*<<< orphan*/  PCH_GBE_WL_INIT_SETTING ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pch_gbe_adapter* FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct pch_gbe_adapter*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int FUNC20 (TYPE_2__*) ; 
 int FUNC21 (struct pch_gbe_adapter*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 
 int /*<<< orphan*/  pch_gbe_napi_poll ; 
 int /*<<< orphan*/  pch_gbe_netdev_ops ; 
 int /*<<< orphan*/  FUNC24 (struct pch_gbe_adapter*) ; 
 int /*<<< orphan*/  pch_gbe_reset_task ; 
 int /*<<< orphan*/  FUNC25 (struct net_device*) ; 
 int FUNC26 (struct pch_gbe_adapter*) ; 
 int /*<<< orphan*/  pch_gbe_watchdog ; 
 int /*<<< orphan*/  FUNC27 (struct pci_dev*) ; 
 int FUNC28 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC29 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct pci_dev*) ; 
 int FUNC31 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC32 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC33 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (struct pci_dev*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC35 (struct pci_dev*) ; 
 int FUNC36 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC38(struct pci_dev *pdev,
			  const struct pci_device_id *pci_id)
{
	struct net_device *netdev;
	struct pch_gbe_adapter *adapter;
	int ret;

	ret = FUNC28(pdev);
	if (ret)
		return ret;

	if (FUNC33(pdev, FUNC0(64))
		|| FUNC32(pdev, FUNC0(64))) {
		ret = FUNC33(pdev, FUNC0(32));
		if (ret) {
			ret = FUNC32(pdev,
							  FUNC0(32));
			if (ret) {
				FUNC5(&pdev->dev, "ERR: No usable DMA "
					"configuration, aborting\n");
				goto err_disable_device;
			}
		}
	}

	ret = FUNC31(pdev, KBUILD_MODNAME);
	if (ret) {
		FUNC5(&pdev->dev,
			"ERR: Can't reserve PCI I/O and memory resources\n");
		goto err_disable_device;
	}
	FUNC35(pdev);

	netdev = FUNC3((int)sizeof(struct pch_gbe_adapter));
	if (!netdev) {
		ret = -ENOMEM;
		FUNC5(&pdev->dev,
			"ERR: Can't allocate and set up an Ethernet device\n");
		goto err_release_pci;
	}
	FUNC2(netdev, &pdev->dev);

	FUNC34(pdev, netdev);
	adapter = FUNC13(netdev);
	adapter->netdev = netdev;
	adapter->pdev = pdev;
	adapter->hw.back = adapter;
	adapter->hw.reg = FUNC29(pdev, PCH_GBE_PCI_BAR, 0);
	if (!adapter->hw.reg) {
		ret = -EIO;
		FUNC5(&pdev->dev, "Can't ioremap\n");
		goto err_free_netdev;
	}

	netdev->netdev_ops = &pch_gbe_netdev_ops;
	netdev->watchdog_timeo = PCH_GBE_WATCHDOG_PERIOD;
	FUNC15(netdev, &adapter->napi,
		       pch_gbe_napi_poll, PCH_GBE_RX_WEIGHT);
	netdev->features = NETIF_F_RXCSUM |
		NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM;
	FUNC25(netdev);

	FUNC22(&adapter->hw);
	FUNC23(&adapter->hw);

	/* setup the private structure */
	ret = FUNC26(adapter);
	if (ret)
		goto err_iounmap;

	/* Initialize PHY */
	ret = FUNC21(adapter);
	if (ret) {
		FUNC5(&pdev->dev, "PHY initialize error\n");
		goto err_free_adapter;
	}
	FUNC18(&adapter->hw);

	/* Read the MAC address. and store to the private data */
	ret = FUNC20(&adapter->hw);
	if (ret) {
		FUNC5(&pdev->dev, "MAC address Read Error\n");
		goto err_free_adapter;
	}

	FUNC12(netdev->dev_addr, adapter->hw.mac.addr, netdev->addr_len);
	if (!FUNC10(netdev->dev_addr)) {
		/*
		 * If the MAC is invalid (or just missing), display a warning
		 * but do not abort setting up the device. pch_gbe_up will
		 * prevent the interface from being brought up until a valid MAC
		 * is set.
		 */
		FUNC5(&pdev->dev, "Invalid MAC address, "
		                    "interface disabled.\n");
	}
	FUNC37(&adapter->watchdog_timer, pch_gbe_watchdog,
		    (unsigned long)adapter);

	FUNC1(&adapter->reset_task, pch_gbe_reset_task);

	FUNC17(adapter);

	/* initialize the wol settings based on the eeprom settings */
	adapter->wake_up_evt = PCH_GBE_WL_INIT_SETTING;
	FUNC6(&pdev->dev, "MAC address : %pM\n", netdev->dev_addr);

	/* reset the hardware with the new settings */
	FUNC24(adapter);

	ret = FUNC36(netdev);
	if (ret)
		goto err_free_adapter;
	/* tell the stack to leave us alone until pch_gbe_open() is called */
	FUNC14(netdev);
	FUNC16(netdev);

	FUNC4(&pdev->dev, "OKIsemi(R) PCH Network Connection\n");

	FUNC7(&pdev->dev, 1);
	return 0;

err_free_adapter:
	FUNC19(&adapter->hw);
	FUNC11(adapter->tx_ring);
	FUNC11(adapter->rx_ring);
err_iounmap:
	FUNC9(adapter->hw.reg);
err_free_netdev:
	FUNC8(netdev);
err_release_pci:
	FUNC30(pdev);
err_disable_device:
	FUNC27(pdev);
	return ret;
}